import Foundation

var tipo = [caso.prenatal:"Pré-natal", caso.bemEstarSaude:"Bem-estar e saúde", caso.apps:"Apps", caso.direitos:"Direitos", caso.cursoDeGravidas:"Cursos de grávida"]

enum caso{
    case prenatal
    case bemEstarSaude
    case apps
    case direitos
    case cursoDeGravidas
    case ajudaPsicologica

}

struct Tela{
    var titulo:String
    var texto:String
    var imagem:String
    var link:String
    var temLink:Bool
    var tipo:Int
    var tituloLink:String
}

struct sugestaoLista{
    static let tela = [
        
        //MODAL
        Tela(titulo: "Ajude-nos a melhorar o app",
             texto: "Sua ajuda é fundamental para aprimorarmos cada vez mais o nosso aplicativo! Compartilhe o que foi útil para você após descobrir a gravidez e ajude as futuras mamães. Seu feedback nos ajudará a melhorar, adicionar recursos úteis e atender às suas necessidades. Agradecemos antecipadamente por contribuir com a evolução do nosso aplicativo e apoiar outras mulheres nessa jornada incrível.",
             imagem: "Modal1",
             link: "https://docs.google.com/forms/d/e/1FAIpQLScK9f4Mo5vc4qj-vCQQwMxPjya3m2ZxNuWXBvtU8Cv6a50Z5Q/viewform?usp=sf_link",
             temLink: true, tipo:9, tituloLink: "Acesse o formulário"),
        
        //Pré-Natal
        Tela(titulo: "Pré-Natal",
             texto: "O pré-natal é um passo essencial para uma gestação saudável. Através dele, você receberá acompanhamento médico, exames e cuidados necessários para o desenvolvimento saudável do bebê. Durante as consultas, seu médico monitorará a gravidez, responderá suas dúvidas e fornecerá orientações personalizadas. Além dos exames, é importante cuidar de si mesma, com alimentação equilibrada, atividade física adequada e evitando fatores de risco. Confie no seu médico, siga suas orientações e compartilhe suas preocupações.",
             imagem: "Image 5",
             link: "https://flo.health/pt",
             temLink: false, tipo:0, tituloLink: ""),
        Tela(titulo: "UBS",
             texto: "É possível fazer o pré-natal em todas as unidades básicas de saúde do Distrito Federal. Para receber atendimento é necessário apenas levar o documento com foto e cartão do SUS (Sistema Único de Saúde) e de preferência um comprovante de residência. Na unidade será possível fazer teste rápidos de DSTs, exames necessários, detecção de possíveis doenças familiares e por ventura encaminhar para outros profissionais",
             imagem: "Image 6",
             link: "https://flo.health/pt",
             temLink: false, tipo:0, tituloLink: ""),
        Tela(titulo: "Exames",
             texto: "Os principais exames que são realizados durante o pré-natal são: Tipagem sanguínea e fator Rh, Hemograma, Eletroforese de hemoglobina, Glicemia, Exame de cultura de urina com antibiograma, Exame preventivo de câncer de colo de útero, Teste rápido de sífilis e VDRL, Avaliação odontológica, Testes de HIV, Teste de malária, Exames para o(a) companheiro(a), Testes para hepatite B (HBsAg) e Exame de toxoplasmose. Lembrando que após o acompanhamento no pré-natal você será orientada sobre cada exame.",
             imagem: "Image 7",
             link: "https://flo.health/pt",
             temLink: false, tipo:0, tituloLink: ""),
        Tela(titulo: "Vacinas",
             texto: "As principais vacinas indicadas para a gestante são: Vacina covid-19, Vacina influenza (gripe), Vacina hepatite B, Vacina dTpa, Vacina dupla adulto. Lembrando que após o acompanhamento no pré-natal você será orientada sobre cada exame.",
             imagem: "Image 20",
             link: "https://flo.health/pt",
             temLink: false, tipo:0, tituloLink: ""),
        Tela(titulo: "Caderneta da gestante",
             texto: "A caderneta da gestante disponível no Sistema Único de Saúde oferece informações importantes sobre o período da gestação.",
             imagem: "Image 21",
             link: "https://bvsms.saude.gov.br/bvs/publicacoes/caderneta_gestante_versao_eletronica_2022.pdf",
             temLink: true, tipo:0, tituloLink: "Acesse a caderneta de poupança"),
        
        //Bem-estar e saúde
        Tela(titulo: "Rede de apoio",
             texto: "A rede de apoio desempenha um papel crucial durante o período da gestação. Carregar sozinha o peso emocional e físico da gravidez pode ser extremamente desgastante. Por isso, contar com uma rede de apoio adequada proporciona uma oportunidade valiosa para tirar dúvidas, compartilhar experiências e receber assistência ao longo de todo o processo. Essa rede pode incluir familiares, amigos e profissionais de saúde, e desempenha um papel vital ao oferecer suporte emocional, orientações práticas e, quando necessário, até mesmo auxílio financeiro. Ter pessoas próximas que compreendem as peculiaridades da gestação pode tornar essa fase mais tranquila e gratificante, permitindo que a futura mãe se sinta amparada e fortalecida para enfrentar os desafios e desfrutar dos momentos especiais dessa jornada única.",
             imagem: "Image 8",
             link: "https://flo.health/pt",
             temLink: false, tipo:1, tituloLink: ""),
        Tela(titulo: "Mudanças no corpo",
             texto: "Durante o primeiro trimestre da gravidez, é comum ocorrerem diversas mudanças no corpo da mulher. Entre elas, podemos citar:\n \n- Sensibilidade dos seios devido a mudanças hormonais: durante esse período, os hormônios da gravidez causam um aumento da sensibilidade nos seios, podendo deixá-los doloridos ou mais sensíveis ao toque.\n- Cansaço e sonolência frequentes: é comum que as mulheres sintam uma maior sensação de cansaço e necessidade de sono durante o primeiro trimestre, devido às alterações hormonais e ao aumento do metabolismo.\n- Retenção de líquidos: algumas mulheres experimentam um leve inchaço e retenção de líquidos nas primeiras semanas de gravidez, o que pode resultar em um certo desconforto.\n- Aumento na frequência de micção: devido ao aumento do fluxo sanguíneo nos rins e à pressão exercida pelo útero em crescimento, é comum que as mulheres grávidas precisem urinar com mais frequência durante o primeiro trimestre.\n- Prisão de ventre: as mudanças hormonais podem afetar o sistema digestivo, causando constipação em algumas gestantes durante essa fase inicial da gravidez.\n- Alterações de humor: flutuações hormonais podem levar a mudanças de humor durante o primeiro trimestre, sendo comum que as gestantes experimentem momentos de alegria, ansiedade e até mesmo sensibilidade emocional.",
             imagem: "Image 9",
             link: "",
             temLink: false, tipo:1, tituloLink: ""),
        Tela(titulo: "Alimentação Saudável",
             texto: "Manter uma alimentação é muito importante, principalmente durante a gravidez. Durante esse período, é preciso garantir que seu bebê receba os nutrientes de que precisa para um desenvolvimento saudável. Uma dieta balanceada prepara o corpo para o trabalho de parto, parto e amamentação. O ganho de peso inadequado e excessivo durante a gravidez pode representar riscos  para a saúde da mãe e do bebê e, portanto, é importante evitá-lo. Para acompanhamento especializado e personalizado marque uma consulta com uma nutricionista.",
             imagem: "Image 10",
             link: "https://www.gov.br/saude/pt-br/assuntos/noticias/2021-1/novembro/ministerio-da-saude-lanca-protocolo-de-uso-do-guia-alimentar-para-gestantes",
             temLink: false, tipo:1, tituloLink: ""),
        Tela(titulo: "Guia Alimentar",
             texto: "Uma boa alimentação durante a gestação é fundamental para manter uma gestação saudável e promover o desenvolvimento adequado do bebê. Nesse sentido, o Ministério da Saúde fornece um guia alimentar para facilitar o cuidado com a alimentação.",
             imagem: "Image 11",
             link: "https://www.gov.br/saude/pt-br/assuntos/noticias/2021-1/novembro/ministerio-da-saude-lanca-protocolo-de-uso-do-guia-alimentar-para-gestantes",
             temLink: true, tipo:1, tituloLink: "Acesse o guia alimentar"),
        Tela(titulo: "Acompanhamento psicológico",
            texto: "",
            imagem: "Image 22",
            link: "https://cincoporcento.com.br",
            temLink: true, tipo:1, tituloLink: "Acessar o curso"),
        
        
        //Aplicativos
        Tela(titulo: "Aplicativos",
             texto: "Durante a gravidez alguns aplicativos podem auxiliar você a se organizar e entender melhor o período de gestação. Confira abaixo alguns aplicativos populares que podem ser de grande ajuda nessa caminhada:",
             imagem: "Image 4",
             link: "https://flo.health/pt",
             temLink: false, tipo:2, tituloLink: ""),
        Tela(titulo: "Flo",
             texto: "O aplicativo Flo permite que você acompanhe todo o processo da gravidez desde o acompanhamento do ciclo menstrual até o nascimento do bebê, trazendo constantemente artigos sobre o desenvolvimento do bebê, além de ter a aba papo privado que permite com que você seja livre para tirar dúvidas e e conversar sobre questões mais íntimas.",
             imagem: "Image",
             link: "https://flo.health/pt",
             temLink: true, tipo:2, tituloLink: "Acessar o app"),
        Tela(titulo: "Gravidez+",
             texto: "O aplicativo Gravidez+ permite que você acompanhe o desenvolvimento do bebê através de uma visualização em 3D com um modelo que se aproxima do tamanho real baseado em semanas. Além disso, o app disponibiliza dicas sobre a gestação, mostra o tamanho do bebê comparando com alimentemos, mostra a linha do tempo sobre os exames necessários, tarefas necessárias para cada semana, etc.",
             imagem: "Image 1",
             link: "https://apps.apple.com/br/app/gravidez/id505864483",
             temLink: true, tipo:2, tituloLink: "Acessar o app"),
        Tela(titulo: "Baby Center",
        texto: "O aplicativo BabyCenter permite que você acompanhe o desenvolvimento do bebê, receba o apoio de uma comunidade de outras grávidas, tire fotos do crescimento da barriga, além de ter outras ferramentas interessantes como contador de contrações, tudo isso junto de dicas práticas sobre a gravidez.",
        imagem: "Image 2",
        link: "https://apps.apple.com/br/app/babycentre-pregnancy-tracker/id386022579?l=en",
        temLink: true, tipo:2, tituloLink: "Acessar o app"),
        Tela(titulo: "Minha gravidez",
        texto: "O aplicativo Minha Gravidez fornecer informações detalhadas sobre cada semana de gestação do ponto de vista da mãe e do bebê, contém uma lista de afazeres durante os três trimestres da gravidez, o que levar para o hospital e o processo de trazer o bebê para casa. O app também conta com um rastreador de peso e um contador de chutes.",
        imagem: "Image 3",
        link: "https://apps.apple.com/br/app/babycentre-pregnancy-tracker/id386022579?l=en",
        temLink: true, tipo:2, tituloLink: "Acessar o app"),
        
        //Direitos
        Tela(titulo: "Permanência no emprego",
        texto: "A partir do artigo 373-A da CLT: \"Ressalvadas as disposições legais destinadas a corrigir as distorções que afetam o acesso da mulher ao mercado de trabalho e certas especificidades estabelecidas nos acordos trabalhistas, é vedado: IV - exigir atestado ou exame, de qualquer natureza, para comprovação de esterilidade ou gravidez, na admissão ou permanência no emprego;\".",
        imagem: "Image 12",
        link: "https://apps.apple.com/br/app/babycentre-pregnancy-tracker/id386022579?l=en",
        temLink: false, tipo:3, tituloLink: "Acessar o app"),
        
        Tela(titulo: "Licença maternidade",
        texto: "A partir do artigo 392 da CLT: \"A empregada gestante tem direito à licença-maternidade de 120 (cento e vinte) dias, sem prejuízo do emprego e do salário. (Redação dada pela Lei nº 10.421, 15.4.2002) (Vide Lei nº 13.985, de 2020)\".",
        imagem: "Image 13",
        link: "https://apps.apple.com/br/app/babycentre-pregnancy-tracker/id386022579?l=en",
        temLink: false, tipo:3, tituloLink: "Acessar o app"),
        
        Tela(titulo: "Direito ao acompanhamento da gestante",
        texto: "Durante a gestação a grávida tem direito a pelo menos seis consultas e exames complementares, bastando apenas mostrar o atestado justificando a ausência. A partir do artigo 392 da CLT: II - dispensa do horário de trabalho pelo tempo necessário para a realização de, no mínimo, seis consultas médicas e demais exames complementares. (Incluído pela Lei nº 9.799, de 26.5.1999).",
        imagem: "Image 14",
        link: "https://apps.apple.com/br/app/babycentre-pregnancy-tracker/id386022579?l=en",
        temLink: false, tipo:3, tituloLink: "Acessar o app"),
        Tela(titulo: "Função temporária",
        texto: "A partir do artigo 392 da CLT: I - transferência de função, quando as condições de saúde o exigirem, assegurada a retomada da função anteriormente exercida, logo após o retorno ao trabalho; (Incluído pela Lei nº 9.799, de 26.5.1999).",
        imagem: "Image 15",
        link: "https://apps.apple.com/br/app/babycentre-pregnancy-tracker/id386022579?l=en",
        temLink: false, tipo:3, tituloLink: "Acessar o app"),
        
        //Curso de grávidas
        Tela(titulo: "Curso de grávidas",
        texto: "Fazer um curso de grávidas pode ser extremamente benéfico, pois ele proporciona uma melhor preparação para o momento do parto, além de fornecer um entendimento mais aprofundado sobre as transformações que ocorrem no corpo durante a gestação e como lidar com elas. Confira abaixo alguns cursos de grávidas disponíveis:",
        imagem: "Image 16",
        link: "https://www.pampers.com.br/gravidez/curso-para-gestantes",
        temLink: false, tipo:4, tituloLink: "Acessar o curso"),
        Tela(titulo: "Curso Pampers",
        texto: "Curso online de preparação para o parto separado em 9 episódios gratuito que possui especialistas clínicos em partos.",
        imagem: "Image 18",
        link: "https://www.pampers.com.br/gravidez/curso-para-gestantes",
        temLink: true, tipo:4, tituloLink: "Acessar o curso"),
        Tela(titulo: "Curso Hospital Albert Einstein",
        texto: "No intuito de vivenciar uma gestação mais tranquila e com informações seguras e relevantes o Hospital Israelita Albert Einstein disponibilizará até o dia 11/06 um curso de grávidas pago em formato híbrido ministrada por enfermeiros, médicos, nutricionistas, psicólogos e fisioterapeutas tirando todas as suas principais dúvidas",
        imagem: "Image 17",
        link: "https://ensino.einstein.br/curso_preparatorio_gestantes_acompanhantes_P5134/p?sku=6453&cidade=sp",
        temLink: true, tipo:4, tituloLink: "Acessar o curso"),
        Tela(titulo: "Curso 5%",
        texto: "O curso \"5%\" é uma ferramenta completa para pais e mães que desejam criar seus filhos de forma saudável e equilibrada. Ele abrange desde o nascimento até os 2 anos de idade da criança. Voltado para pais, o curso aborda todos os aspectos da família, incluindo o físico, mental e espiritual. É um recurso abrangente que oferece suporte na criação dos filhos, garantindo um desenvolvimento saudável em todas as áreas.",
        imagem: "Image 19",
        link: "https://cincoporcento.com.br",
        temLink: true, tipo:4, tituloLink: "Acessar o curso")
    ]
}
