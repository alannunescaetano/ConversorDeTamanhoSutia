//
//  File.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 25/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import Foundation

class ConversorMedidasSutia {
    
    private var _medidaCostasData : MedidaCostasData?
    var medidaCostasData : MedidaCostasData {
        get{
            if(_medidaCostasData == nil) {
                _medidaCostasData = MedidaCostasData()
            }
        
            return _medidaCostasData!;
        }
    }
    
    private var _medidaCostasData : MedidaCostasData?
    var medidaCostasData : MedidaCostasData {
        get{
            if(_medidaCostasData == nil) {
                _medidaCostasData = MedidaCostasData()
            }
        
            return _medidaCostasData!;
        }
    }
    
    static func converterMedidasCorporaisPara(tamanhoBusto:Int?, tamanhoEmbaixoDoBusto: Int?) -> ConjuntoMedidas {
        
        let medidaBustoEmCm = tamanhoBusto
        let medidaEmbaixoDoBustoEmCm = tamanhoEmbaixoDoBusto
        
        
        
        
        
        let medidaBustoEmIn = ConversorUnidadesMedida.converterCmParaPolegadas(cm: tamanhoBusto!)
        let medidaEmbaixoDoBustoEmIn = ConversorUnidadesMedida.converterCmParaPolegadas(cm: tamanhoEmbaixoDoBusto!)
        
        var medidaBR:String?
        var medidaFR:String?
        var medidaEU:String?
        var medidaUS:String?
        var medidaUK:String?
        
        var conjuntoMedidas = ConjuntoMedidas(medidaBustoEmCm: medidaBustoEmCm, medidaBustoEmIn: medidaBustoEmIn, medidaEmbaixoDoBustoEmCm: medidaEmbaixoDoBustoEmCm, medidaEmbaixoDoBustoEmIn: medidaEmbaixoDoBustoEmIn, medidaBR: medidaBR, medidaFR: medidaFR, medidaEU: medidaEU, medidaUS: medidaUS, medidaUK: medidaUK)
        
        return conjuntoMedidas
    }
    
    private static func
    
}
