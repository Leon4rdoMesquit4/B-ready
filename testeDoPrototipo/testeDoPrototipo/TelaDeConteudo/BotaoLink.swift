import SwiftUI

struct BotaoLink: View {
    @State var tituloLink:String
    @State var link:String
    @State var isPresented:Bool = false
    @State var emodal:Bool
    @Environment(\.openURL) var openURL
    var body: some View {
        
        ZStack {
            if !emodal{
                RoundedRectangle(cornerRadius: 16) //Cria a sombra da caixa
                    .frame(height: 200/2)
                    .foregroundColor(.white)
                    .padding(.top, 200/2)
                    .padding(.horizontal)
                    .shadow(radius: 40)
                    .opacity(0.6)
                RoundedRectangle(cornerRadius: 16)
                    .frame(height:200)
                    .foregroundColor(.white)
            }
            
            VStack {
                if !emodal{
                    Image(systemName: "paperplane.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color("Roxo_padrao1"))
                        .padding(.top, 20)
                    Text("Confira mais sobre isso no link abaixo")
                        .padding(.top, 10)
                        .padding(.bottom, 9)
                        .foregroundColor(Color("Cinza_texto"))
                }
                Button {
                    isPresented = true
                } label: {
                    Botao(titulo: tituloLink)
                }.alert("Você sairá do app", isPresented: $isPresented, actions: {
                    Button("Não", role: .cancel, action: {})
                    Button("Sim", role: .destructive, action: {
                        if let url = URL(string: link) { 
                            UIApplication.shared.open(url)}})
                }, message: {
                    Text("Tem certeza que deseja fazer isso?")
                })

            }
        }.padding(.leading, 14).padding(.trailing, 14)

    }
}

struct Botao:View{
    @State var titulo:String
    var body: some View{
        Text(titulo)
            .foregroundColor(.white)
            .font(.body)
            .fontWeight(.bold)
            .frame(width: 330, height: 50)
            .background(Color("Roxo_padrao1"))
            .cornerRadius(16)
            .padding(.bottom, 25)
    }
}

struct BotaoLink_Previews: PreviewProvider {
    static var previews: some View {
        BotaoLink(tituloLink:"Acesse o site", link: "", emodal: false)
    }
}
