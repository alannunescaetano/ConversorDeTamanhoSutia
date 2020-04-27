//
//  MedidaCostasData.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 25/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import Foundation

class MedidaCostasData {
    
    private var _medidasCostas: [MedidaCostasModel]
    
    init() {
        self._medidasCostas = [MedidaCostasModel]()
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 58, tamanhoFinal: 62, medidaFR: "75", medidaEU: "60", medidaUSUK: "28"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 63, tamanhoFinal: 67, medidaFR: "80", medidaEU: "65", medidaUSUK: "30"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 68, tamanhoFinal: 72, medidaFR: "85", medidaEU: "70", medidaUSUK: "32"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 73, tamanhoFinal: 77, medidaFR: "90", medidaEU: "75", medidaUSUK: "34"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 78, tamanhoFinal: 82, medidaFR: "95", medidaEU: "80", medidaUSUK: "36"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 83, tamanhoFinal: 87, medidaFR: "100", medidaEU: "85", medidaUSUK: "38"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 88, tamanhoFinal: 92, medidaFR: "105", medidaEU: "90", medidaUSUK: "40"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 93, tamanhoFinal: 97, medidaFR: "110", medidaEU: "95", medidaUSUK: "42"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 98, tamanhoFinal: 102, medidaFR: "115", medidaEU: "100", medidaUSUK: "44"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 103, tamanhoFinal: 107, medidaFR: "120", medidaEU: "105", medidaUSUK: "46"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 108, tamanhoFinal: 112, medidaFR: "125", medidaEU: "110", medidaUSUK: "48"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 113, tamanhoFinal: 117, medidaFR: "130", medidaEU: "115", medidaUSUK: "50"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 118, tamanhoFinal: 122, medidaFR: "135", medidaEU: "120", medidaUSUK: "52"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 123, tamanhoFinal: 127, medidaFR: "140", medidaEU: "125", medidaUSUK: "54"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 128, tamanhoFinal: 132, medidaFR: "145", medidaEU: "130", medidaUSUK: "56"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 133, tamanhoFinal: 142, medidaFR: "150", medidaEU: "135", medidaUSUK: "58"))
        self._medidasCostas.append(MedidaCostasModel(tamanhoInicial: 143, tamanhoFinal: 999, medidaFR: "155", medidaEU: "140", medidaUSUK: "60"))
    }
    
    func GetAll() -> Array<MedidaCostasModel> {
        return _medidasCostas;
    }
    
    func GetByTamanho(tamanhoEmCm:Int) -> MedidaCostasModel? {
        let filtrados = _medidasCostas.filter { $0.tamanhoInicial! <= tamanhoEmCm && $0.tamanhoFinal! >= tamanhoEmCm }
        if(filtrados.count > 0) {
            return filtrados[0]
        } else {
            return nil
        }
    }
    
    func GetByMedidaFR(medida:String) -> MedidaCostasModel? {
        let filtrados = _medidasCostas.filter { $0.medidaFR! == medida }
        if(filtrados.count > 0) {
            return filtrados[0]
        } else {
            return nil
        }
    }
    
    func GetByMedidaEU(medida:String) -> MedidaCostasModel? {
        let filtrados = _medidasCostas.filter { $0.medidaEU! == medida }
        if(filtrados.count > 0) {
            return filtrados[0]
        } else {
            return nil
        }
    }
    
    func GetByMedidaUSUK(medida:String) -> MedidaCostasModel? {
        let filtrados = _medidasCostas.filter { $0.medidaUSUK! == medida }
        if(filtrados.count > 0) {
            return filtrados[0]
        } else {
            return nil
        }
    }
}
