//
//  ViewController.swift
//  WorkWithApiWeatherApp
//
//  Created by Georgios Loulakis on 21/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        temperatureLabel.text = "Temperature: \(RequestManager.temperature)"
    }


}

