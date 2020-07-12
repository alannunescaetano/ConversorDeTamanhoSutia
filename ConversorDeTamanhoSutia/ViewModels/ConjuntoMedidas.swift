//
//  ConjuntoMedidas.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 25/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//


import Foundation

class ConjuntoMedidas {
    
    var medidaBustoEmCm:Int?
    var medidaBustoEmIn:Int?
    var medidaEmbaixoDoBustoEmCm:Int?
    var medidaEmbaixoDoBustoEmIn:Int?
    var medidaFR:String?
    var medidaEU:String?
    var medidaUS:String?
    var medidaUK:String?
    
    init(medidaBustoEmCm: Int?, medidaBustoEmIn: Int?, medidaEmbaixoDoBustoEmCm: Int?, medidaEmbaixoDoBustoEmIn: Int?, medidaFR: String?, medidaEU: String?, medidaUS: String?, medidaUK: String?) {
        self.medidaBustoEmCm = medidaBustoEmCm
        self.medidaBustoEmIn = medidaBustoEmIn
        self.medidaEmbaixoDoBustoEmCm = medidaEmbaixoDoBustoEmCm
        self.medidaEmbaixoDoBustoEmIn = medidaEmbaixoDoBustoEmIn
        self.medidaFR = medidaFR
        self.medidaEU = medidaEU
        self.medidaUS = medidaUS
        self.medidaUK = medidaUK
    }
}

