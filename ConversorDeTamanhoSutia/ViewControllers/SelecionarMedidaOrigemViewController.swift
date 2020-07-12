//
//  SelecionarMedidaOrigemViewController.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 23/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//


import UIKit

class SelecionarMedidaOrigemViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    private let segueResultadoIdentifier = "segueResulado"
    private let padraoEU = 1
    private let padraoFR = 2
    private let padraoUK = 3
    private let padraoUS = 4
    
    private var _medidasCostas = Array<String>()
    private var _medidasBojo = Array<String>()
    private var _medidaCostasData = MedidaCostasData()
    private var _medidaBojoData = MedidaBojoData()
    
    var padraoDeMedidaSelecionado: PadraoMedida?
    
    @IBOutlet weak var buttonConverter: UIButton!
    @IBOutlet weak var pickerViewMedida: UIPickerView!
    @IBOutlet weak var textViewPadraoMedida: UITextView!
    
    override func viewWillAppear(_ animated: Bool) {
        buttonConverter.layer.cornerRadius = 10
        buttonConverter.clipsToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textViewPadraoMedida.text = padraoDeMedidaSelecionado?.descricao
        carregarMedidas()
        setPickerView()
    }
    
    // MARK:  UIPickerView
    
    private func setPickerView() {
        pickerViewMedida.dataSource = self
        pickerViewMedida.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0){
            return _medidasCostas.count
        }else{
            return _medidasBojo.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0) {
            return _medidasCostas[row]
        } else {
            return _medidasBojo[row]
        }
    }
    
    // MARK:  Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueResultadoIdentifier, let nextViewController = segue.destination as? ResultadoViewController {
            nextViewController.conjuntoMedidas = converterMedidas()
            
        }
    }
    
    // MARK:  Private methods
    
    private func converterMedidas() -> ConjuntoMedidas? {
        let medidaCostasSelecionada = _medidasCostas[pickerViewMedida.selectedRow(inComponent: 0)]
        let medidaBojoSelecionada = _medidasBojo[pickerViewMedida.selectedRow(inComponent: 1)]
        
        switch padraoDeMedidaSelecionado?.id {
            case padraoEU:
                return ConversorMedidasSutia.converterMedidaEU(medidaCostasEU: medidaCostasSelecionada, medidaBojoEU: medidaBojoSelecionada)
            case padraoFR:
                return ConversorMedidasSutia.converterMedidaFR(medidaCostasFR: medidaCostasSelecionada, medidaBojoFR: medidaBojoSelecionada)
            case padraoUK:
                return ConversorMedidasSutia.converterMedidaUK(medidaCostasUK: medidaCostasSelecionada, medidaBojoUK: medidaBojoSelecionada)
            case padraoUS:
                return ConversorMedidasSutia.converterMedidaUS(medidaCostasUS: medidaCostasSelecionada, medidaBojoUS: medidaBojoSelecionada)
        default:
            return nil
        }
    }
    
    private func carregarMedidas() {
        for medida in _medidaCostasData.GetAll(){
            switch padraoDeMedidaSelecionado?.id {
            case padraoEU:
                _medidasCostas.append(medida.medidaEU ?? "")
                break
            case padraoFR:
                _medidasCostas.append(medida.medidaFR ?? "")
                break
            case padraoUK:
                _medidasCostas.append(medida.medidaUSUK ?? "")
                break
            case padraoUS:
                _medidasCostas.append(medida.medidaUSUK ?? "")
                break
            default:
                break
            }
        }
        
        for medida in _medidaBojoData.GetAll(){
            switch padraoDeMedidaSelecionado?.id {
            case padraoEU:
                _medidasBojo.append(medida.medidaEU ?? "")
                break
            case padraoFR:
                _medidasBojo.append(medida.medidaFR ?? "")
                break
            case padraoUK:
                _medidasBojo.append(medida.medidaUK ?? "")
                break
            case padraoEU:
                _medidasBojo.append(medida.medidaUS ?? "")
                break
            default:
                break
            }
        }
    }
}
