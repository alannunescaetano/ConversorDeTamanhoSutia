//
//  ConversorUnidadesMedida.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 25/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import Foundation
import UIKit

class ConversorUnidadesMedida {
    
    static func converterPolegadasParaCm(polegadas:Int) -> Int {
        
        return Int(Measurement(value: Double(polegadas), unit: UnitLength.inches).converted(to: UnitLength.centimeters).value)
    }
    
    static func converterCmParaPolegadas(cm:Int) -> Int {
        
        return Int(Measurement(value: Double(cm), unit: UnitLength.centimeters).converted(to: UnitLength.inches).value)
    }
}
