//
//  SliderViewController.swift
//  Exericise_08
//
//  Created by 白石裕幸 on 2021/09/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private var sliderValLabel: UILabel!
    @IBOutlet private var sliderOutlet: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let value = ValueConfigurar.valueConfigurar.getValue()
        sliderOutlet.value =  value
        sliderValLabel.text = String(value)
    }

    @IBAction private func changeTheSliderValue(_ sender: UISlider) {
        // guard let data = notification?.userInfo?["name"]
        ValueConfigurar.valueConfigurar.setValue(value: sender.value)
        sliderValLabel.text = String(sender.value)
    }
}
