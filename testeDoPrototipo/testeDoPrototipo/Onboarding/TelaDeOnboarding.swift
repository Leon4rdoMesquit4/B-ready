import SwiftUI

struct TelaDeOnboarding: View {
    @AppStorage("estaNaTelaDeOnboarding") var estaNaTelaDeOnboarding:Bool = true
    
    init(){
        let pageControl = UIPageControl.appearance()
        pageControl.currentPageIndicatorTintColor = .systemBlue
        pageControl.pageIndicatorTintColor = .gray
    }
    
    var body: some View {
        if estaNaTelaDeOnboarding == true{
                TabView {
                    OnboardingPage(estaOnboarding: $estaNaTelaDeOnboarding, temLink: false, imagem: "Onboarding1", texto: "Com o B-Ready você receberá indicações durante o período da gestação sobre o pré-natal, bem-estar, saúde e muito mais!", titulo: "Bem-vinda ao B-ready")
                    OnboardingPage(estaOnboarding: $estaNaTelaDeOnboarding, temLink: false, imagem: "Onboarding2", texto: "Com a sua ajuda poderemos cada vez mais aumentar as indicações do período da gravidez, após o uso compartilhe a sua experiência!", titulo: "Você faz o app")
                    OnboardingPage(estaOnboarding: $estaNaTelaDeOnboarding, temLink: true, imagem: "Onboarding3", texto: "Você não está sozinha, o período da gravidez pode ser leve! Comece a sua jornada agora e entenda mais sobre a gravidez!", titulo: "Começe agora")
                    
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
