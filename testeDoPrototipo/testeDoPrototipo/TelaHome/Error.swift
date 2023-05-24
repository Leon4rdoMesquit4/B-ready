import SwiftUI

struct Error: View {
    var body: some View {
        
            VStack {
                Image(systemName: "magnifyingglass")
                    .font(.system(.largeTitle))
                    .padding(.vertical, 1)
                Text("Nada foi encontrado")
                    .font(.system(.title2))
                .fontWeight(.bold)
                Text("Algo pode estar errado, tente buscar novamente")
                    .font(.system(.subheadline))
                    .foregroundColor(Color("Cinza_texto"))
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Error()
    }
}
