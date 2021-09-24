//
//  SecondViewController.swift
//  Exericise_08
//
//  Created by 白石裕幸 on 2021/09/23.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet private var sliderValLabel: UILabel!
    @IBOutlet private var slider: UISlider!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let value = ValueDataStore.shared.getValue()
        slider.value = value
        sliderValLabel.text = String(value)
    }

    @IBAction private func changeTheSliderValue(_ sender: UISlider) {
        ValueDataStore.shared.setValue(value: sender.value)
        sliderValLabel.text = String(sender.value)
    }
}
