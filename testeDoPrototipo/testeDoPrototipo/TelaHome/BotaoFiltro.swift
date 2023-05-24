import SwiftUI

struct BotaoFiltro: View {
    

    var body: some View {
        ZStack{
            
            ZStack{
                RoundedRectangle(cornerRadius: 18)
                    .frame(width: 160, height: 40)
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
