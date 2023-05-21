import SwiftUI

struct TelaDeOnboarding: View {
    @State var estaNaTelaDeOnboarding:Bool = true
    var body: some View {
        if estaNaTelaDeOnboarding == true{
                TabView {
                    OnboardingPage(estaOnboarding: $estaNaTelaDeOnboarding, temLink: false)
                    OnboardingPage(estaOnboarding: $estaNaTelaDeOnboarding, temLink: false)
                    OnboardingPage(estaOnboarding: $estaNaTelaDeOnboarding, temLink: true)
                    
                }.tabViewStyle(.page)
                    .indexViewStyle(.page (backgroundDisplayMode: .always))
                .ignoresSafeArea(edges: .top)
        } else{
            ContentView()
        }
        
    }
}

struct TelaDeOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        TelaDeOnboarding()
    }
}
