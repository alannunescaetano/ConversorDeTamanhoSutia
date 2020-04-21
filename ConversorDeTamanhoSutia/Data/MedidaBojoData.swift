//
//  MedidaBojoData.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 25/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import Foundation

class MedidaBojoData {
    
    private var _medidasBojo: [MedidaBojoModel]
    
    init() {
        self._medidasBojo = [MedidaBojoModel]()
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 0, tamanhoFinal: 11, medidaFR: "AA", medidaUE: "AA", medidaUS: "AA", medidaUK: "AA"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 12, tamanhoFinal: 13, medidaFR: "A", medidaUE: "A", medidaUS: "A", medidaUK: "A"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 14, tamanhoFinal: 15, medidaFR: "B", medidaUE: "B", medidaUS: "B", medidaUK: "B"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 16, tamanhoFinal: 17, medidaFR: "C", medidaUE: "C", medidaUS: "C", medidaUK: "C"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 18, tamanhoFinal: 19, medidaFR: "D", medidaUE: "D", medidaUS: "D", medidaUK: "D"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 20, tamanhoFinal: 21, medidaFR: "E", medidaUE: "E", medidaUS: "DD", medidaUK: "DD"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 22, tamanhoFinal: 23, medidaFR: "F", medidaUE: "F", medidaUS: "DDD/F", medidaUK: "E"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 24, tamanhoFinal: 25, medidaFR: "G", medidaUE: "G", medidaUS: "G", medidaUK: "F"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 26, tamanhoFinal: 27, medidaFR: "H", medidaUE: "H", medidaUS: "H", medidaUK: "FF"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 28, tamanhoFinal: 29, medidaFR: "J", medidaUE: "J", medidaUS: "I", medidaUK: "G"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 30, tamanhoFinal: 31, medidaFR: "K", medidaUE: "K", medidaUS: "J", medidaUK: "GG"))
        self._medidasBojo.append(MedidaBojoModel(tamanhoInicial: 32, tamanhoFinal: 33, medidaFR: "L", medidaUE: "L", medidaUS: "K", medidaUK: "H"))

    }
    
    func GetAll() -> Array<MedidaBojoModel> {
        return _medidasBojo;
    }
    
    func GetByTamanho(tamanhoEmCm:Int) -> MedidaBojoModel? {
        let filtrados = _medidasBojo.filter { $0.tamanhoInicial! < tamanhoEmCm && $0.tamanhoFinal! > tamanhoEmCm }
        if(filtrados.count > 0) {
            return filtrados[0]
        }else{
            return nil
        }
    }
    
    func GetByMedidaFR(medida:String) -> MedidaBojoModel? {
        let filtrados = _medidasBojo.filter { $0.medidaFR! == medida }
        if(filtrados.count > 0) {
            return filtrados[0]
        } else {
            return nil
        }
    }
    
    func GetByMedidaUE(medida:String) -> MedidaBojoModel? {
        let filtrados = _medidasBojo.filter { $0.medidaUE! == medida }
        if(filtrados.count > 0) {
            return filtrados[0]
        } else {
            return nil
        }
    }
    
    func GetByMedidaUK(medida:String) -> MedidaBojoModel? {
        let filtrados = _medidasBojo.filter { $0.medidaUK! == medida }
        if(filtrados.count > 0) {
            return filtrados[0]
        } else {
            return nil
        }
    }
    
    func GetByMedidaUS(medida:String) -> MedidaBojoModel? {
        let filtrados = _medidasBojo.filter { $0.medidaUS! == medida }
        if(filtrados.count > 0) {
            return filtrados[0]
        } else {
            return nil
        }
    }
}
