//
//  ViewController.swift
//  APP11
//
//  Created by Jean Lui Ferrer on 7/05/19.
//  Copyright © 2019 Tecsup. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row]
    }
    
    let list = Unit.todosCasos()

    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        picker.dataSource = self
    }
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var entrada: UITextField!
    @IBOutlet weak var salida: UITextField!
    
    @IBAction func convertir(_ sender: AnyObject) {
        
        let fromUnitIdx = picker.selectedRow(inComponent: 0)
        let toUnitIdx = picker.selectedRow(inComponent: 1)
        
        let fromUnit = Unit.deString(list[fromUnitIdx])!
        let toUnit = Unit.deString(list[toUnitIdx])!
        
        if let inputText = entrada.text {
            if !inputText.isEmpty {
                let inputNum = Double(inputText)!
                let outputNum = fromUnit.convertirTo(unit: toUnit, value: inputNum)
                salida.text = String(outputNum)
            }

    }
}

}
