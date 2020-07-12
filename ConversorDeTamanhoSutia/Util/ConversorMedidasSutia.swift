//
//  File.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 25/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import Foundation

class ConversorMedidasSutia {
    
    private static var _medidaCostasData : MedidaCostasData?
    static var medidaCostasData : MedidaCostasData {
        get{
            if(_medidaCostasData == nil) {
                _medidaCostasData = MedidaCostasData()
            }
        
            return _medidaCostasData!;
        }
    }
    
    private static var _medidaBojoData : MedidaBojoData?
    static var medidaBojoData : MedidaBojoData {
        get{
            if(_medidaBojoData == nil) {
                _medidaBojoData = MedidaBojoData()
            }
        
            return _medidaBojoData!;
        }
    }
    
    static func converterMedidasCorporaisPara(tamanhoBusto: Int, tamanhoEmbaixoDoBusto: Int) -> ConjuntoMedidas {
        
        let medidaBustoEmCm = tamanhoBusto
        let medidaEmbaixoDoBustoEmCm = tamanhoEmbaixoDoBusto
        
        let medidaBustoEmIn = ConversorUnidadesMedida.converterCmParaPolegadas(cm: tamanhoBusto)
        let medidaEmbaixoDoBustoEmIn = ConversorUnidadesMedida.converterCmParaPolegadas(cm: tamanhoEmbaixoDoBusto)
        
        let medidaCostasTamanho = medidaCostasData.GetByTamanho(tamanhoEmCm: tamanhoEmbaixoDoBusto)
        let medidaBojoTamanho = medidaBojoData.GetByTamanho(tamanhoEmCm: tamanhoBusto)
        
        let conjuntoMedidas = criarConjuntoDeMedidas(medidaBustoEmCm: medidaBustoEmCm, medidaBustoEmIn: medidaBustoEmIn, medidaEmbaixoDoBustoEmCm: medidaEmbaixoDoBustoEmCm, medidaEmbaixoDoBustoEmIn: medidaEmbaixoDoBustoEmIn, medidaCostasTamanho: medidaCostasTamanho, medidaBojoTamanho:medidaBojoTamanho)
        
        return conjuntoMedidas
    }
    
    static func converterMedidaFR(medidaCostasFR: String?, medidaBojoFR: String?) -> ConjuntoMedidas {
        
        let medidaCostasTamanho = medidaCostasData.GetByMedidaFR(medida: medidaCostasFR!)
        let medidaBojoTamanho = medidaBojoData.GetByMedidaFR(medida: medidaCostasFR!)
        
        let conjuntoMedidas = criarConjuntoDeMedidas(medidaBustoEmCm: nil, medidaBustoEmIn: nil, medidaEmbaixoDoBustoEmCm: nil, medidaEmbaixoDoBustoEmIn: nil, medidaCostasTamanho: medidaCostasTamanho, medidaBojoTamanho:medidaBojoTamanho)
        
        return conjuntoMedidas
    }
    
    static func converterMedidaEU(medidaCostasEU: String?, medidaBojoEU: String?) -> ConjuntoMedidas {
        
        let medidaCostasTamanho = medidaCostasData.GetByMedidaEU(medida: medidaCostasEU!)
        let medidaBojoTamanho = medidaBojoData.GetByMedidaUE(medida: medidaBojoEU!)
        
        let conjuntoMedidas = criarConjuntoDeMedidas(medidaBustoEmCm: nil, medidaBustoEmIn: nil, medidaEmbaixoDoBustoEmCm: nil, medidaEmbaixoDoBustoEmIn: nil, medidaCostasTamanho: medidaCostasTamanho, medidaBojoTamanho:medidaBojoTamanho)
        
        return conjuntoMedidas
    }
    
    static func converterMedidaUK(medidaCostasUK: String?, medidaBojoUK: String?) -> ConjuntoMedidas {
        
        let medidaCostasTamanho = medidaCostasData.GetByMedidaUSUK(medida: medidaCostasUK!)
        let medidaBojoTamanho = medidaBojoData.GetByMedidaUK(medida: medidaBojoUK!)
        
        let conjuntoMedidas = criarConjuntoDeMedidas(medidaBustoEmCm: nil, medidaBustoEmIn: nil, medidaEmbaixoDoBustoEmCm: nil, medidaEmbaixoDoBustoEmIn: nil, medidaCostasTamanho: medidaCostasTamanho, medidaBojoTamanho:medidaBojoTamanho)
        
        return conjuntoMedidas
    }
    
    static func converterMedidaUS(medidaCostasUS: String?, medidaBojoUS: String?) -> ConjuntoMedidas {
        
        let medidaCostasTamanho = medidaCostasData.GetByMedidaUSUK(medida: medidaCostasUS!)
        let medidaBojoTamanho = medidaBojoData.GetByMedidaUS(medida: medidaBojoUS!)
        
        let conjuntoMedidas = criarConjuntoDeMedidas(medidaBustoEmCm: nil, medidaBustoEmIn: nil, medidaEmbaixoDoBustoEmCm: nil, medidaEmbaixoDoBustoEmIn: nil, medidaCostasTamanho: medidaCostasTamanho, medidaBojoTamanho:medidaBojoTamanho)
        
        return conjuntoMedidas
    }
    
    private static func criarConjuntoDeMedidas(medidaBustoEmCm: Int?, medidaBustoEmIn: Int?, medidaEmbaixoDoBustoEmCm: Int?, medidaEmbaixoDoBustoEmIn: Int?, medidaCostasTamanho:MedidaCostasModel?, medidaBojoTamanho:MedidaBojoModel?) -> ConjuntoMedidas {
        let medidaFR = "\(medidaCostasTamanho?.medidaFR ?? "")\(medidaBojoTamanho?.medidaFR ?? "")"
        let medidaEU = "\(medidaCostasTamanho?.medidaEU ?? "")\(medidaBojoTamanho?.medidaEU ?? "")"
        let medidaUS = "\(medidaCostasTamanho?.medidaUSUK ?? "")\(medidaBojoTamanho?.medidaUS ?? "")"
        let medidaUK = "\(medidaCostasTamanho?.medidaUSUK ?? "")\(medidaBojoTamanho?.medidaUK ?? "")"
    
        return ConjuntoMedidas(medidaBustoEmCm: medidaBustoEmCm, medidaBustoEmIn: medidaBustoEmIn, medidaEmbaixoDoBustoEmCm: medidaEmbaixoDoBustoEmCm, medidaEmbaixoDoBustoEmIn: medidaEmbaixoDoBustoEmIn, medidaFR: medidaFR, medidaEU: medidaEU, medidaUS: medidaUS, medidaUK: medidaUK)
    }
}
