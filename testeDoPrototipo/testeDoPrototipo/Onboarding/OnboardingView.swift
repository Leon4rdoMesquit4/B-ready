import SwiftUI

struct conteudo: View {
    @State var tamanho:Double
    @State var imagem:String
    @State var texto:String
    @State var titulo:String
    var body: some View {
        Image(imagem)
            .resizable()
            .scaledToFill()
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height-tamanho)
            .clipShape(Rectangle())
            .edgesIgnoringSafeArea(.all)
            .offset(x:0, y:-16)
        VStack {
            HStack {
                Text(titulo)
                    .offset(x:0, y:-55)
                .font(.system(.title2))
                .padding(.leading, 18)
                Spacer()
            }.padding(.bottom, 3)
            HStack {
                Text(texto)
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
        conteudo(tamanho: 300, imagem: "image", texto: "Lorem ipsum", titulo: "sijksjfdf")
    }
}
