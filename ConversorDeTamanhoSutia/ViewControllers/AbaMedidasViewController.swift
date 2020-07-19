//
//  ViewController.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 26/02/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import UIKit

class AbaMedidasViewController: UIViewController {

    private let segmentedControlUnidadesMedidaÍndiceCentimetros = 0
    private let segmentedControlUnidadesMedidaÍndicePolegadas = 1
    
    private let segueResultadoIdentifier = "segueResulado"
    
    @IBOutlet weak var buttonConverter: UIButton!
    @IBOutlet weak var segmentedControlUnidadesMedida: UISegmentedControl!
    @IBOutlet weak var textFieldMedidaBusto: UITextField!
    @IBOutlet weak var textFieldMedidaEmbaixoBusto: UITextField!
    
    override func viewWillAppear(_ animated: Bool) {
        buttonConverter.layer.cornerRadius = 10
        buttonConverter.clipsToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarTeclado()
        configurarTelaPelaUnidadeDeMedida()
    }
    
    private func configurarTeclado() {
        textFieldMedidaBusto.keyboardType = .numberPad
        textFieldMedidaEmbaixoBusto.keyboardType = .numberPad
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }

    @IBAction func alterarUnidadeDeMedida(_ sender: Any) {
        configurarTelaPelaUnidadeDeMedida()
    }
    
    private func converterMedidas() -> ConjuntoMedidas? {
        if let medidaBusto = Int(textFieldMedidaBusto.text ?? ""), let medidaEmbaixoBusto = Int(textFieldMedidaEmbaixoBusto.text ?? "") {
            return ConversorMedidasSutia.converterMedidasCorporaisPara(tamanhoBusto: medidaBusto, tamanhoEmbaixoDoBusto: medidaEmbaixoBusto)
        } else {
            return nil
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == segueResultadoIdentifier {
            if validarMedidasParaConversao(medidaBustoTexto: textFieldMedidaBusto.text, medidaEmbaixoBustoTexto: textFieldMedidaEmbaixoBusto.text) {
                return true
            } else {
                Alerta.mostrarAlerta(comMensagem: "Essas medidas não são válidas.", comTitulo: "Medidas erradas", apresentarEm: self, sendoErro: true, handler: nil)
                return false
            }
        }
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueResultadoIdentifier, let nextViewController = segue.destination as? ResultadoViewController {
            nextViewController.conjuntoMedidas = converterMedidas()
        }
    }
    
    private func validarMedidasParaConversao(medidaBustoTexto: String?, medidaEmbaixoBustoTexto: String?) -> Bool {
        if let _ = Int(medidaBustoTexto ?? ""), let _ = Int(medidaEmbaixoBustoTexto ?? "") {
            return true
        }
        
        return false
    }
    
    private func configurarTelaPelaUnidadeDeMedida() {
        switch segmentedControlUnidadesMedida.selectedSegmentIndex {
        case segmentedControlUnidadesMedidaÍndiceCentimetros:
            textFieldMedidaBusto.placeholder = "Medida do busto (em cm)"
            textFieldMedidaEmbaixoBusto.placeholder = "Medida embaixo do busto (em cm)"
        case segmentedControlUnidadesMedidaÍndicePolegadas:
            textFieldMedidaBusto.placeholder = "Medida do busto (em polegadas)"
            textFieldMedidaEmbaixoBusto.placeholder = "Medida embaixo do busto (em polegadas)"
        default:
            break
        }
    }
}

