//
//  Value.swift
//  Exericise_08
//
//  Created by 白石裕幸 on 2021/09/17.
//

import UIKit

class ValueConfigurar {
    private init() { }
    static let valueConfigurar = ValueConfigurar()
    private var val: Float?

    func getValue() -> String {
        if let val = val {
            return String(val)
        }
        return "0.0"
    }

    func setValue(value: Float) {
        val = value
    }
}
