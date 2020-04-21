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
    var medidaUE:String?
    var medidaUK:String?
    var medidaUS:String?
    
    init(tamanhoInicial:Int?, tamanhoFinal:Int?, medidaFR:String?, medidaUE:String?, medidaUS:String?, medidaUK:String?) {
        self.tamanhoInicial = tamanhoInicial
        self.tamanhoFinal = tamanhoFinal
        self.medidaFR = medidaFR
        self.medidaUE = medidaUE
        self.medidaUS = medidaUS
        self.medidaUK = medidaUK
    }
}
