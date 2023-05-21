import SwiftUI

struct filtro: View {
    
    @State var casos:[caso] = [.redeDeApoio
                               , .alimentacao
                               , .apps
                               , .direitos
                               , .cursoDeGravidas
                               ,.ajudaPsicologica]
    
    @Binding var ativado:[Bool]
    
    

    @State var casoAtual:caso = .nenhum
    
    var body: some View {
        HStack {
            ForEach(0..<6, id: \.self){ n in
                
                ZStack{
                    Button {
                        
                        for j in 0 ..< ativado.count{
                            if j != n{
                                ativado[j] = false
                            }
                            
                            
                        }
                        
                        ativado[n].toggle()
                        
                        
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 19)
                                .frame(width: 150, height: 35)
                                .foregroundColor(ativado[n] ? .blue : .gray.opacity(0.4))
                            Text(tipo[casos[n]]!)
                                .font(.caption2)
                                .fontWeight(.bold)
                                .foregroundColor(ativado[n] ? .white : .black.opacity(0.5))
                        }
                        
                        
                    }
                    
                }
                
            }

            
        }.padding(.horizontal, 19)
        

    }
}

struct filtro_Previews: PreviewProvider {
    static var previews: some View {
        @State var n:Int = 7
        @State var ativado:[Bool] = [false, false, false, false, false, false]
        filtro(ativado: $ativado)
    }
}
