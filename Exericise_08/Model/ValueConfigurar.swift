//
//  Value.swift
//  Exericise_08
//
//  Created by 白石裕幸 on 2021/09/17.
//

import UIKit
protocol Nameeee {
    func name(value: Float)
}

class ValueConfigurar {
    private init() { }
    static let valueConfigurar = ValueConfigurar()
    private var val: Float = 0.0
    func getValue() -> Float {
        return val
    }
    func setValue(value: Float) {
        val = value
    }
}

//   class test {
//    // 送信
//    func send(sendData: Any, postName: Notification.Name) {
//        NotificationCenter.default.post(name: postName, object: nil, userInfo: [postName: sendData])
//    }
//    // 受信
//    func receive( postName: Notification.Name) {
