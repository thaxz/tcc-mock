//
//  ConstructionsDataService.swift
//  tccv1
//
//  Created by thaxz on 01/09/24.
//

import Foundation
import MapKit

final class ConstructionsDataService {
    
    static let constructions = [
        Construction(
            name: "Palácio do Campo das Princesas",
            imageNames: ["princesac1", "princesac2", "princesac3"],
            description: """
            O Palácio do Campo das Princesas é uma das construções mais importantes de Pernambuco, situado no bairro de Santo Antônio. Seu nome atual surgiu em 1859, quando o Imperador Dom Pedro II e sua família visitaram o Recife. As princesas imperiais, encantadas com os jardins do palácio, passaram a brincar no local, o que inspirou a mudança do nome. Originalmente erguido em 1841 com um projeto neoclássico, o palácio foi sendo modificado ao longo dos anos, refletindo as transformações culturais e políticas de Pernambuco.\n
            A partir de 1922, o edifício passou por uma grande ampliação e, entre 1928 e 1930, recebeu uma nova decoração com forte influência francesa, incorporando elementos dos estilos Luís XIV, XV e XVI, o que reforçou seu caráter luxuoso e grandioso. Hoje, o Palácio do Campo das Princesas não é apenas a sede do governo de Pernambuco, mas também um importante marco da história arquitetônica e política da região, testemunhando séculos de transformações sociais e culturais.
            """,
            history: """
            O Palácio do Campo das Princesas foi construído em 1841 no local onde antes se encontrava o Erário Régio, ao lado das ruínas do Palácio de Friburgo, antiga residência de Maurício de Nassau. Com um estilo neoclássico, o edifício tornou-se a nova sede do governo da capitania de Pernambuco. O nome "Campo das Princesas" foi dado em 1859 durante a visita de Dom Pedro II, em homenagem às princesas que brincavam nos jardins do palácio.\n
            Em 1922, o edifício passou por uma ampliação significativa, que incluiu a construção de um terceiro pavimento. Nos anos seguintes, uma grande reforma foi realizada, transformando o interior do palácio com uma decoração rica em influência francesa, marcada pelos estilos Luís XIV, XV e XVI. No governo de José Rufino Bezerra Cavalcanti, em 1920, o palácio também recebeu um parque-jardim e uma modernização completa da iluminação.\n
            Desde então, o Palácio do Campo das Princesas tem sido palco de importantes eventos políticos e sociais em Pernambuco. Suas múltiplas reformas, realizadas ao longo do século XX, garantiram que ele permanecesse como um ícone da história pernambucana, tanto pela sua arquitetura quanto pelo seu papel nas transformações políticas do estado.
            """,
            categories: ["Governamental", "Neoclássico"],
            coordinates: CLLocationCoordinate2D(latitude: -8.059784489110756,
                                                longitude: -34.87744257586986)
        ),
        Construction(
            name: "Teatro de Santa Isabel",
            imageNames: ["teatroc1", "teatroc2", "teatroc3", "teatroc4"],
            description: """
            O Teatro de Santa Isabel, localizado no bairro de Santo Antônio, é um dos mais importantes monumentos culturais de Pernambuco. Inaugurado em 18 de maio de 1850, o teatro foi projetado pelo engenheiro francês Louis Léger Vauthier e tornou-se o primeiro exemplar da arquitetura neoclássica no estado. Sua construção foi uma iniciativa de Francisco do Rego Barros, o futuro Conde da Boa Vista, que, na época, visava modernizar a cidade e criar um espaço cultural digno de uma metrópole em desenvolvimento.\n
            Ao longo dos anos, o Teatro de Santa Isabel não apenas se consolidou como um centro de atividades artísticas, mas também como palco de eventos políticos significativos. Recebeu figuras ilustres como Dom Pedro II, Castro Alves, e a bailarina Anna Pavlova, além de ser um espaço importante para a campanha abolicionista e os movimentos republicanos. Mesmo após um incêndio devastador em 1869, o teatro foi reconstruído e modernizado, permanecendo um ícone da tradição cultural e social de Pernambuco até os dias de hoje.
            """,
            history: """
            O Teatro de Santa Isabel foi idealizado em meados do século XIX, quando Recife passava por grandes transformações, deixando para trás suas características coloniais e se aproximando de uma configuração mais moderna. Francisco do Rego Barros, o futuro Conde da Boa Vista, foi o responsável por essa iniciativa visionária de construir um teatro público que servisse como um centro cultural e social para a cidade. O projeto do engenheiro francês Louis Léger Vauthier foi revolucionário para a época, e a construção utilizou recursos de loterias, ações de uma companhia e verbas da província, empregando trabalho não-escravo.
            \nDesde sua inauguração em 1850, o teatro recebeu grandes nomes das artes e da política, como Dom Pedro II, Castro Alves, e Rui Barbosa, consolidando-se como um marco cultural. Em 1869, o teatro sofreu um incêndio que destruiu grande parte da sua estrutura, mas foi reconstruído em 1876, mantendo a essência de seu projeto original, com reformas que modernizaram seu interior e incluíram a instalação de iluminação elétrica no início do século XX. Até hoje, o Teatro de Santa Isabel é um ponto de encontro para eventos culturais e políticos, carregando em suas paredes a história viva de Pernambuco.
            """,
            categories: ["Teatro", "Cultural", "Neoclássico"],
            coordinates: CLLocationCoordinate2D(latitude: -8.060489135187918,
                                                longitude: -34.8780378316903)
        ),
        Construction(
            name: "Basílica de Nossa Senhora do Carmo",
            imageNames: ["carmoC1", "carmoc2", "carmoC3"],
            description: """
            A Basílica de Nossa Senhora do Carmo, situada no coração do bairro de Santo Antônio, Recife, é um dos mais impressionantes monumentos religiosos da cidade.\n
            Sua história remonta ao século XVII, quando, em 1665, o capitão Diogo Cavalcanti Vasconcelos decidiu iniciar a construção de uma Capela Mor dedicada à Nossa Senhora do Carmo, mesmo antes de receber a devida licença real, que só seria concedida em 1687.\n
            O início da construção da igreja principal ocorreu em 1696 e, devido a muitos desafios ao longo dos anos, sua conclusão só foi alcançada em 1767. Durante este longo processo de edificação, a Basílica se tornou um ponto central de devoção religiosa para os habitantes da cidade.\n
            A arquitetura da igreja impressiona pela sua grandiosidade e pelos nove altares ricamente ornamentados, sendo o altar-mor dedicado à padroeira. Seu frontispício é considerado um dos mais majestosos de Pernambuco, com detalhes barrocos esculpidos em pedra, e a torre de 50 metros, coroada por um bulbo, destaca-se no horizonte da cidade.
            """,
            history: """
            A história da Basílica é repleta de marcos importantes, refletindo a luta e perseverança da comunidade católica local. Após a expulsão dos holandeses, que haviam invadido e saqueado Pernambuco, as autoridades hesitaram em permitir a construção de um convento carmelita no Recife. Eventualmente, a decisão foi revertida, e o terreno que abrigava as ruínas do antigo palácio de Maurício de Nassau foi cedido para a construção da igreja.\n
            Ao longo dos séculos, a Basílica passou por diversas reformas e adaptações. Entre seus principais benfeitores estava o governador D. João de Sousa, que, em 1684, doou extensas terras à igreja, consolidando sua importância. A Basílica também é conhecida por seu papel espiritual central, especialmente após Nossa Senhora do Carmo ter sido declarada padroeira de Recife pelo Papa Pio X, em 1909, e coroada em uma celebração pública no Parque 13 de Maio, em 1917.\n
            A igreja, além de ser um monumento arquitetônico de grande valor, é um testemunho da resiliência da fé católica e da devoção mariana em Pernambuco. Acredita-se que a imagem de Nossa Senhora do Carmo, venerada na Basílica, seja a mesma que foi trazida de Portugal para Olinda e salva durante a invasão holandesa. Essa tradição fortaleceu ainda mais o vínculo da Basílica com a história religiosa local, tornando-se um ponto de peregrinação e de celebração para os fiéis.\n
            Hoje, além de seu papel religioso, a Basílica de Nossa Senhora do Carmo é um importante patrimônio cultural, atraindo visitantes por sua beleza e por sua relevância histórica, e mantendo viva a tradição da devoção a Nossa Senhora do Carmo entre as novas gerações de recifenses.
            """,
            categories: ["Cultura", "História", "Religioso", "Barroco"],
            coordinates: CLLocationCoordinate2D(latitude: -8.066145714644689,
                                                longitude: -34.87981857586977)
        ),
        Construction(
            name: "Mercado de São José",
            imageNames: ["joseC1", "joseC2", "joseC3"],
            description: """
            O Mercado de São José, localizado no tradicional bairro de São José, no centro do Recife, é um dos principais pontos de referência do comércio popular da cidade.\n
            O mercado se destaca não só por sua arquitetura em ferro, única no Brasil, mas também pela diversidade de produtos que oferece, desde artesanato e comidas típicas, até artigos religiosos e folhetos de cordel. É um lugar onde tradição e modernidade convivem, atraindo tanto os moradores locais quanto turistas que buscam uma imersão na cultura pernambucana.\n
            Inaugurado em 1875, o Mercado de São José reflete o espírito de modernização urbana do século XIX, sendo até hoje um dos centros mais vibrantes e autênticos de comércio e cultura no Recife.
            """,
            history: """
            A história do Mercado de São José remonta ao final do século XVIII, quando os frades capuchinhos do Convento de Nossa Senhora da Penha solicitaram a transferência do mercado de carne e peixe para a área onde hoje está localizado o bairro de São José. O projeto para o novo mercado foi inspirado no Mercado de Grenelle, em Paris, e adaptado ao clima tropical brasileiro pelo engenheiro francês Victor Lieutier.\n
            A construção do mercado, supervisionada por Louis Léger Vauthier, começou na segunda metade do século XIX e foi um marco no desenvolvimento da cidade. Inaugurado em setembro de 1875, o Mercado de São José é o primeiro edifício pré-fabricado em ferro do Brasil, sendo um símbolo de inovação arquitetônica e urbanística para a época.\n
            Ao longo dos anos, o mercado passou por diversas reformas. Um dos momentos mais críticos de sua história foi em 1989, quando um incêndio destruiu parte de sua estrutura. A reconstrução foi concluída em 1994, preservando o valor histórico e cultural do local. Durante séculos, o Mercado de São José se consolidou não apenas como um centro de comércio, mas também como um espaço de manifestações culturais, onde cantadores, repentistas e artistas populares encontram um ambiente propício para compartilhar suas tradições.\n
            Hoje, o mercado abriga 46 pavilhões, 561 boxes cobertos e 80 compartimentos externos, sendo um importante ponto de venda de artesanato pernambucano, especiarias, ervas medicinais e artigos religiosos. Além de sua relevância econômica, o Mercado de São José é um monumento nacional e uma joia da arquitetura de ferro do século XIX, que continua a atrair visitantes de todo o Brasil.
            """,
            categories: ["Comércio", "Gastronomia", "Artesanato"],
            coordinates: CLLocationCoordinate2D(latitude: -8.068303577770722,
                                                longitude: -34.8776470663464)
        ),
        Construction(
            name: "Forte das Cinco Pontas",
            imageNames: ["pontasC1", "pontasC2", "pontasC3"],
            description: """
            O Forte das Cinco Pontas, localizado na Avenida Sul, no bairro de São José, é uma das mais importantes fortificações históricas de Recife. Construído inicialmente durante a ocupação holandesa no Brasil, o forte é conhecido por sua forma pentagonal distinta, que lhe conferiu o nome popular de Forte das Cinco Pontas. A estrutura original, feita de madeira, terra batida e barro, foi substituída por uma construção em pedra e cal, conservando apenas quatro das cinco pontas originais após a primeira grande reforma.\n
            Hoje, o forte não apenas serve como um importante marco histórico, mas também abriga o Museu da Cidade do Recife, onde os visitantes podem explorar a rica história da cidade e do estado de Pernambuco. O Forte das Cinco Pontas é um exemplo notável de fortificação militar e de adaptação de uso ao longo dos séculos, mantendo-se como um símbolo de resistência e história local.
            """,
            history: """
            A construção do Forte das Cinco Pontas começou em 1630, durante a ocupação holandesa do Brasil. Ordenado por Frederik Hendrik, Príncipe de Orange, e projetado pelo engenheiro holandês Tobias Commersteijn, o forte foi originalmente construído com materiais locais, como madeira, terra batida e barro. Embora tenha sido nomeado em honra a Frederik Hendrik, o forte ficou conhecido por sua forma pentagonal, que lhe conferiu o nome de Forte das Cinco Pontas.\n
            O objetivo principal da construção era assegurar o fornecimento de água potável e proteger os carregamentos de açúcar que passavam pelo rio Capibaribe, além de prevenir ataques de piratas. Em 1654, após a derrota das tropas holandesas pelas forças de resistência portuguesa, o forte foi tomado e passou por uma significativa reforma, sendo reconstruído em pedra e cal, mas com apenas quatro pontas.\n
            Em 1684, o forte foi renomeado para Forte de São Tiago, embora o nome original continuasse a ser usado. Com o crescimento de Recife, o forte perdeu sua função defensiva e foi adaptado para servir como depósito geral e prisão durante os séculos XVIII e XIX. No início do século XX, passou a funcionar como quartel militar e, em 1938, foi tombado como patrimônio nacional.\n
            Na década de 1970, o forte passou por uma grande reestruturação para se transformar no Museu da Cidade do Recife. O Forte das Cinco Pontas é também conhecido por seu papel em eventos históricos significativos, como a prisão e execução de Frei Caneca, líder da Revolução Pernambucana, e pela conexão com o escritor Graciliano Ramos, que escreveu parte de seu livro "Memórias do Cárcere" durante seu tempo de prisão no local.
            """,
            categories: ["Museu", "Cultural"],
            coordinates: CLLocationCoordinate2D(latitude: -8.07163031939816,
                                                longitude: -34.88087333777649)
        ),
        Construction(
            name: "Hospital Pedro II",
            imageNames: ["hospitalPedroC1", "hospitalPedroC2", "hospitalPedroC3"],
            description: """
            O Hospital Pedro II, localizado no centro de Recife, é um exemplo notável de arquitetura hospitalar do século XIX, projetado pelo engenheiro pernambucano José Mamede Alves Ferreira. Construído em 1847, o hospital se destaca por seu projeto arquitetônico inovador para a época, que visava maximizar a circulação de ar e minimizar a umidade para melhorar as condições de saúde dos pacientes.\n
            O projeto original, preservado no Arquivo Público de Pernambuco, reflete tendências internacionais contemporâneas, com um edifício que busca atender às melhores práticas da arquitetura hospitalar da época. A sua concepção é comparável à de instituições de saúde internacionais, como o Lariboisière em Paris, construído em 1854.\n
            O Hospital Pedro II foi inaugurado em 1861 e rapidamente se tornou uma instituição de saúde fundamental na região. Inicialmente destinado ao tratamento de doenças mentais, evoluiu para um hospital-escola em 1920, servindo à Faculdade de Medicina do Recife. Em 1954, passou a se chamar Hospital das Clínicas, centralizando todos os serviços clínicos da Universidade Federal de Pernambuco. Após a transferência para o Engenho do Meio em 1982, o hospital foi desativado, mas ainda mantém importância histórica e arquitetônica.
            """,
            history: """
            O Hospital Pedro II foi idealizado e projetado por José Mamede Alves Ferreira e começou a ser construído em 1847. O projeto inovador visava criar um ambiente hospitalar que favorecesse a saúde dos pacientes, com especial atenção à ventilação e controle da umidade, seguindo as melhores práticas da época, inspiradas pelos trabalhos do médico Dr. René Tenon e do arquiteto Bernard Poyet.\n
            Inaugurado em 1861 sob a administração da Santa Casa da Misericórdia, o hospital inicialmente focava no tratamento de doenças mentais, mas logo se tornou uma das principais instituições de saúde em Recife. Em 1920, transformou-se em um hospital-escola, auxiliando a Faculdade de Medicina do Recife, e em 1954, passou a ser conhecido como Hospital das Clínicas, concentrando todos os serviços clínicos da Universidade Federal de Pernambuco.\n
            Após a transferência do Hospital das Clínicas para o Engenho do Meio em 1982, o Hospital Pedro II foi desativado. Recentemente, o edifício passou por um processo de restauro que priorizou a preservação do projeto original, removendo alterações e anexos adicionados ao longo dos anos. Atualmente, o hospital está sob a gestão do Imip e continua a desempenhar um papel importante como hospital-escola.
            """,
            categories: ["Saúde", "Educação"],
            coordinates: CLLocationCoordinate2D(latitude: -8.066987240506474,
                                                longitude: -34.8908819606921)
        ),
        Construction(
            name: "Torre Malakoff",
            imageNames: ["torreMalakofC1", "torreMalakofC2", "torreMalakofC3"],
            description: """
            A Torre Malakoff, concluída em 1853, é um exemplo significativo do modernismo do século XIX. Localizada no Recife Antigo, a torre foi projetada como um ponto de referência elevado para servir tanto como observatório astronômico quanto como auxílio na navegação marítima. Sua função dupla a tornou um ponto fixo importante nas cartas de navegação da época.\n
            O nome da torre é uma referência à fortificação Malakoff, situada em Sebastopol, na Crimeia, que ganhou destaque durante a Guerra da Crimeia. A escolha do nome reflete a influência da guerra na percepção pública local. Apesar de ter sido cogitada sua demolição em 1929 para alargamento da Rua São Jorge, uma mobilização de intelectuais e jornalistas conseguiu impedir a destruição da torre.
            """,
            history: """
            A Torre Malakoff foi concluída em 1853 e projetada para servir como um ponto de referência elevado, com funções de observatório astronômico e auxílio na navegação marítima. Seu nome homenageia a fortificação Malakoff, em Sebastopol, que teve destaque na Guerra da Crimeia. Em 1929, a torre foi salva da demolição graças a uma mobilização pública que destacou sua importância cultural.\n
            Ao longo dos anos, a Torre Malakoff passou por várias transformações. Após a desativação da Capitania dos Portos em 1976 e seu uso por empresas petrolíferas, o edifício foi reabilitado no final dos anos 1980 para se tornar um espaço cultural. Desde o ano 2000, a torre funciona como um centro de exposições e eventos, com um anfiteatro externo e diversas salas de exposições.\n
            Atualmente, a Torre Malakoff é um monumento tombado pela Fundarpe e se destaca como um importante centro cultural no Recife. O espaço abriga oito salas de exposição, áreas educativas e administrativas, além de um observatório que está aberto aos domingos. A requalificação da torre é um exemplo de esforço contínuo para preservar o patrimônio histórico e promover a revitalização cultural e social, tornando-se um ponto de referência tanto para moradores quanto para visitantes.
            """,
            categories: ["Cultural", "Histórico"],
            coordinates: CLLocationCoordinate2D(latitude: -8.060603812415495,
                                                longitude: -34.87081943354179)
        ),
        Construction(
            name: "Forte do Brum",
            imageNames: ["forteBrumC1", "forteBrumC2", "forteBrumC3"],
            description: """
            O Forte do Brum, localizado no Recife Antigo, é uma fortificação histórica crucial na defesa da cidade desde o período colonial. Originalmente conhecido como Forte Bom Jesus, foi construído pelos portugueses em 1595, mas acabou sendo destruído ao longo do tempo.\n
            Quando os holandeses ocuparam Recife em 1630, o engenheiro Commersteijn projetou um novo forte sobre os alicerces do Forte Diogo Paes, que não havia sido concluído pelos portugueses. O novo forte enfrentou desafios significativos, incluindo períodos chuvosos e ataques constantes das forças luso-brasileiras, mas foi concluído ainda em 1630.\n
            Após a expulsão dos holandeses, o forte foi reformado e renomeado como Forte de São João Batista do Brum, em homenagem à capela de São João Batista construída no local. O Forte do Brum desempenhou um papel vital durante a dominação holandesa e, posteriormente, após a Restauração Portuguesa, sendo essencial para a defesa da Capitania de Pernambuco. Contava com 48 peças de artilharia e foi reparado várias vezes ao longo dos anos.
            """,
            history: """
            O Forte do Brum foi inicialmente construído como Forte Bom Jesus pelos portugueses em 1595, mas foi destruído ao longo do tempo. Durante a ocupação holandesa, em 1630, o engenheiro Commersteijn projetou um novo forte sobre os alicerces do Forte Diogo Paes, que não havia sido concluído pelos portugueses. Este novo forte, apesar dos desafios enfrentados, foi concluído ainda em 1630.\n
            Após a expulsão dos holandeses, o forte foi reformado e renomeado para Forte de São João Batista do Brum, em homenagem à capela de São João Batista no local. O forte desempenhou um papel crucial na defesa da Capitania de Pernambuco durante a dominação holandesa e a Restauração Portuguesa. Contava com 48 peças de artilharia e passou por várias reformas e reparos.\n
            Atualmente, o Forte do Brum funciona como um Museu Militar, dedicado ao Soldado Nordestino. O museu oferece exposições detalhadas sobre a vida militar e os conflitos que moldaram a história de Pernambuco, tornando o forte uma importante atração cultural e histórica em Recife.
            """,
            categories: ["História", "Arquitetura", "Museu"],
            coordinates: CLLocationCoordinate2D(latitude: -8.052824592956336,
                                                longitude: -34.87111613354183)
        ),
    ]
}
