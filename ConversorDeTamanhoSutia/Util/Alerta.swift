//
//  Alerta.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 19/07/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import UIKit

class Alerta {
    static func mostrarAlerta(comMensagem mensagem: String?, comTitulo titulo: String?, apresentarEm viewController: UIViewController, sendoErro erro: Bool = false, handler: (() -> Void)? = nil) {
        var alertStyle: UIAlertAction.Style = .default
        if erro {
            alertStyle = .destructive
        }
        
        let alert = UIAlertController(title: titulo ?? "Alerta", message: mensagem ?? "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: alertStyle, handler: { action in
            if let handler = handler {
                handler()
            }
        }))
        viewController.present(alert, animated: true, completion: nil)
    }
}
