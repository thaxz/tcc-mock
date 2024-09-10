//
//  InfoView.swift
//  tccv1
//
//  Created by thaxz on 09/09/24.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        ZStack(alignment: .leading){
            Color.theme.background
                .ignoresSafeArea()
            ScrollView(showsIndicators: false) {
                VStack(alignment: .leading, spacing: 20){
                    Text("O que é a\ngaleria?")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.black)
                    Text("A galeria é a seção do aplicativo que apresenta imagens e ilustrações que mostram como eram alguns dos principais locais e paisagens da cidade do Recife no século XIX. Essas representações históricas oferecem uma visão detalhada da arquitetura, das ruas e da vida cotidiana na época.")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundStyle(.black)
                    Text("De onde surgiram \nos desenhos?")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundStyle(.black)
                    Text("Todos os desenhos foram extraídos do Álbum de Pernambuco e seus Arrabaldes, uma obra publicada originalmente em 1873. \n\nEste álbum contém uma coleção de 50 ilustrações que retratam edifícios públicos, residências privadas, ruas comerciais e paisagens de vilas e fazendas da região. \n\nAs imagens foram criadas por renomados artistas e fotógrafos da época, como o alemão Albert Carls. \n\nElas capturam momentos únicos da história de Pernambuco, desde a arquitetura imponente de teatros e igrejas até a agitação das ruas e mercados. O álbum foi amplamente reconhecido por sua precisão e detalhamento, muitas vezes comparado a fotografias da época, e oferece um panorama riquíssimo da vida e dos costumes no Recife oitocentista.")
                        .font(.system(size: 16, weight: .regular))
                        .foregroundStyle(.black)
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: Components

struct CordelHelpView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
