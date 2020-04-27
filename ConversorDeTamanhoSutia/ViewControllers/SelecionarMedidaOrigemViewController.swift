//
//  SelecionarMedidaOrigemViewController.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 23/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//


import UIKit
class SelecionarMedidaOrigemViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    private var _medidasCostas = Array<String>()
    private var _medidasBojo = Array<String>()
    private var _medidaCostasData = MedidaCostasData()
    private var _medidaBojoData = MedidaBojoData()
    
    var padraoDeMedidaSelecionado: PadraoMedida?
    
    @IBOutlet weak var buttonConverter: UIButton!
    @IBOutlet weak var pickerViewMedida: UIPickerView!
    @IBOutlet weak var textViewPadraoMedida: UITextView!
    
    @IBAction func converter(_ sender: Any) {
        
    }
    
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
    
    private func carregarMedidas() {
        for medida in _medidaCostasData.GetAll(){
            switch padraoDeMedidaSelecionado?.id {
            case 1: //EU
                _medidasCostas.append(medida.medidaEU!)
                break
            case 2: //FR
                _medidasCostas.append(medida.medidaFR!)
                break
            case 3: //UK
                _medidasCostas.append(medida.medidaUSUK!)
                break
            case 4: //US
                _medidasCostas.append(medida.medidaUSUK!)
                break
            default:
                break
            }
        }
        
        for medida in _medidaBojoData.GetAll(){
            switch padraoDeMedidaSelecionado?.id {
            case 1: //EU
                _medidasBojo.append(medida.medidaEU!)
                break
            case 2: //FR
                _medidasBojo.append(medida.medidaFR!)
                break
            case 3: //UK
                _medidasBojo.append(medida.medidaUK!)
                break
            case 4: //US
                _medidasBojo.append(medida.medidaUS!)
                break
            default:
                break
            }
        }
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
        if(component == 0){
            return _medidasCostas[row]
        }else{
            return _medidasBojo[row]
        }
    }
}
