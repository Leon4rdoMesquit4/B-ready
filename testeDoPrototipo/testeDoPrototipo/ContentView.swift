import SwiftUI

struct ContentView: View {
    
    
    let columns = [
        GridItem(.adaptive(minimum: ((UIScreen.main.bounds.width)/2))),
        GridItem(.adaptive(minimum: ((UIScreen.main.bounds.width)/2)))
    ]
    
    @State var tela:[Tela] = sugestaoLista.tela
    @State var text:String = ""
    @State var ativado:[Bool] = [false, false, false, false, false, false]
    @State var estaPesquisando:Bool = true
    @State var encontrou:Bool?
    @State var mostrandoModal:Bool = false
    
    var body: some View {
        
        NavigationStack{
            VStack {
                if estaPesquisando == true{
                    parteDeCima(estaPesquisando: $estaPesquisando)
                        .padding(.top)
                } else if estaPesquisando == false{
                    parteDeCima2(texto: $text, estaPesquisando: $estaPesquisando)
                }
                
                
                
            }
            
            ScrollView(showsIndicators: false) {
                if estaPesquisando == true{
                    ScrollView(.horizontal, showsIndicators: false){
                        filtro(ativado: $ativado)
                    }.padding(.vertical, 10)
                    
                }
                ZStack {
                    LazyVGrid(columns: columns, spacing: 15) {
                        
                        if text == ""{
                            ForEach(0...tela.endIndex-1, id: \.self) {g in
                                if ativado.contains(true){
                                    ForEach(0..<ativado.endIndex, id:\.self) { n in
                                        if tela[g].tipo == n && ativado[n] == true{
                                            caixa(num: g, titulo: tela[g].titulo, imagem: tela[g].imagem, tipo: tela[g].tipo)
                                        }
                                    }
                                } else{
                                    caixa(num: g, titulo: tela[g].titulo, imagem: tela[g].imagem, tipo: tela[g].tipo)
                                }
                                
                                
                                
                            }
                            
                        }else{
                            ForEach(0...tela.endIndex-1, id: \.self) {g in
                                if tela[g].titulo.folding(options: .diacriticInsensitive, locale: .current).localizedCaseInsensitiveContains(text.folding(options: .diacriticInsensitive, locale: .current)) || tela[g].texto.folding(options: .diacriticInsensitive, locale: .current).localizedCaseInsensitiveContains(text.folding(options: .diacriticInsensitive, locale: .current)){
                                    caixa(num: g, titulo: tela[g].titulo, imagem: tela[g].imagem, tipo: tela[g].tipo)
                                }
                            }
                        }
                        
                        
                        
                        
                    }
                }.padding(.horizontal, 19)
                //                if ativado == false{
                //                    VStack {
                //                        Spacer(minLength: (UIScreen.main.bounds.width)/2)
                //                        Error()
                //                        Spacer()
                //                    }
                //                }
            }
            .toolbar{
                ToolbarItemGroup (placement: .bottomBar){
                    Spacer()
                    Button {
                        mostrandoModal.toggle()
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }.sheet(isPresented: $mostrandoModal) {
                        Tela_principal(titulo: "Nos ajude a melhorar nosso app", texto: "hbdhs shvbjdhshds hdvshjdvhjsv dhjv hjsdvhs dhjvs jhs s s ssdsdsds ", imagem: "Image 4", link: "https://chat.openai.com", temLink: true, eModal: true)
                            .presentationDetents([.fraction(0.94)])
                    }

        }
            }
        }
    }
}

        
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
