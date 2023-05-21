import SwiftUI

struct BotaoFiltro: View {
    

    var body: some View {
        ZStack{
            
            ZStack{
                RoundedRectangle(cornerRadius: 18)
                    .frame(width: 190, height: 50)
                    .foregroundColor(.gray.opacity(0.7))
                Text("OI")
                    .foregroundColor(.black.opacity(0.9))
            }

        }
    }
}



struct BotaoFiltor_Previews: PreviewProvider {
    static var previews: some View {
        
        
        BotaoFiltro()
    }
}
