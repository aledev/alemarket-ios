//
//  ProductDescriptionModel.swift
//  alemarket
//
//  Created by Alejandro Aliaga on 8/9/23.
//

import Foundation

struct ProductDescriptionModel: Codable {
    let text: String
    let plainText: String
    let lastUpdated: String
    let dateCreated: String

    // MARK: - Coding Keys
    enum CodingKeys: String, CodingKey {
        case text
        case plainText = "plain_text"
        case lastUpdated = "last_updated"
        case dateCreated = "date_created"
    }
}

// MARK: - Equatable Implementation
extension ProductDescriptionModel: Equatable {
    
    static func == (lhs: ProductDescriptionModel, rhs: ProductDescriptionModel) -> Bool {
        lhs.text == rhs.text &&
        lhs.plainText == rhs.plainText &&
        lhs.lastUpdated == rhs.lastUpdated &&
        lhs.dateCreated == rhs.dateCreated
    }
    
}

// MARK: - Default Instance
extension ProductDescriptionModel {
    
    static var `default`: ProductDescriptionModel {
        ProductDescriptionModel(
            text: "",
            plainText: """
IPHONE 12 64 GB\n\nINCREIBLE TELEFONO, PRACTICAMENTE NUEVO, ESTETICA Y FUNCIONALMENTE IMPECABLE,  CUENTA CON GARANTIA OFICIAL APPLE
HASTA EL 25/09/2023 Y SU CONDICION DE BATERIA ES 100%\n\nFOTOS REALES DEL PRODUCTO\n\nINCLUYE CABLE LIGHTNING, CARGADOR Y FUNDA DE
REGALO + ENVIO GRATIS A TODO EL PAIS.\n\nQUERES COMPRAR SEGURO?\n\nESTAS EN EL LUGAR CORRECTO! SOMOS MERCADO LIDER Y LLEVAMOS 8 AÑOS
TRABAJANDO EN MERCADO LIBRE.\n\nCUALQUIER DUDA O CONSULTA ESTAMOS A DISPOSICION, CONTAMOS CON PROFESIONALES EN EL TEMA DISPUESTOS
AYUDARTE.\n\nBuscas tener una computadora en tus manos?\n•Elegí Apple•\nEl rendimiento y soporte en sus equipos para que esto
perdure en el tiempo no se compara con ningún otra marca\nLo que tenés que saber de este producto:\n\n-Pantalla Super Retina XDR de
6.1 pulgadas. (1)\n-Ceramic Shield, más resistente que cualquier vidrio de smartphone.\n-Chip A14 Bionic, el más rápido en un
smartphone.\n-Sistema avanzado de dos cámaras de 12 MP (ultra gran angular y gran angular), modo Noche, Deep Fusion, HDR Inteligente
3 y grabación de video 4K HDR en Dolby Vision.\n-Cámara frontal TrueDepth de 12 MP con modo Noche y grabación de video 4K HDR en
Dolby Vision.\n-Resistencia al agua IP68, la mejor de la industria. (4)\n-Compatibilidad con accesorios MagSafe, que se acoplan
fácilmente a tu iPhone y permiten una carga inalámbrica más rápida. (3)\n-iOS 14 con widgets rediseñados en la pantalla de inicio,
nueva Biblioteca de Apps, App Clips, y mucho más.
""",
            lastUpdated: "2023-06-06T20:58:31.354Z",
            dateCreated: "2023-06-06T20:58:31.354Z"
        )        
    }
    
}
