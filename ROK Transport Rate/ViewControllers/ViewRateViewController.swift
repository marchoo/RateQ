//
//  ViewRateViewController.swift
//  ROK Transport Rate
//
//  Created by Mingu Chu on 12/31/19.
//  Copyright © 2019 chingoo. All rights reserved.
//

import UIKit

class ViewRateViewController: UIViewController {

//MARK: TOPVIEW OUTLETS
    @IBOutlet weak var topMsgView: UIView!
    
    @IBOutlet weak var rateTextBtn: UIButton!
    @IBOutlet weak var messageLB: UILabel!
    
    private func setTopConstraints() {
        
        topMsgView.translatesAutoresizingMaskIntoConstraints = false
        topMsgView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor).isActive = true
        topMsgView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true
        topMsgView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        topMsgView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/8).isActive = true
        
        rateTextBtn.translatesAutoresizingMaskIntoConstraints = false
        rateTextBtn.leftAnchor.constraint(equalTo: topMsgView.leftAnchor).isActive = true
        rateTextBtn.widthAnchor.constraint(equalTo: topMsgView.widthAnchor, multiplier: 1/8).isActive = true
        rateTextBtn.topAnchor.constraint(equalTo: topMsgView.topAnchor).isActive = true
        rateTextBtn.heightAnchor.constraint(equalTo: topMsgView.heightAnchor).isActive = true
        
        messageLB.translatesAutoresizingMaskIntoConstraints = false
        messageLB.leftAnchor.constraint(equalTo: rateTextBtn.rightAnchor, constant: 8).isActive = true
        messageLB.rightAnchor.constraint(equalTo: topMsgView.rightAnchor).isActive = true
        messageLB.topAnchor.constraint(equalTo: topMsgView.topAnchor).isActive = true
        messageLB.heightAnchor.constraint(equalTo: topMsgView.heightAnchor).isActive = true
    }
    
//MARK: INPUTVIEW OUTLETS
    @IBOutlet weak var inquiryView: UIView!
    
    @IBOutlet weak var zoneTextLB: UILabel!
    @IBOutlet weak var typeTextLB: UILabel!
    @IBOutlet weak var moveTypeTextLB: UILabel!
    @IBOutlet weak var weightTextLB: UILabel!
    
    @IBOutlet weak var zoneSelectedLB: UILabel!
    @IBOutlet weak var typeSelectedLB: UILabel!
    @IBOutlet weak var moveTypeSelectedLB: UILabel!
    @IBOutlet weak var weightSelectedLB: UILabel!

    private func setInputConstraints() {
        inquiryView.translatesAutoresizingMaskIntoConstraints = false
        inquiryView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 0).isActive = true
        inquiryView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 2/6.25).isActive = true
        inquiryView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        inquiryView.topAnchor.constraint(equalTo: self.topMsgView.bottomAnchor, constant: 8).isActive = true
        
        
        zoneTextLB.translatesAutoresizingMaskIntoConstraints = false
        zoneTextLB.leftAnchor.constraint(equalTo: inquiryView.leftAnchor).isActive = true
        zoneTextLB.widthAnchor.constraint(equalTo: inquiryView.widthAnchor, multiplier: 1/2.2).isActive = true
        zoneTextLB.topAnchor.constraint(equalTo: inquiryView.topAnchor, constant: 0).isActive = true
        zoneTextLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        zoneSelectedLB.translatesAutoresizingMaskIntoConstraints = false
        zoneSelectedLB.rightAnchor.constraint(equalTo: inquiryView.rightAnchor).isActive = true
        zoneSelectedLB.leftAnchor.constraint(equalTo: zoneTextLB.rightAnchor, constant: 8).isActive = true
        zoneSelectedLB.topAnchor.constraint(equalTo: inquiryView.topAnchor, constant: 0).isActive = true
        zoneSelectedLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        
        
        typeTextLB.translatesAutoresizingMaskIntoConstraints = false
        typeTextLB.leftAnchor.constraint(equalTo: inquiryView.leftAnchor).isActive = true
        typeTextLB.widthAnchor.constraint(equalTo: zoneTextLB.widthAnchor).isActive = true
        typeTextLB.topAnchor.constraint(equalTo: zoneTextLB.bottomAnchor, constant: 8).isActive = true
        typeTextLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        typeSelectedLB.translatesAutoresizingMaskIntoConstraints = false
        typeSelectedLB.rightAnchor.constraint(equalTo: inquiryView.rightAnchor).isActive = true
        typeSelectedLB.widthAnchor.constraint(equalTo: zoneSelectedLB.widthAnchor).isActive = true
        typeSelectedLB.topAnchor.constraint(equalTo: zoneSelectedLB.bottomAnchor, constant: 8).isActive = true
        typeSelectedLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        
        
        moveTypeTextLB.translatesAutoresizingMaskIntoConstraints = false
        moveTypeTextLB.leftAnchor.constraint(equalTo: inquiryView.leftAnchor).isActive = true
        moveTypeTextLB.widthAnchor.constraint(equalTo: zoneTextLB.widthAnchor).isActive = true
        moveTypeTextLB.topAnchor.constraint(equalTo: typeTextLB.bottomAnchor, constant: 8).isActive = true
        moveTypeTextLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        moveTypeSelectedLB.translatesAutoresizingMaskIntoConstraints = false
        moveTypeSelectedLB.rightAnchor.constraint(equalTo: inquiryView.rightAnchor).isActive = true
        moveTypeSelectedLB.widthAnchor.constraint(equalTo: zoneSelectedLB.widthAnchor).isActive = true
        moveTypeSelectedLB.topAnchor.constraint(equalTo: typeSelectedLB.bottomAnchor, constant: 8).isActive = true
        moveTypeSelectedLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        
        
        weightTextLB.translatesAutoresizingMaskIntoConstraints = false
        weightTextLB.leftAnchor.constraint(equalTo: inquiryView.leftAnchor).isActive = true
        weightTextLB.widthAnchor.constraint(equalTo: zoneTextLB.widthAnchor).isActive = true
        weightTextLB.topAnchor.constraint(equalTo: moveTypeTextLB.bottomAnchor, constant: 8).isActive = true
        weightTextLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        weightSelectedLB.translatesAutoresizingMaskIntoConstraints = false
        weightSelectedLB.rightAnchor.constraint(equalTo: inquiryView.rightAnchor).isActive = true
        weightSelectedLB.widthAnchor.constraint(equalTo: zoneSelectedLB.widthAnchor).isActive = true
        weightSelectedLB.topAnchor.constraint(equalTo: moveTypeSelectedLB.bottomAnchor, constant: 8).isActive = true
        weightSelectedLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
    }
    
    
//MARK: BREAKDOWN OUTLETS
    @IBOutlet weak var breakDownView: UIView!
    
    @IBOutlet weak var basicChargesTextLB: UILabel!
    @IBOutlet weak var additionalTextLB: UILabel!
    
    @IBOutlet weak var freightTextLB: UILabel!
    @IBOutlet weak var fuelTextLB: UILabel!
    @IBOutlet weak var tollTextLB: UILabel!
    @IBOutlet weak var additional_one_TF: UITextField!
    @IBOutlet weak var additional_two_TF: UITextField!
    @IBOutlet weak var additional_three_TF: UITextField!
    @IBOutlet weak var additional_four_TF: UITextField!
    @IBOutlet weak var additional_five_TF: UITextField!
    @IBOutlet weak var totalTextLB: UILabel!
    
    @IBOutlet weak var freightPriceLB: UILabel!
    @IBOutlet weak var fuelPriceLB: UILabel!
    @IBOutlet weak var tollPriceLB: UILabel!
    @IBOutlet weak var additional_one_price_TF: UITextField!
    @IBOutlet weak var additional_two_price_TF: UITextField!
    @IBOutlet weak var additional_three_price_TF: UITextField!
    @IBOutlet weak var additional_four_price_TF: UITextField!
    @IBOutlet weak var additional_five_price_TF: UITextField!
    @IBOutlet weak var total_price_LB: UILabel!
    
    private func setupBreakdownConstraints() {
        breakDownView.translatesAutoresizingMaskIntoConstraints = false
        breakDownView.leftAnchor.constraint(equalTo: inquiryView.rightAnchor, constant: 8).isActive = true
        breakDownView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true
        breakDownView.topAnchor.constraint(equalTo:topMsgView.bottomAnchor, constant: 8).isActive = true
        breakDownView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        
        
        
        basicChargesTextLB.translatesAutoresizingMaskIntoConstraints = false
        basicChargesTextLB.leftAnchor.constraint(equalTo: breakDownView.leftAnchor, constant: 0).isActive = true
        basicChargesTextLB.widthAnchor.constraint(equalTo: breakDownView.widthAnchor, multiplier: 1.5/6).isActive = true
        basicChargesTextLB.topAnchor.constraint(equalTo: breakDownView.topAnchor).isActive = true
        basicChargesTextLB.heightAnchor.constraint(equalTo: breakDownView.heightAnchor, multiplier: 1/11).isActive = true
        
        freightPriceLB.translatesAutoresizingMaskIntoConstraints = false
        freightPriceLB.rightAnchor.constraint(equalTo: breakDownView.rightAnchor, constant: 0).isActive = true
        freightPriceLB.widthAnchor.constraint(equalTo: breakDownView.widthAnchor, multiplier: 1.5/6).isActive = true
        freightPriceLB.topAnchor.constraint(equalTo: breakDownView.topAnchor).isActive = true
        freightPriceLB.heightAnchor.constraint(equalTo: breakDownView.heightAnchor, multiplier: 1/11).isActive = true
        
        freightTextLB.translatesAutoresizingMaskIntoConstraints = false
        freightTextLB.leftAnchor.constraint(equalTo: basicChargesTextLB.rightAnchor, constant: 8).isActive = true
        freightTextLB.rightAnchor.constraint(equalTo: freightPriceLB.leftAnchor, constant: -8).isActive = true
        freightTextLB.topAnchor.constraint(equalTo: breakDownView.topAnchor).isActive = true
        freightTextLB.heightAnchor.constraint(equalTo: breakDownView.heightAnchor, multiplier: 1/11).isActive = true
        
        
        
        fuelTextLB.translatesAutoresizingMaskIntoConstraints = false
        fuelTextLB.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor).isActive = true
        fuelTextLB.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor).isActive = true
        fuelTextLB.topAnchor.constraint(equalTo: freightTextLB.bottomAnchor, constant: 8).isActive = true
        fuelTextLB.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        fuelPriceLB.translatesAutoresizingMaskIntoConstraints = false
        fuelPriceLB.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor).isActive = true
        fuelPriceLB.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor).isActive = true
        fuelPriceLB.topAnchor.constraint(equalTo: freightPriceLB.bottomAnchor, constant: 8).isActive = true
        fuelPriceLB.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        tollTextLB.translatesAutoresizingMaskIntoConstraints = false
        tollTextLB.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor).isActive = true
        tollTextLB.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor).isActive = true
        tollTextLB.topAnchor.constraint(equalTo: fuelTextLB.bottomAnchor, constant: 8).isActive = true
        tollTextLB.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        tollPriceLB.translatesAutoresizingMaskIntoConstraints = false
        tollPriceLB.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor).isActive = true
        tollPriceLB.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor).isActive = true
        tollPriceLB.topAnchor.constraint(equalTo: fuelPriceLB.bottomAnchor, constant: 8).isActive = true
        tollPriceLB.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        additional_one_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_one_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor).isActive = true
        additional_one_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor).isActive = true
        additional_one_TF.topAnchor.constraint(equalTo: tollTextLB.bottomAnchor, constant: 8).isActive = true
        additional_one_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_one_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_one_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor).isActive = true
        additional_one_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor).isActive = true
        additional_one_price_TF.topAnchor.constraint(equalTo: tollPriceLB.bottomAnchor, constant: 8).isActive = true
        additional_one_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        additionalTextLB.translatesAutoresizingMaskIntoConstraints = false
        additionalTextLB.leftAnchor.constraint(equalTo: breakDownView.leftAnchor, constant: 0).isActive = true
        additionalTextLB.widthAnchor.constraint(equalTo: breakDownView.widthAnchor, multiplier: 1.5/6).isActive = true
        additionalTextLB.topAnchor.constraint(equalTo: additional_one_TF.topAnchor).isActive = true
        additionalTextLB.heightAnchor.constraint(equalTo: basicChargesTextLB.heightAnchor).isActive = true
        
        
        
        additional_two_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_two_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor).isActive = true
        additional_two_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor).isActive = true
        additional_two_TF.topAnchor.constraint(equalTo: additional_one_TF.bottomAnchor, constant: 8).isActive = true
        additional_two_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_two_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_two_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor).isActive = true
        additional_two_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor).isActive = true
        additional_two_price_TF.topAnchor.constraint(equalTo: additional_one_price_TF.bottomAnchor, constant: 8).isActive = true
        additional_two_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        additional_three_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_three_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor).isActive = true
        additional_three_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor).isActive = true
        additional_three_TF.topAnchor.constraint(equalTo: additional_two_TF.bottomAnchor, constant: 8).isActive = true
        additional_three_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_three_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_three_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor).isActive = true
        additional_three_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor).isActive = true
        additional_three_price_TF.topAnchor.constraint(equalTo: additional_two_price_TF.bottomAnchor, constant: 8).isActive = true
        additional_three_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        additional_four_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_four_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor).isActive = true
        additional_four_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor).isActive = true
        additional_four_TF.topAnchor.constraint(equalTo: additional_three_TF.bottomAnchor, constant: 8).isActive = true
        additional_four_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_four_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_four_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor).isActive = true
        additional_four_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor).isActive = true
        additional_four_price_TF.topAnchor.constraint(equalTo: additional_three_price_TF.bottomAnchor, constant: 8).isActive = true
        additional_four_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        additional_five_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_five_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor).isActive = true
        additional_five_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor).isActive = true
        additional_five_TF.topAnchor.constraint(equalTo: additional_four_TF.bottomAnchor, constant: 8).isActive = true
        additional_five_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_five_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_five_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor).isActive = true
        additional_five_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor).isActive = true
        additional_five_price_TF.topAnchor.constraint(equalTo: additional_four_price_TF.bottomAnchor, constant: 8).isActive = true
        additional_five_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        totalTextLB.translatesAutoresizingMaskIntoConstraints = false
        totalTextLB.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor).isActive = true
        totalTextLB.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor).isActive = true
        totalTextLB.topAnchor.constraint(equalTo: additional_five_TF.bottomAnchor, constant: 8).isActive = true
        totalTextLB.bottomAnchor.constraint(equalTo: breakDownView.bottomAnchor).isActive = true
        
        total_price_LB.translatesAutoresizingMaskIntoConstraints = false
        total_price_LB.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor).isActive = true
        total_price_LB.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor).isActive = true
        total_price_LB.topAnchor.constraint(equalTo: additional_five_price_TF.bottomAnchor, constant: 8).isActive = true
        total_price_LB.bottomAnchor.constraint(equalTo: breakDownView.bottomAnchor).isActive = true
        
    }
    
    
    var rate: Double?
    var fuel: Double?
    var toll: Double?
    var zone: Zone?
    var type: Freight?
    var moveType: String = ""
    var weight: String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTopConstraints()
        setInputConstraints()
        setupBreakdownConstraints()
        
        preEnterLabels()
        assignLabels()
        
        calculateTotal()
    }

    
    
    @IBAction func rateTextBackBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func preEnterLabels() {
        
        rateTextBtn.setTitle(" Rate", for: .normal)
        rateTextBtn.setTitleColor(.white, for: .normal)
        messageLB.text = "Here is our rate and Thank You for the inquiry!  "
        
        zoneTextLB.text = " Zone"
        typeTextLB.text = " Type"
        moveTypeTextLB.text = " Move Type"
        weightTextLB.text = " Weight"
        
        basicChargesTextLB.text = " Basic Charges"
        additionalTextLB.text = " Additional"
        
        freightTextLB.text = " Freight"
        fuelTextLB.text = " F.S.C."
        tollTextLB.text = " Toll"
        
        totalTextLB.text = "Total:"
    }
    
    func assignLabels() {
        guard let zn = zone else { return }
        guard let tp = type else { return }
        guard let rt = rate else { return }
        guard let fl = fuel else { return }
        guard let tl = toll else { return }
        
        zoneSelectedLB.text = "\(zn)"
        typeSelectedLB.text = "\(tp)"
        moveTypeSelectedLB.text = moveType
        weightSelectedLB.text = weight
        
        freightPriceLB.text = String(format: "$%.02f", rt)
        fuelPriceLB.text = String(format: "$%.02f", fl)
        tollPriceLB.text = String(format: "$%.02f", tl)
    }
    
    
    
    func calculateTotal() {
        let total = rate! + fuel! + toll!
        total_price_LB.text = String(format: "$%.02f", total)
    }
    
    
}


extension ViewRateViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
}


extension String {
    func toDouble() -> Double? {
        return Double(self)
    }
    
    var isNumber: Bool {
        guard self.count > 0 else { return false }
        let nums: Set<Character> = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9",]
        return Set(self).isSubset(of: nums)
    }
    
}
