//
//  MedidaBojoModel.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 25/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import Foundation

class MedidaBojoModel {
    
    var tamanhoInicial:Int?
    var tamanhoFinal:Int?
    var medidaFR:String?
    var medidaEU:String?
    var medidaUK:String?
    var medidaUS:String?
    
    init(tamanhoInicial:Int?, tamanhoFinal:Int?, medidaFR:String?, medidaEU:String?, medidaUS:String?, medidaUK:String?) {
        self.tamanhoInicial = tamanhoInicial
        self.tamanhoFinal = tamanhoFinal
        self.medidaFR = medidaFR
        self.medidaEU = medidaEU
        self.medidaUS = medidaUS
        self.medidaUK = medidaUK
    }
}
