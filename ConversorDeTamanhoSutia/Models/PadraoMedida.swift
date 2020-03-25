//
//  PadraoMedida.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 23/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import Foundation

class PadraoMedida {
    
    var id:Int?
    var descricao:String?
    var medida:Int?
    
    init(id: Int?, descricao: String?, medida: Int?) {
        self.id = id
        self.descricao = descricao
        self.medida = medida
    }
}
