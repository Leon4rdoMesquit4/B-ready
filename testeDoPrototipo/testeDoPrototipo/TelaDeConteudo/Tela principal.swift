import SwiftUI

struct Tela_principal: View {
    @Environment(\.presentationMode) var presentationMode
    @State var num:Int
    @State var eModal:Bool
    @State var temCaixa:Bool
    @State var tipo:Int
    
    var body: some View {
        ZStack {
        ScrollView{
            
            VStack {
                ZStack {
                    Image(sugestaoLista.tela[num].imagem)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: 300)
                        .clipShape(Rectangle())
                        .edgesIgnoringSafeArea(.all)
                    
                }
                Spacer(minLength: 23)
                VStack {
                    HStack {
                        Text(sugestaoLista.tela[num].titulo)
                            .font(.system(.title2))
                            .multilineTextAlignment(.leading)
                            .fontWeight(.bold)
                            .foregroundColor(.black.opacity(0.7))
                        Spacer()
                    }.padding(.bottom, 4)
                    
                    HStack {
                        Text(sugestaoLista.tela[num].texto)
                            .font(.system(.body))
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color("Cinza_texto"))
                    }
                }.padding(.leading, 15).padding(.trailing, 8)
                
                
                if sugestaoLista.tela[num].temLink && eModal{
                    BotaoLink(tituloLink: sugestaoLista.tela[num].tituloLink, link: sugestaoLista.tela[num].link, emodal: eModal)
                        .padding(.top, 40)
                }else if sugestaoLista.tela[num].temLink  && !eModal{
                    BotaoLink(tituloLink: sugestaoLista.tela[num].tituloLink, link: sugestaoLista.tela[num].link, emodal: eModal)
                        .padding(.top, 40)
                }
                
                if temCaixa == true && !eModal{
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            ForEach(0..<sugestaoLista.tela.count, id: \.self){n in
                                if tipo == sugestaoLista.tela[n].tipo && n != num{
                                    caixa(num: n, titulo: sugestaoLista.tela[n].titulo, imagem: sugestaoLista.tela[n].imagem, tipo: sugestaoLista.tela[n].tipo, temCaixa: false)
                                }
                            }
                        }.padding(.top, 25).padding(.leading, 8)
                        
                    }
                }
                
            }
        }
            
                
            
            
            
            VStack {
                if eModal == false{
                    HStack() {
                        Button(action: { presentationMode.wrappedValue.dismiss() }) {
                            ZStack {
                                Circle()
                                    .foregroundColor(.black)
                                    .opacity(0.23)
                                    .frame(width: 40)
                                    .blur(radius: 10)
                                Image(systemName: "chevron.left.circle.fill").font(.system(.largeTitle)).opacity(0.8)
                                    .foregroundColor(.white).font(.title)
                            }}
                        .padding(.leading,15)
                        .padding(.top, 50)
                        Spacer()
                    }
                    Spacer()
                } else{
                    HStack() {
                        Spacer()
                        Button(action: { presentationMode.wrappedValue.dismiss() })
                        {
                            
                            ZStack {
                                Circle()
                                    .foregroundColor(.black)
                                    .frame(width: 15)
                                    .blur(radius: 20)
                                
                                Image(systemName: "multiply.circle.fill").font(.system(.title3)).opacity(0.7)
                                    .foregroundColor(.white).font(.title3)
                                
                            }
                            
                        }
                        .padding(.trailing,10)
                        .padding(.top, 20)
                        
                    }
                    Spacer()
                }
            }
        }
    }
}


struct Tela_principal_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Tela_principal(num: 1, eModal: false, temCaixa: true, tipo: 2)
    }
}
