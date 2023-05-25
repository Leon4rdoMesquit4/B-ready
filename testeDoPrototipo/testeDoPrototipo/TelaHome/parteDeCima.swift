import SwiftUI

struct parteDeCima: View {
    
    @Binding var estaPesquisando:Bool
//    @State var parteDoDia:String = ["Bom dia", "Boa tarde", "Boa noite"]
    let hour = Calendar.current.component(.hour, from: Date())
    var body: some View {
        HStack {
            if hour > 6 && hour < 12{
                Text("Bom dia ;)")
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Roxo_padrao1"))
            } else if hour > 12 && hour < 18{
                Text("Boa tarde ;)")
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Roxo_padrao1"))
            } else{
                Text("Boa noite ;)")
                    .font(.system(.largeTitle))
                    .fontWeight(.bold)
                    .foregroundColor(Color("Roxo_padrao1"))
            }
           
            Spacer()
            Button {
                estaPesquisando.toggle()
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.system(.title))
                    .foregroundColor(Color("Roxo_padrao1"))
            }

            
        }.padding(.horizontal, 19).frame(height: 45)
    }
}

struct parteDeCima2: View {
    @Binding var texto:String
    @Binding var estaPesquisando:Bool
    var body: some View {
        HStack(){
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.gray.opacity(0.2))
                TextField("Buscar", text: $texto).padding(.leading)
                if texto != ""{
                    HStack{
                        Spacer()
                        Button {
                            self.texto = ""
                        } label: {
                            Image(systemName: "multiply.circle.fill")
                                .foregroundColor(.gray.opacity(0.7))
                        }

                    }.padding(.trailing, 10)
                }
                
            }.frame(height: 40)
            Button {
                estaPesquisando.toggle()
                self.texto = ""
            } label: {
                Text("Cancel")
                    .foregroundColor(Color("Roxo_padrao1"))
            }.padding(.leading, 6)
        }.padding(.horizontal, 19).padding(.top).padding(.bottom, 10)
    }
}



struct parteDeCima_Previews: PreviewProvider {
    static var previews: some View {
        @State var estaLigado:Bool = true
        @State var texto:String = ""
        //parteDeCima(estaPesquisando: $estaLigado)
        parteDeCima2(texto: $texto, estaPesquisando: $estaLigado)
    }
}
