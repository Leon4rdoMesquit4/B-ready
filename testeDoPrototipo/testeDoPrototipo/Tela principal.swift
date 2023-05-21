import SwiftUI

struct Tela_principal: View {
    @Environment(\.presentationMode) var presentationMode
    @State var titulo:String
    @State var texto:String
    @State var imagem:String
    @State var link:String
    @State var temLink:Bool
    @State var eModal:Bool
    
    var body: some View {
        ZStack {
        ScrollView{
            
            VStack {
                ZStack {
                    Image(imagem)
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height: 300)
                        .clipShape(Rectangle())
                        .edgesIgnoringSafeArea(.all)
                    
                }
                Spacer(minLength: 23)
                VStack {
                    HStack {
                        Text(titulo)
                            .font(.system(.title2))
                            .fontWeight(.bold)
                            .foregroundColor(Color("Roxo_padrao1"))
                        Spacer()
                    }.padding(.bottom, 4).padding(.trailing, 14)
                    
                    HStack {
                        Text(texto)
                            .font(.system(.body))
                            .foregroundColor(Color("Cinza_texto"))
                    }.padding(.trailing, 14)
                }.padding(.leading, 14)
                if temLink == true{
                    BotaoLink(link: link)
                        .padding(.top, 40)
                }
                
            }
        }
            VStack {
                if eModal == false{
                    HStack() {
                        Button(action: { presentationMode.wrappedValue.dismiss() }) { Image(systemName: "chevron.left.circle.fill").font(.system(.largeTitle)).opacity(0.5)
                            .foregroundColor(.black).font(.title)}
                        .padding(.leading,20)
                        .padding(.top, 50)
                        Spacer()
                    }
                    Spacer()
                } else{
                    HStack() {
                        Spacer()
                        Button(action: { presentationMode.wrappedValue.dismiss() }) { Image(systemName: "multiply.circle.fill").font(.system(.title3)).opacity(0.5)
                            .foregroundColor(.white).font(.title3)}
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
        
        Tela_principal(titulo: "Título Grande", texto: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean sit amet auctor arcu. Duis dapibus erat vitae varius mattis. Nullam sed rutrum massa. Nam a porta lacus, vel bibendum mi. Pellentesque a nulla a odio cursus consequat vel sit amet magna. Aliquam ornare metus at mi cursus, id dapibus nibh ullamcorper. Praesent et risus id metus rutrum tempus. Proin nec velit metus. Nulla faucibus aliquam mollis.\n\nDonec blandit congue nulla sed ullamcorper. Sed tincidunt tincidunt enim, nec accumsan urna eleifend at. Aenean eleifend ligula eget odio viverra porta. Proin rutrum tortor in leo sagittis mollis. Nullam justo massa, cursus ac malesuada vitae, efficitur vel nisi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam commodo aliquam massa et iaculis. Vestibulum sagittis urna quam, et vestibulum est molestie at. Fusce porttitor, tellus in bibendum tempor, libero urna rhoncus urna, eget volutpat nulla neque ut justo. Suspendisse dictum congue nisl, sit amet mollis massa ultricies vel. Quisque dictum eros eget convallis gravida. Duis semper sapien eu lacus consequat, a posuere velit gravida.\n\nPellentesque ac dolor mi. Fusce eleifend vulputate turpis, eget aliquet dui fermentum at. Integer venenatis elementum ex vitae lobortis. Donec nec lobortis dui, non suscipit mi. Mauris vitae nulla posuere, laoreet sem eu, aliquam felis. Duis mattis lacinia purus, sed laoreet dui. Praesent laoreet commodo dignissim. Proin venenatis bibendum purus quis tincidunt. Curabitur consectetur ac purus et feugiat. Pellentesque convallis tellus sed pulvinar tristique. Cras dui mauris, egestas sit amet magna nec, rutrum dignissim ex. Morbi tristique sapien eget suscipit viverra.", imagem: "Image 4", link: "https://chat.openai.com", temLink: true, eModal: true)
    }
}
