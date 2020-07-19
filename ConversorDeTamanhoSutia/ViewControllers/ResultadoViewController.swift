//
//  ResultadoViewController.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 12/07/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import UIKit

class ResultadoViewController: UITableViewController {
    
    let resultadoCellReuseIdentifier = "medidaCell"
    
    var conjuntoMedidas: ConjuntoMedidas?
    
    //MARK: setup
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        tableView.allowsSelection = false
        tableView.dragInteractionEnabled = false
        tableView.isScrollEnabled = false
        
        let footerView = UIView()
        footerView.backgroundColor = .systemGroupedBackground
        tableView.tableFooterView = footerView
    }
    
    //MARK: UITableViewController overrides
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: resultadoCellReuseIdentifier, for: indexPath)
        cell.isUserInteractionEnabled = false
        cell.textLabel?.text = ""
        cell.detailTextLabel?.text = ""
        
        switch(indexPath.section, indexPath.row) {
        case (0,0):
            cell.textLabel?.text = "EU"
            cell.detailTextLabel?.text = String(conjuntoMedidas?.medidaEU ?? "")
        case (0,1):
            cell.textLabel?.text = "FR"
            cell.detailTextLabel?.text = String(conjuntoMedidas?.medidaFR ?? "")
        case (0,2):
            cell.textLabel?.text = "UK"
            cell.detailTextLabel?.text = String(conjuntoMedidas?.medidaUK ?? "")
        case (0,3):
            cell.textLabel?.text = "US"
            cell.detailTextLabel?.text = String(conjuntoMedidas?.medidaUS ?? "")
        case (1,0):
            cell.textLabel?.text = "Converter outro tamanho"
            cell.textLabel?.isUserInteractionEnabled = false
            cell.textLabel?.textColor = .purple
            cell.detailTextLabel?.text = ""
            cell.accessoryType = .disclosureIndicator
        default:
            break
        }
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 4
        case 1:
            return 1
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        switch section {
        case 0:
            return 60
        case 1:
            return 100
        default:
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Medidas ..."
        default:
            return ""
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 1 {
            self.dismiss(animated: true, completion: nil)
        }
    }
}
