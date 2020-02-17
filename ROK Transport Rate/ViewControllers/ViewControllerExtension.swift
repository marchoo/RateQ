//
//  ViewControllerExtension.swift
//  ROK Transport Rate
//
//  Created by Mingu Chu on 12/30/19.
//  Copyright © 2019 chingoo. All rights reserved.
//

import UIKit

extension ViewController {
    
    private func getRateForZone(calculate withFreight: Freight, calculate withZone: Zone) -> Dictionary<String, Double> {
        switch (withFreight, withZone) {
            
        case (.Air, .A):
            return ["MIN":20.50, "100":0.0652, "1000":0.0538, "2000":0.0403, "3000":0.0368, "5000":0.0288, "10000":0.0250, "MAX":250]
        case (.Air, .B):
            return ["MIN":35.00, "100":0.0730, "1000":0.0587, "2000":0.0450, "3000":0.0405, "5000":0.0315, "10000":0.0260, "MAX":260]
        case (.Air, .C):
            return ["MIN":45.00, "100":0.0768, "1000":0.0625, "2000":0.0498, "3000":0.0445, "5000":0.0385, "10000":0.0270, "MAX":270]
        case (.Air, .D):
            return ["MIN":55.00, "100":0.0872, "1000":0.0705, "2000":0.0598, "3000":0.0555, "5000":0.0485, "10000":0.0280, "MAX":280]
        case (.Air, .E):
            return ["MIN":90.00, "100":0.1025, "1000":0.0955, "2000":0.0795, "3000":0.0695, "5000":0.0585, "10000":0.0290, "MAX":290]
            
        case (.Ocean, .A):
            return ["MIN":20.50, "100":0.0438, "1000":0.0395, "2000":0.0315, "3000":0.0295, "5000":0.0245, "10000":0.0191, "MAX":250]
        case (.Ocean, .B):
            return ["MIN":35.00, "100":0.0515, "1000":0.0422, "2000":0.0352, "3000":0.0312, "5000":0.0265, "10000":0.0213, "MAX":260]
        case (.Ocean, .C):
            return ["MIN":45.00, "100":0.0655, "1000":0.0502, "2000":0.0401, "3000":0.0345, "5000":0.0295, "10000":0.0237, "MAX":270]
        case (.Ocean, .D):
            return ["MIN":55.00, "100":0.0712, "1000":0.0545, "2000":0.0475, "3000":0.0405, "5000":0.0375, "10000":0.0280, "MAX":280]
        case (.Ocean, .E):
            return ["MIN":90.00, "100":0.1025, "1000":0.0955, "2000":0.0795, "3000":0.0695, "5000":0.0585, "10000":0.0290, "MAX":290]
        }
        
    }
    
    
    func calculate(transport: Freight, zone: Zone, weight: Double) -> Double {
        let rates = getRateForZone(calculate: transport, calculate: zone)
        
        switch weight {
        case 1..<1000:
            guard let lowerWeightRate = rates["100"] else { return 0 }
            guard let heavierWeightRate = rates["1000"] else { return 0 }
            guard let minimum = rates["MIN"] else { return 0 }
            
            let firstRate = weight * lowerWeightRate
            let secondRate = heavierWeightRate * 1000
            
            if firstRate < minimum {
                return minimum
            } else {
                return calcBetterRate(first: firstRate, second: secondRate)
            }
            
        case 1000..<2000:
            guard let lowerWeightRate = rates["1000"] else { return 0 }
            guard let heavierWeightRate = rates["2000"] else { return 0 }
            let firstRate = weight * lowerWeightRate
            let secondRate = heavierWeightRate * 2000
            
            return calcBetterRate(first: firstRate, second: secondRate)
        case 2000..<3000:
            guard let lowerWeightRate = rates["2000"] else { return 0 }
            guard let heavierWeightRate = rates["3000"] else { return 0 }
            let firstRate = weight * lowerWeightRate
            let secondRate = heavierWeightRate * 3000
            
            return calcBetterRate(first: firstRate, second: secondRate)
        case 3000..<5000:
            guard let lowerWeightRate = rates["3000"] else { return 0 }
            guard let heavierWeightRate = rates["5000"] else { return 0 }
            let firstRate = weight * lowerWeightRate
            let secondRate = heavierWeightRate * 5000
            
            return calcBetterRate(first: firstRate, second: secondRate)
        case 5000..<10000:
            //IMPLMENT MAXIMUM
            guard let lowerWeightRate = rates["5000"] else { return 0 }
            guard let heavierWeightRate = rates["10000"] else { return 0 }
            let firstRate = weight * lowerWeightRate
            let secondRate = heavierWeightRate * 10000
            
            return calcBetterRate(first: firstRate, second: secondRate)
        case 10000..<100000:
            guard let lowerWeightRate = rates["10000"] else { return 0 }
            guard let heavierWeightRate = rates["MAX"] else { return 0}
            let firstRate = weight * lowerWeightRate
            
            
            return calcBetterRate(first: firstRate, second: heavierWeightRate)
        default:
            return 0
        }
        
        
        
    }
    
    private func calcBetterRate(first: Double, second: Double) -> Double {
        if first > second {
            return second
        } else {
            return first
        }
    }
    
    func calculateFuel(with rate: Double) -> Double {
        return rate * 0.15
    }
    
    func calculateTransferRate(weight: Double) -> (Double, Double) {
        let rate = weight * 0.02
        let fuel = rate * 0.10
        
        if rate < 20 {
            return (20, fuel)
        }
        return (rate, fuel)
    }
    
}


extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if moveTypeTF.isFirstResponder {
            return moveTypeData.count
        } else if changeZoneTF.isFirstResponder {
            return zoneData.count
        } else {
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if moveTypeTF.isFirstResponder {
            return moveTypeData[row]
        } else if changeZoneTF.isFirstResponder {
            return zoneData[row]
        } else {
            return nil
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if moveTypeTF.isFirstResponder {
            moveTypeTF.text = moveTypeData[row]
        } else if changeZoneTF.isFirstResponder {
            changeZoneTF.text = zoneData[row]
        }
        
    }
    
}


extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.myPicker?.reloadAllComponents()
    }
}
