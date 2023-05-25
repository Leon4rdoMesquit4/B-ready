import SwiftUI

struct OnboardingPage: View {
    @Binding var estaOnboarding:Bool
    @State var temLink:Bool
    @State var imagem:String
    @State var texto:String
    @State var titulo:String
    @State var isPresented:Bool = false
    @Environment(\.openURL) var openURL
    var body: some View {
        VStack (){
            if temLink == false{
                ZStack {
                    VStack {
                        conteudo(tamanho: 220, imagem: imagem, texto: texto, titulo: titulo)
                            .ignoresSafeArea()
                        Spacer()
                    }
                    VStack {
                        HStack {
                            Spacer()
                            Button {
                                isPresented = true
                            } label: {
                                Text("Skip")
                                    .foregroundColor(.blue)
                            }.alert("Você irá pular a introdução", isPresented: $isPresented, actions: {
                                Button("Não", role: .cancel, action: {})
                                Button("Sim", role: .destructive, action: {
                                    estaOnboarding.toggle()})
                            }, message: {
                                Text("Tem certeza que deseja fazer isso?")
                            })
                            .padding(.trailing, 26).padding(.top, 10)
                            
                        }
                        Spacer()
                    }
                }
            } else{
                conteudo(tamanho: 350, imagem: imagem, texto: texto, titulo: titulo)
                    .ignoresSafeArea()
                    Button {
                        estaOnboarding = false
                    } label: {
                        Botao(titulo: "Iniciar")
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
        OnboardingPage(estaOnboarding: $estaOnboarding , temLink: temLink, imagem: "Image", texto: "sjndsnjsfkfndkjfnkd", titulo: "ksjdkfdjfddfd")
    }
}
