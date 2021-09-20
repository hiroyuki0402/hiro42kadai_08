//
//  Exericise_08Tests.swift
//  Exericise_08Tests
//
//  Created by 白石裕幸 on 2021/09/20.
//

import XCTest
@testable import Exericise_08

class Exericise08Tests: XCTestCase {
    func testSetValueAndGetValue() throws {
        let shared = ValueConfigurar.valueConfigurar
        let slider = UISlider()
        slider.maximumValue = 100.0
        slider.minimumValue = 0.0
        slider.value = 100.0
        let sliderVal = slider.value
        // Set
        shared.setValue(value: sliderVal)
        // Get
        let get = ValueConfigurar.valueConfigurar.getValue()
        XCTAssertEqual(get, "100.0")
    }
}
