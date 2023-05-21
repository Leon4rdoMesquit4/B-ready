import SwiftUI

struct OnboardingPage: View {
    @Binding var estaOnboarding:Bool
    @State var temLink:Bool
    var body: some View {
        VStack (){
            if temLink == false{
                ZStack {
                    

                    VStack {
                        conteudo(tamanho: 260)
                            .ignoresSafeArea()
                    }
                    VStack {
                        HStack {
                            Spacer()
                            Button {
                                estaOnboarding.toggle()
                            } label: {
                                Text("Skip")
                                    .foregroundColor(.white)
                            }
                            .padding(.trailing, 20)
                            
                        }
                        Spacer()
                    }
                }
            } else{
                conteudo(tamanho: 350)
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
        @State var temLink:Bool = true
        @State var estaOnboarding:Bool = true
        OnboardingPage(estaOnboarding: $estaOnboarding , temLink: temLink)
    }
}
