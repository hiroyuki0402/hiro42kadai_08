//
//  SliderViewController.swift
//  Exericise_08
//
//  Created by 白石裕幸 on 2021/09/17.
//

import UIKit

class SliderViewController: UIViewController {
    @IBOutlet private var sliderValLabel: UILabel!
    @IBOutlet private var sliderOutlet: UISlider!
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let value = ValueConfigurar.valueConfigurar.getValue()
        sliderOutlet.value =  Float(value) ?? 0.0
        sliderValLabel.text = value
    }

    @IBAction private func changeTheSliderValue(_ sender: UISlider) {
        ValueConfigurar.valueConfigurar.setValue(value: sender.value)
        sliderValLabel.text = String(sender.value)
    }
}
