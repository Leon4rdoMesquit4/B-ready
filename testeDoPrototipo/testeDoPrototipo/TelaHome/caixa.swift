import SwiftUI

struct caixa: View {
    @Environment(\.presentationMode) var presentationMode
    @State var num:Int
    @State var titulo:String
    @State var imagem:String
    @State var tipo:Int
    @State var temCaixa:Bool
    var tela:[Tela] = sugestaoLista.tela
    //@Binding categoria:Categoria
    //@Binding cor:Cor
    var borda:Double = 12
    var alturaPadrao:Double = 195
    var body: some View {
        NavigationLink {
            Tela_principal(num:num, eModal: false, temCaixa: temCaixa, tipo: tipo)
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
                                .shadow(radius: 40, y:10)
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
                                            Color.black
                                                .blur(radius: 27)
                                                .ignoresSafeArea()
                                                .frame(height: 20)
                                            
                                            HStack {
                                                Text(titulo)
                                                    .foregroundColor(.white)
                                                    .multilineTextAlignment(.leading)
                                                    .font(.system(.subheadline))
                                                    .fontWeight(.bold)
                                                    .lineLimit(2)
                                                    .padding(.leading, 10)
                                                Spacer()
                                            }
                                        }
                                    
                                
                                
                            }.frame(width: ((UIScreen.main.bounds.width)/2)-40 ,height: alturaPadrao - 29)
                            
                        }.padding(.horizontal, 10)
                        .frame(height: alturaPadrao)
                        
                    }
                        
                    
                }
                
            }
            
        }

        
    }
}



    
struct caixa_Previews: PreviewProvider {
    static var previews: some View {
        caixa(num:0,titulo: "Alimentaçao saudavel", imagem: "Image", tipo: 3, temCaixa: false)
    }
}
