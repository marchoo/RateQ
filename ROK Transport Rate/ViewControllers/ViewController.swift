//
//  ViewController.swift
//  ROK Transport Rate
//
//  Created by Mingu Chu on 12/30/19.
//  Copyright © 2019 chingoo. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    @IBOutlet weak var pickUpFromLabel: UILabel!
    @IBOutlet weak var pickUpFromTF: CustomSearchTF!
    @IBOutlet weak var pickUpZoneLB: CustomLabel!
    @IBOutlet weak var deliverToLabel: UILabel!
    @IBOutlet weak var deliverToTF: CustomSearchTF!
    @IBOutlet weak var deliverZoneLB: CustomLabel!
    @IBOutlet weak var weightTF: UITextField!
    @IBOutlet weak var weightUnitSC: UISegmentedControl!
    @IBOutlet weak var transportTypeSC: UISegmentedControl!
    @IBOutlet weak var moveTypeTF: UITextField! //tag 0
    @IBOutlet weak var changeZoneTF: UITextField! // tag 1
    @IBOutlet weak var getRateButton: UIButton!
    
    
    let moveTypeData = ["Import", "Export", "Transfer", "Co-Load"]
    let zoneData = ["A", "B", "C", "D", "E"]
    
    weak var myPicker: UIPickerView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        pickUpFromTF.delegate = self
        deliverToTF.delegate = self
        
        pickUpFromTF.getZoneDelegate = self
        deliverToTF.getZoneDelegate = self
        
        moveTypeTF.delegate = self
        changeZoneTF.delegate = self
        
        moveTypeTF.inputView = pickerView
        changeZoneTF.inputView = pickerView
        
        self.myPicker = pickerView
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getRateSegue", let destinationVC = segue.destination as? ViewRateViewController {

            let checkedZone = checkZone()
            destinationVC.toll = checkToll()
            destinationVC.zone = checkedZone
            destinationVC.type = checkTransportType()
            destinationVC.moveType = checkMoveType()
            destinationVC.weight = "\(weightTF.text!) \(weightUnit())"
            destinationVC.moveType = checkMoveType()
            
            if checkMoveType() == MoveType.Transfer {
                let transferRt = calculateTransferRate(weight: checkWeight())
                destinationVC.rate = transferRt.0
                destinationVC.fuel = transferRt.1
            } else {
                let finalRate = calculate(transport: checkTransportType(), zone: checkedZone, weight: checkWeight())
                let fuelRate = calculateFuel(with: finalRate)
                destinationVC.rate = finalRate
                destinationVC.fuel = fuelRate
            }
        }
    }
    
    
    @IBAction func getRateAction(_ sender: UIButton) {
        if checkRequiredField() {
            performSegue(withIdentifier: "getRateSegue", sender: self)
        }
    }
    
    @IBAction func clearAction(_ sender: Any) {
        pickUpFromTF.text = ""
        deliverToTF.text = ""
        weightTF.text = ""
        moveTypeTF.text = ""
        changeZoneTF.text = ""
    }
    

    private func checkRequiredField() -> Bool {
        guard !weightTF.text!.isEmpty else { return false }
        guard !moveTypeTF.text!.isEmpty else { return false }
        guard !changeZoneTF.text!.isEmpty else { return false }
        return true
    }
    
    private func checkMoveType() -> MoveType {
        if moveTypeTF.text == "Transfer" {
            return MoveType.Transfer
        } else if moveTypeTF.text == "Import" {
            return MoveType.Import
        } else if moveTypeTF.text == "Export" {
            return MoveType.Export
        } else {
            return MoveType.CoLoad
        }
    }
    
    
    private func checkTransportType() -> Freight {
        if transportTypeSC.selectedSegmentIndex == 0 {
            return Freight.Air
        } else {
            return Freight.Ocean
        }
    }
    
    private func checkZone() -> Zone {
        
        if changeZoneTF.text != "" {
            let selectedZoneText = changeZoneTF.text
            switch selectedZoneText {
            case "A":
                return Zone.A
            case "B":
                return Zone.B
            case "C":
                return Zone.C
            case "D":
                return Zone.D
            case "E":
                return Zone.E
            default:
                return Zone.A
            }
        }
        return Zone.A
    }
    
    private func checkWeight() -> Double {
        guard let weightEntered = weightTF.text else { return 0 }
        
        if weightUnitSC.selectedSegmentIndex == 1 {
            let kgInLbs = Double(weightEntered)! * 2.20462
            return kgInLbs
        } else {
            return Double(weightEntered)!
        }
    }
    
    private func weightUnit() -> String {
        if weightUnitSC.selectedSegmentIndex == 1 {
            return "Kgs"
        } else {
            return "Lbs"
        }
    }
    
    private func checkToll() -> Double {
        let selectedZoneText = changeZoneTF.text
        switch selectedZoneText {
        case "A":
            return 0
        case "B":
            return 5
        case "C":
            return 15
        case "D":
            return 25
        case "E":
            return 35
        default:
            return 0
        }
    }
    
}




extension ViewController: GetZoneDelegate {

    func selectedZonefromTF(zone: String, forType: Int) {
        switch forType {
        case 0:
            pickUpZoneLB.text = zone
        case 1:
            deliverZoneLB.text = zone
        default:
            return
        }
    }
    
}

