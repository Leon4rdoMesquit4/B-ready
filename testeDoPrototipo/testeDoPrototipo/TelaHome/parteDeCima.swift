import SwiftUI

struct parteDeCima: View {
    
    @Binding var estaPesquisando:Bool
    var body: some View {
        HStack {
            Text("Boa tarde ;)")
                .font(.system(.largeTitle))
                .fontWeight(.bold)
            Spacer()
            Button {
                estaPesquisando.toggle()
            } label: {
                Image(systemName: "magnifyingglass")
                    .font(.system(.title))
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
                TextField("Search            ", text: $texto).padding(.leading)
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
