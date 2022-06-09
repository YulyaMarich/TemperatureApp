//
//  ViewController.swift
//  Temperature
//
//  Created by Julia on 23.05.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var fahrenheitLabel: UILabel!
    @IBOutlet var temperatureSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialSetUp()
    }

    @IBAction func changeTemperature() {
        celsiusLabel.text = "\(String(format: "%.0f", temperatureSlider.value))ºC"
        fahrenheitLabel.text = "\(String(format: "%.0f", temperatureSlider.value * 1.8 + 32 ))ºF"
    }
    
    func initialSetUp() {
        temperatureSlider.maximumValue = 100
        temperatureSlider.minimumValue = 0
        temperatureSlider.value = 0
    }
}

