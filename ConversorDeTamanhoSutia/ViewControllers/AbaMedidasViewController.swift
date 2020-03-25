//
//  ViewController.swift
//  ConversorDeTamanhoSutia
//
//  Created by Alan Caetano on 26/02/2020.
//  Copyright © 2020 Caetano´s Apps. All rights reserved.
//

import UIKit

class AbaMedidasViewController: UIViewController {

    
    @IBOutlet weak var buttonConverter: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        buttonConverter.layer.cornerRadius = 10
        buttonConverter.clipsToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

