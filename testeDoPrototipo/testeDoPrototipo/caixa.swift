import SwiftUI

struct caixa: View {
    @Environment(\.presentationMode) var presentationMode
    @State var num:Int
    @State var titulo:String
    @State var imagem:String
    @State var tipo:Int 
    var tela:[Tela] = sugestaoLista.tela
    //@Binding categoria:Categoria
    //@Binding cor:Cor
    var borda:Double = 12
    var alturaPadrao:Double = 195
    var body: some View {
        NavigationLink {
            Tela_principal(titulo: tela[num].titulo, texto: tela[num].texto, imagem: tela[num].imagem, link: tela[num].link, temLink: tela[num].temLink, eModal: false)
                .navigationBarBackButtonHidden(true).edgesIgnoringSafeArea(.top)
        } label: {
            HStack {
                VStack {
                    HStack {
                        
                        ZStack{ // Stack da caixa
                            
                            RoundedRectangle(cornerRadius: borda) //Cria a sombra da caixa
                                .frame(width: ((UIScreen.main.bounds.width)/3)-20 ,height: alturaPadrao/3)
                                .foregroundColor(.white)
                                .padding(.top, alturaPadrao/3)
                                .padding(.horizontal)
                                .shadow(radius: 40)
                            Image(imagem)
                                .resizable()
                                .scaledToFill()
                                .frame(width: ((UIScreen.main.bounds.width)/2)-30 ,height: alturaPadrao)
                                .clipShape(RoundedRectangle(cornerRadius: borda))
    //                        RoundedRectangle(cornerRadius: borda)
    //                            .frame(height: alturaPadrao) //Define a largura da caixa
    //                            .foregroundColor(.green)
        //                    RoundedRectangle(cornerRadius: borda)
        //                        .frame(height: alturaPadrao) //Define a largura da caixa
        //                        .opacity(0.2)
        //                        .foregroundColor(.yellow)
                            
                            VStack {
                                Spacer()
                                
                                ZStack {
                                    HStack { //Stack usada para afastar o texto para a esquerda
                                        Text(titulo)
                                            .foregroundColor(.white)
                                            .font(.system(.subheadline))
                                            .fontWeight(.bold)
                                            .lineLimit(2) //Limite das linhas
                                            .padding(.leading, 10)
                                            //Afastar o texto do borda da caixa
                                        Spacer()
                                    }
                                }
                                
                            }.frame(width: ((UIScreen.main.bounds.width)/2)-40 ,height: alturaPadrao - 29) //Define o tamanho de até onde o texto pode chegar
                            
                        }.padding(.horizontal, 10) // Só na parte de testes
                        .frame(height: alturaPadrao)//definir o tamanho da Stack
                        
                    }
                        
                    
                }
                
            }
            
        }

        
    }
}

struct caixa_Previews: PreviewProvider {
    static var previews: some View {
        caixa(num:1,titulo: "Título Grande", imagem: "Image", tipo: 5)
    }
}
