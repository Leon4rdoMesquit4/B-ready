import SwiftUI

struct TelaDeOnboarding: View {
    @State var estaNaTelaDeOnboarding:Bool = true
    
    init(){
        let pageControl = UIPageControl.appearance()
        pageControl.currentPageIndicatorTintColor = .systemBlue
        pageControl.pageIndicatorTintColor = .gray
    }
    
    var body: some View {
        if estaNaTelaDeOnboarding == true{
                TabView {
                    OnboardingPage(estaOnboarding: $estaNaTelaDeOnboarding, temLink: false, imagem: "Onboarding1")
                    OnboardingPage(estaOnboarding: $estaNaTelaDeOnboarding, temLink: false, imagem: "Onboarding2")
                    OnboardingPage(estaOnboarding: $estaNaTelaDeOnboarding, temLink: true, imagem: "Onboarding3")
                    
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
