//
//  AbaConversoesViewController.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 22/03/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import UIKit
class AbaConversoesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    let cellOrigemIdentifier = "cellOrigem"
    let segueSelecionarMedidaOrigemIdentifier = "segueSelecionarMedidaOrigem"
    
    @IBOutlet weak var tableViewMedidasOrigem: UITableView!
    @IBOutlet weak var tableViewHeight: NSLayoutConstraint!
    
    var origens = [PadraoMedida]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        origens.append(PadraoMedida(id: 1, descricao: "US / UK", medida: nil))
        origens.append(PadraoMedida(id: 2, descricao: "EU", medida: nil))
        origens.append(PadraoMedida(id: 3, descricao: "FR", medida: nil))
        origens.append(PadraoMedida(id: 4, descricao: "BR", medida: nil))
        
        tableViewMedidasOrigem.delegate = self
        tableViewMedidasOrigem.dataSource = self
        tableViewMedidasOrigem.alwaysBounceVertical = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableViewHeight.constant = CGFloat(50 * origens.count)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return origens.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let origem = origens[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier:cellOrigemIdentifier, for: indexPath)
        
        cell.textLabel?.text = origem.descricao
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == segueSelecionarMedidaOrigemIdentifier  {

            if let navController = segue.destination as? UINavigationController {

                if let nextViewController = navController.topViewController as? SelecionarMedidaOrigemViewController {
                    nextViewController
                }
            }
        }
    }
}
