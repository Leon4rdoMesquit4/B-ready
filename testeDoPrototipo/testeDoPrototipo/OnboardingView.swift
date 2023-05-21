import SwiftUI

struct conteudo: View {
    @State var tamanho:Double
    var body: some View {
        Image("Teste")
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-tamanho)
            .clipShape(Rectangle())
            .edgesIgnoringSafeArea(.all)
            .offset(x:0, y:-16)
        VStack {
            HStack {
                Text("Título Grande")
                    .offset(x:0, y:-55)
                .font(.system(.title2))
                .padding(.leading, 18)
                Spacer()
            }.padding(.bottom, 3)
            HStack {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet auctor arcu. Duis dapibus erat vitae varius mattis. Nullam sed rutrum massa. Nam a porta lacus, vel bibendum mi. Pellentesque a nulla a odio cursus consequat vel sit amet magna.")
                    .foregroundColor(.gray)
                    .offset(x:0, y:-50)
                    .ignoresSafeArea()
                .font(.system(.subheadline))
                .padding(.leading, 18)
                Spacer()
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        @State var temLink:Bool = true
        conteudo(tamanho: 300)
    }
}
