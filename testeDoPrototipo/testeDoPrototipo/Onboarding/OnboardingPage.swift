import SwiftUI

struct OnboardingPage: View {
    @Binding var estaOnboarding:Bool
    @State var temLink:Bool
    @State var imagem:String
    var body: some View {
        VStack (){
            if temLink == false{
                ZStack {
                    

                    VStack {
                        conteudo(tamanho: 260, imagem: imagem)
                            .ignoresSafeArea()
                    }
                    VStack {
                        HStack {
                            Spacer()
                            Button {
                                estaOnboarding.toggle()
                            } label: {
                                Text("Skip")
                                    .foregroundColor(.blue)
                            }
                            .padding(.trailing, 26).padding(.top, 10)
                            
                        }
                        Spacer()
                    }
                }
            } else{
                conteudo(tamanho: 350, imagem: imagem)
                    .ignoresSafeArea()
                    Button {
                        estaOnboarding.toggle()
                    } label: {
                        Botao(titulo: "Iniciar o app")
                    }.offset(x:0, y:-15)

                }
            Spacer()
            }
            
        }
}

struct OnboardingPage_Previews: PreviewProvider {
    static var previews: some View {
        @State var temLink:Bool = false
        @State var estaOnboarding:Bool = true
        OnboardingPage(estaOnboarding: $estaOnboarding , temLink: temLink, imagem: "Image")
    }
}
