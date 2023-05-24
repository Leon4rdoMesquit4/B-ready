import SwiftUI

func verificacao (_ a:String, _ b:String) -> Bool{
    return a.folding(options: .diacriticInsensitive, locale: .current).localizedCaseInsensitiveContains(b.folding(options: .diacriticInsensitive, locale: .current))
}

struct ContentView: View {
    
    
    let columns = [
        GridItem(),
        GridItem()
    ]
    
    @State var tela:[Tela] = sugestaoLista.tela
    @State var text:String = ""
    @State var ativado:[Bool] = [false, false, false, false, false, false]
    @State var estaPesquisando:Bool = true
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
                            ForEach(1...tela.endIndex-1, id: \.self) {g in
                                if ativado.contains(true){
                                    ForEach(0..<ativado.endIndex, id:\.self) { n in
                                        if tela[g].tipo == n && ativado[n] == true{
                                            caixa(num: g, titulo: tela[g].titulo, imagem: tela[g].imagem, tipo: tela[g].tipo, temCaixa:!tela[g].temLink)
                                        }
                                    }
                                } else{
                                    caixa(num: g, titulo: tela[g].titulo, imagem: tela[g].imagem, tipo: tela[g].tipo, temCaixa: !tela[g].temLink)

                                }
                            }
                            // tela[g].titulo, text
                        }else{
                            ForEach(1...tela.endIndex-1, id: \.self) {g in
                                if verificacao(tela[g].titulo, text) || verificacao(tela[g].texto, text){
                                    caixa(num: g, titulo: tela[g].titulo, imagem: tela[g].imagem, tipo: tela[g].tipo, temCaixa:!tela[g].temLink)
                                }
                            }
                        }

                    }
                    
                }.padding(.horizontal, 19)
                
            }
            .toolbar{
                ToolbarItemGroup (placement: .bottomBar){
                    Spacer()
                    Button {
                        mostrandoModal.toggle()
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }.sheet(isPresented: $mostrandoModal) {
                        Tela_principal(num: 0, eModal: true, temCaixa: true, tipo: 1)
                            .presentationDetents([.fraction(0.985)])
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
