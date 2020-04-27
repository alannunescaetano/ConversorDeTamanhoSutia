//
//  MedidaCostasModel.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 25/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import Foundation

class MedidaCostasModel {
    
    var tamanhoInicial:Int?
    var tamanhoFinal:Int?
    var medidaFR:String?
    var medidaEU:String?
    var medidaUSUK:String?
    
    init(tamanhoInicial:Int?, tamanhoFinal:Int?, medidaFR:String?, medidaEU:String?, medidaUSUK:String?) {
        self.tamanhoInicial = tamanhoInicial
        self.tamanhoFinal = tamanhoFinal
        self.medidaFR = medidaFR
        self.medidaEU = medidaEU
        self.medidaUSUK = medidaUSUK
    }
}
