//
//  GalleryViewModel.swift
//  tccv1
//
//  Created by thaxz on 05/09/24.
//

import Foundation
import SwiftUI

final class GalleryViewModel: ObservableObject {
    
    @Published var photos: [GalleryPhoto] = []
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    init(){
        self.photos = [
            GalleryPhoto(imageName: "1marcoLibrary",
                         title: "Rua 1 de Março",
                         subtitle: "Registro da movimentada rua no passado."),
            GalleryPhoto(imageName: "apipucosLibrary",
                         title: "Vista de Apipucos",
                         subtitle: "A calma paisagem de Apipucos."),
            GalleryPhoto(imageName: "baraoVitoriaLibrary",
                         title: "Barão da Vitória",
                         subtitle: "Retrato da praça Barão da Vitória."),
            GalleryPhoto(imageName: "caesRamosLibrary",
                         title: "Cais do Ramos",
                         subtitle: "A antiga área portuária do Recife."),
            GalleryPhoto(imageName: "cidadecaboLibrary",
                         title: "Cidade do Cabo",
                         subtitle: "Vista aérea da Cidade do Cabo."),
            GalleryPhoto(imageName: "cidadeEscadaLibrary",
                         title: "Cidade da Escada",
                         subtitle: "Panorama da cidade no passado."),
            GalleryPhoto(imageName: "entradaBarraLibrary",
                         title: "Entrada da Barra",
                         subtitle: "Imagem da entrada da Barra de Pernambuco."),
            GalleryPhoto(imageName: "estacaoCaboLibrary",
                         title: "Estação do Cabo",
                         subtitle: "A movimentada estação de trem."),
            GalleryPhoto(imageName: "estacaoCincoPontasLibrary",
                         title: "Estação das Cinco Pontas",
                         subtitle: "A estação próxima ao Forte das Cinco Pontas."),
            GalleryPhoto(imageName: "hospitalPortuguesLibrary",
                         title: "Hospital Português",
                         subtitle: "Fachada do Hospital Português."),
            GalleryPhoto(imageName: "igrejaPenhaLibrary",
                         title: "Igreja da Penha",
                         subtitle: "Igreja da Penha vista do mercado público."),
            GalleryPhoto(imageName: "jaqueiraLibrary",
                         title: "Parque da Jaqueira",
                         subtitle: "Vista do Parque da Jaqueira."),
            GalleryPhoto(imageName: "largoCorpoSantoLibrary",
                         title: "Largo do Corpo Santo",
                         subtitle: "Praça histórica retratada no passado."),
            GalleryPhoto(imageName: "largoLlivramentoLibrary",
                         title: "Largo do Livramento",
                         subtitle: "Registro do Largo do Livramento."),
            GalleryPhoto(imageName: "matrizBoaVistaLibrary",
                         title: "Matriz da Boa Vista",
                         subtitle: "A matriz no coração da Boa Vista."),
            GalleryPhoto(imageName: "museuDoEstadoLibrary",
                         title: "Museu do Estado",
                         subtitle: "Fachada do Museu do Estado."),
            GalleryPhoto(imageName: "olindaLibrary",
                         title: "Vista de Olinda",
                         subtitle: "A bela Olinda no passado."),
            GalleryPhoto(imageName: "panoramaArsenalLibrary",
                         title: "Panorama do Arsenal",
                         subtitle: "O Arsenal da Marinha."),
            GalleryPhoto(imageName: "passageMagdalenaLibrary",
                         title: "Passagem da Magdalena",
                         subtitle: "Rua tradicional capturada no passado."),
            GalleryPhoto(imageName: "pateoCarmoLibrary",
                         title: "Pateo do Carmo",
                         subtitle: "Vista do Pateo do Carmo."),
            GalleryPhoto(imageName: "pateoTercoLibrary",
                         title: "Pateo do Terço",
                         subtitle: "A famosa procissão do Terço."),
            GalleryPhoto(imageName: "ponteBoaVistaLibrary",
                         title: "Ponte da Boa Vista",
                         subtitle: "Ponte icônica ligando o centro ao bairro Boa Vista."),
            GalleryPhoto(imageName: "ponteIzabelLibrary",
                         title: "Ponte Santa Izabel",
                         subtitle: "Ponte sobre o rio Capibaribe."),
            GalleryPhoto(imageName: "ponteMadalenaLibrary",
                         title: "Ponte Madalena",
                         subtitle: "Ponte histórica no bairro Madalena."),
            GalleryPhoto(imageName: "ponteRecifeLibrary",
                         title: "Ponte do Recife",
                         subtitle: "Uma das primeiras pontes do Recife."),
            GalleryPhoto(imageName: "portoPernambucoLibrary",
                         title: "Porto de Pernambuco",
                         subtitle: "O movimentado Porto de Pernambuco."),
            GalleryPhoto(imageName: "pracaBoaVistaLibrary",
                         title: "Praça da Boa Vista",
                         subtitle: "A Praça da Boa Vista em dia ensolarado."),
            GalleryPhoto(imageName: "recifeArsenalLibrary",
                         title: "Recife Arsenal",
                         subtitle: "Panorama do Arsenal da Marinha."),
            GalleryPhoto(imageName: "recifeLibrary",
                         title: "Vista do Recife",
                         subtitle: "A antiga paisagem do Recife."),
            GalleryPhoto(imageName: "ruaAuroraLibrary",
                         title: "Rua da Aurora",
                         subtitle: "A icônica Rua da Aurora ao pôr do sol."),
            GalleryPhoto(imageName: "ruaBomJesusLibrary",
                         title: "Rua do Bom Jesus",
                         subtitle: "A famosa Rua do Bom Jesus no Recife Antigo."),
            GalleryPhoto(imageName: "ruaHospicioLibrary",
                         title: "Rua do Hospício",
                         subtitle: "Movimentação na Rua do Hospício."),
            GalleryPhoto(imageName: "ruaImperadorLibrary",
                         title: "Rua do Imperador",
                         subtitle: "A Rua do Imperador retratada no passado."),
            GalleryPhoto(imageName: "ruaMarquesOlindaLibrary",
                         title: "Rua Marquês de Olinda",
                         subtitle: "A Rua Marquês de Olinda em um dia comum."),
            GalleryPhoto(imageName: "sanJoseLibrary",
                         title: "Vista de São Jose",
                         subtitle: "O bairro de São José no passado."),
            GalleryPhoto(imageName: "santoAmaroLibrary",
                         title: "Vista de Santo Amaro",
                         subtitle: "O tradicional bairro de Santo Amaro."),
            GalleryPhoto(imageName: "soledadeLibrary",
                         title: "Vista Soledade",
                         subtitle: "Panorama do bairro da Soledade."),
            GalleryPhoto(imageName: "staIzabelLibrary",
                         title: "Vista Santa Izabel",
                         subtitle: "A icônica ponte Santa Izabel."),
            GalleryPhoto(imageName: "vistaObservatorioLibrary",
                         title: "Vista do Observatório",
                         subtitle: "O observatório astronômico do Recife."),
        ]
    }
}
