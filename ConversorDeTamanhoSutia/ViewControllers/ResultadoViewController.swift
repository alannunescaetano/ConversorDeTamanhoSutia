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
        tableView.reloadData()
    }
    
    private func setup() {
        
    }
    
    //MARK: UITableViewController overrides
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: resultadoCellReuseIdentifier, for: indexPath)
        
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
        default:
            break
        }
        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
}
