//
//  ViewRateViewController.swift
//  ROK Transport Rate
//
//  Created by Mingu Chu on 12/31/19.
//  Copyright © 2019 chingoo. All rights reserved.
//

import UIKit
import MessageUI

class ViewRateViewController: UIViewController {
    
    //MARK: TOPVIEW OUTLETS
    @IBOutlet weak var topMsgView: UIView!
    
    @IBOutlet weak var coinImageView: UIImageView!
    @IBOutlet weak var rateTextBtn: UIButton!
    @IBOutlet weak var messageBtn: UIButton!
    
    private func setTopConstraints() {
        
        topMsgView.translatesAutoresizingMaskIntoConstraints = false
        topMsgView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 4).isActive = true
        topMsgView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -4).isActive = true
        topMsgView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 4).isActive = true
        topMsgView.heightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.heightAnchor, multiplier: 1/8).isActive = true
        
//        coinImageView.translatesAutoresizingMaskIntoConstraints = false
//        coinImageView.leftAnchor.constraint(equalTo: topMsgView.leftAnchor, constant: 4).isActive = true
//        coinImageView.topAnchor.constraint(equalTo: topMsgView.topAnchor, constant: 4).isActive = true
//        coinImageView.heightAnchor.constraint(equalTo: topMsgView.heightAnchor, constant: -8).isActive = true
//        coinImageView.widthAnchor.constraint(equalTo: coinImageView.heightAnchor, constant: 0).isActive = true
        
        rateTextBtn.translatesAutoresizingMaskIntoConstraints = false
        rateTextBtn.leftAnchor.constraint(equalTo: coinImageView.rightAnchor, constant: 4).isActive = false
        rateTextBtn.leftAnchor.constraint(equalTo: topMsgView.leftAnchor, constant: 4).isActive = true
        rateTextBtn.widthAnchor.constraint(equalTo: topMsgView.widthAnchor, multiplier: 1/8).isActive = true
        rateTextBtn.topAnchor.constraint(equalTo: topMsgView.topAnchor).isActive = true
        rateTextBtn.heightAnchor.constraint(equalTo: topMsgView.heightAnchor).isActive = true
        
        messageBtn.translatesAutoresizingMaskIntoConstraints = false
        messageBtn.leftAnchor.constraint(equalTo: rateTextBtn.rightAnchor, constant: 4).isActive = true
        messageBtn.rightAnchor.constraint(equalTo: topMsgView.rightAnchor).isActive = true
        messageBtn.topAnchor.constraint(equalTo: topMsgView.topAnchor).isActive = true
        messageBtn.heightAnchor.constraint(equalTo: topMsgView.heightAnchor).isActive = true
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
        inquiryView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor, constant: 4).isActive = true
        inquiryView.widthAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.widthAnchor, multiplier: 2/6.25).isActive = true
        inquiryView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -4).isActive = true
        inquiryView.topAnchor.constraint(equalTo: self.topMsgView.bottomAnchor, constant: 4).isActive = true
        
        zoneTextLB.translatesAutoresizingMaskIntoConstraints = false
        zoneTextLB.leftAnchor.constraint(equalTo: inquiryView.leftAnchor, constant: 4).isActive = true
        zoneTextLB.widthAnchor.constraint(equalTo: inquiryView.widthAnchor, multiplier: 1/2.2).isActive = true
        zoneTextLB.topAnchor.constraint(equalTo: inquiryView.topAnchor, constant: 4).isActive = true
        zoneTextLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        zoneSelectedLB.translatesAutoresizingMaskIntoConstraints = false
        zoneSelectedLB.rightAnchor.constraint(equalTo: inquiryView.rightAnchor, constant: -4).isActive = true
        zoneSelectedLB.leftAnchor.constraint(equalTo: zoneTextLB.rightAnchor, constant: 4).isActive = true
        zoneSelectedLB.topAnchor.constraint(equalTo: inquiryView.topAnchor, constant: 4).isActive = true
        zoneSelectedLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        typeTextLB.translatesAutoresizingMaskIntoConstraints = false
        typeTextLB.leftAnchor.constraint(equalTo: inquiryView.leftAnchor, constant: 4).isActive = true
        typeTextLB.widthAnchor.constraint(equalTo: zoneTextLB.widthAnchor).isActive = true
        typeTextLB.topAnchor.constraint(equalTo: zoneTextLB.bottomAnchor, constant: 4).isActive = true
        typeTextLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        typeSelectedLB.translatesAutoresizingMaskIntoConstraints = false
        typeSelectedLB.rightAnchor.constraint(equalTo: inquiryView.rightAnchor, constant: -4).isActive = true
        typeSelectedLB.widthAnchor.constraint(equalTo: zoneSelectedLB.widthAnchor).isActive = true
        typeSelectedLB.topAnchor.constraint(equalTo: zoneSelectedLB.bottomAnchor, constant: 4).isActive = true
        typeSelectedLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        
        
        moveTypeTextLB.translatesAutoresizingMaskIntoConstraints = false
        moveTypeTextLB.leftAnchor.constraint(equalTo: inquiryView.leftAnchor, constant: 4).isActive = true
        moveTypeTextLB.widthAnchor.constraint(equalTo: zoneTextLB.widthAnchor).isActive = true
        moveTypeTextLB.topAnchor.constraint(equalTo: typeTextLB.bottomAnchor, constant: 4).isActive = true
        moveTypeTextLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        moveTypeSelectedLB.translatesAutoresizingMaskIntoConstraints = false
        moveTypeSelectedLB.rightAnchor.constraint(equalTo: inquiryView.rightAnchor, constant: -4).isActive = true
        moveTypeSelectedLB.widthAnchor.constraint(equalTo: zoneSelectedLB.widthAnchor).isActive = true
        moveTypeSelectedLB.topAnchor.constraint(equalTo: typeSelectedLB.bottomAnchor, constant: 4).isActive = true
        moveTypeSelectedLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        
        
        weightTextLB.translatesAutoresizingMaskIntoConstraints = false
        weightTextLB.leftAnchor.constraint(equalTo: inquiryView.leftAnchor, constant: 4).isActive = true
        weightTextLB.widthAnchor.constraint(equalTo: zoneTextLB.widthAnchor).isActive = true
        weightTextLB.topAnchor.constraint(equalTo: moveTypeTextLB.bottomAnchor, constant: 4).isActive = true
        weightTextLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
        
        weightSelectedLB.translatesAutoresizingMaskIntoConstraints = false
        weightSelectedLB.rightAnchor.constraint(equalTo: inquiryView.rightAnchor, constant: -4).isActive = true
        weightSelectedLB.widthAnchor.constraint(equalTo: zoneSelectedLB.widthAnchor).isActive = true
        weightSelectedLB.topAnchor.constraint(equalTo: moveTypeSelectedLB.bottomAnchor, constant: 4).isActive = true
        weightSelectedLB.heightAnchor.constraint(equalTo: inquiryView.heightAnchor, multiplier: 1/8).isActive = true
    }
    
    //MARK: BREAKDOWN OUTLETS
    @IBOutlet weak var breakDownView: UIView!
    
    @IBOutlet weak var basicChargesTextLB: UILabel!
    @IBOutlet weak var additionalTextLB: UILabel!
    
    @IBOutlet weak var freightTextLB: UILabel!
    @IBOutlet weak var fuelTextLB: UILabel!
    @IBOutlet weak var tollTextLB: UILabel!
    @IBOutlet weak var additional_one_TF: CustomSearchTF!
    @IBOutlet weak var additional_two_TF: CustomSearchTF!
    @IBOutlet weak var additional_three_TF: CustomSearchTF!
    @IBOutlet weak var additional_four_TF: CustomSearchTF!
    @IBOutlet weak var additional_five_TF: CustomSearchTF!
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
        breakDownView.leftAnchor.constraint(equalTo: inquiryView.rightAnchor, constant: 4).isActive = true
        breakDownView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor, constant: -4).isActive = true
        breakDownView.topAnchor.constraint(equalTo:topMsgView.bottomAnchor, constant: 4).isActive = true
        breakDownView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -4).isActive = true
        
        basicChargesTextLB.translatesAutoresizingMaskIntoConstraints = false
        basicChargesTextLB.leftAnchor.constraint(equalTo: breakDownView.leftAnchor, constant: 4).isActive = true
        basicChargesTextLB.widthAnchor.constraint(equalTo: breakDownView.widthAnchor, multiplier: 1.4/6).isActive = true
        basicChargesTextLB.topAnchor.constraint(equalTo: breakDownView.topAnchor, constant: 4).isActive = true
        basicChargesTextLB.heightAnchor.constraint(equalTo: breakDownView.heightAnchor, multiplier: 1/11).isActive = true
        
        freightPriceLB.translatesAutoresizingMaskIntoConstraints = false
        freightPriceLB.rightAnchor.constraint(equalTo: breakDownView.rightAnchor, constant: -4).isActive = true
        //        freightPriceLB.widthAnchor.constraint(equalTo: breakDownView.widthAnchor, multiplier: 1.4/6).isActive = true
        let wtd = basicChargesTextLB.frame.size.width - 4
        freightPriceLB.widthAnchor.constraint(equalToConstant: wtd).isActive = true
        freightPriceLB.topAnchor.constraint(equalTo: breakDownView.topAnchor, constant: 4).isActive = true
        freightPriceLB.heightAnchor.constraint(equalTo: breakDownView.heightAnchor, multiplier: 1/11).isActive = true
        
        freightTextLB.translatesAutoresizingMaskIntoConstraints = false
        freightTextLB.leftAnchor.constraint(equalTo: basicChargesTextLB.rightAnchor, constant: 4).isActive = true
        freightTextLB.rightAnchor.constraint(equalTo: freightPriceLB.leftAnchor, constant: -4).isActive = true
        freightTextLB.topAnchor.constraint(equalTo: breakDownView.topAnchor, constant: 4).isActive = true
        freightTextLB.heightAnchor.constraint(equalTo: breakDownView.heightAnchor, multiplier: 1/11).isActive = true
        
        
        
        fuelTextLB.translatesAutoresizingMaskIntoConstraints = false
        fuelTextLB.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor, constant: 0).isActive = true
        fuelTextLB.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor, constant: 0).isActive = true
        fuelTextLB.topAnchor.constraint(equalTo: freightTextLB.bottomAnchor, constant: 4).isActive = true
        fuelTextLB.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        fuelPriceLB.translatesAutoresizingMaskIntoConstraints = false
        fuelPriceLB.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor, constant: 0).isActive = true
        fuelPriceLB.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor, constant: 0).isActive = true
        fuelPriceLB.topAnchor.constraint(equalTo: freightPriceLB.bottomAnchor, constant: 4).isActive = true
        fuelPriceLB.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        tollTextLB.translatesAutoresizingMaskIntoConstraints = false
        tollTextLB.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor, constant: 0).isActive = true
        tollTextLB.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor, constant: 0).isActive = true
        tollTextLB.topAnchor.constraint(equalTo: fuelTextLB.bottomAnchor, constant: 4).isActive = true
        tollTextLB.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        tollPriceLB.translatesAutoresizingMaskIntoConstraints = false
        tollPriceLB.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor, constant: 0).isActive = true
        tollPriceLB.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor, constant: 0).isActive = true
        tollPriceLB.topAnchor.constraint(equalTo: fuelPriceLB.bottomAnchor, constant: 4).isActive = true
        tollPriceLB.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        additional_one_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_one_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor, constant: 0).isActive = true
        additional_one_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor, constant: 0).isActive = true
        additional_one_TF.topAnchor.constraint(equalTo: tollTextLB.bottomAnchor, constant: 4).isActive = true
        additional_one_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_one_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_one_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor, constant: 0).isActive = true
        additional_one_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor, constant: 0).isActive = true
        additional_one_price_TF.topAnchor.constraint(equalTo: tollPriceLB.bottomAnchor, constant: 4).isActive = true
        additional_one_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        additionalTextLB.translatesAutoresizingMaskIntoConstraints = false
        additionalTextLB.leftAnchor.constraint(equalTo: breakDownView.leftAnchor, constant: 4).isActive = true
        additionalTextLB.widthAnchor.constraint(equalTo: basicChargesTextLB.widthAnchor).isActive = true
        additionalTextLB.topAnchor.constraint(equalTo: additional_one_TF.topAnchor).isActive = true
        additionalTextLB.heightAnchor.constraint(equalTo: basicChargesTextLB.heightAnchor).isActive = true
        
        
        
        additional_two_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_two_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor, constant: 0).isActive = true
        additional_two_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor, constant: 0).isActive = true
        additional_two_TF.topAnchor.constraint(equalTo: additional_one_TF.bottomAnchor, constant: 4).isActive = true
        additional_two_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_two_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_two_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor, constant: 0).isActive = true
        additional_two_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor, constant: 0).isActive = true
        additional_two_price_TF.topAnchor.constraint(equalTo: additional_one_price_TF.bottomAnchor, constant: 4).isActive = true
        additional_two_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        additional_three_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_three_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor).isActive = true
        additional_three_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor).isActive = true
        additional_three_TF.topAnchor.constraint(equalTo: additional_two_TF.bottomAnchor, constant: 4).isActive = true
        additional_three_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_three_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_three_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor).isActive = true
        additional_three_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor).isActive = true
        additional_three_price_TF.topAnchor.constraint(equalTo: additional_two_price_TF.bottomAnchor, constant: 4).isActive = true
        additional_three_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        additional_four_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_four_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor, constant: 0).isActive = true
        additional_four_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor, constant: 0).isActive = true
        additional_four_TF.topAnchor.constraint(equalTo: additional_three_TF.bottomAnchor, constant: 4).isActive = true
        additional_four_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_four_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_four_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor, constant: 0).isActive = true
        additional_four_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor, constant: 0).isActive = true
        additional_four_price_TF.topAnchor.constraint(equalTo: additional_three_price_TF.bottomAnchor, constant: 4).isActive = true
        additional_four_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        additional_five_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_five_TF.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor, constant: 0).isActive = true
        additional_five_TF.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor, constant: 0).isActive = true
        additional_five_TF.topAnchor.constraint(equalTo: additional_four_TF.bottomAnchor, constant: 4).isActive = true
        additional_five_TF.heightAnchor.constraint(equalTo: freightTextLB.heightAnchor).isActive = true
        
        additional_five_price_TF.translatesAutoresizingMaskIntoConstraints = false
        additional_five_price_TF.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor, constant: 0).isActive = true
        additional_five_price_TF.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor, constant: 0).isActive = true
        additional_five_price_TF.topAnchor.constraint(equalTo: additional_four_price_TF.bottomAnchor, constant: 4).isActive = true
        additional_five_price_TF.heightAnchor.constraint(equalTo: freightPriceLB.heightAnchor).isActive = true
        
        
        
        totalTextLB.translatesAutoresizingMaskIntoConstraints = false
        totalTextLB.leftAnchor.constraint(equalTo: freightTextLB.leftAnchor, constant: 0).isActive = true
        totalTextLB.rightAnchor.constraint(equalTo: freightTextLB.rightAnchor, constant: 0).isActive = true
        totalTextLB.topAnchor.constraint(equalTo: additional_five_TF.bottomAnchor, constant: 4).isActive = true
        totalTextLB.bottomAnchor.constraint(equalTo: breakDownView.bottomAnchor).isActive = true
        
        total_price_LB.translatesAutoresizingMaskIntoConstraints = false
        total_price_LB.leftAnchor.constraint(equalTo: freightPriceLB.leftAnchor, constant: 0).isActive = true
        total_price_LB.rightAnchor.constraint(equalTo: freightPriceLB.rightAnchor, constant: 0).isActive = true
        total_price_LB.topAnchor.constraint(equalTo: additional_five_price_TF.bottomAnchor, constant: 4).isActive = true
        total_price_LB.bottomAnchor.constraint(equalTo: breakDownView.bottomAnchor).isActive = true
        
    }
    
    @IBOutlet var InputViewTextCollection: [CustomLabel]!
    @IBOutlet var additionalTextCollection: [CustomSearchTF]!
    @IBOutlet var additionalPriceCollection: [UITextField]!
    
    
    private func preEnterLabels() {
        rateTextBtn.setTitle(" Rate", for: .normal)
        messageBtn.setTitle("Here is our rate and Thank You for the inquiry!  ", for: .normal)
        
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
    private func assignLabels() {
        guard let zn = zone else { return }
        guard let tp = type else { return }
        guard let rt = rate else { return }
        guard let fl = fuel else { return }
        guard let tl = toll else { return }
        guard let mt = moveType else { return}
        
        zoneSelectedLB.text = "\(zn)"
        typeSelectedLB.text = "\(tp)"
        moveTypeSelectedLB.text = "\(mt)"
        weightSelectedLB.text = weight
        
        freightPriceLB.text = String(format: "$%.02f", rt)
        fuelPriceLB.text = String(format: "$%.02f ", fl)
        tollPriceLB.text = String(format: "$%.02f ", tl)
    }
    
    private func setViewsDesign() {
        topMsgView.backgroundColor = .lighterGray
        inquiryView.backgroundColor = .white
        breakDownView.backgroundColor = .white
                
        rateTextBtn.setTitleColor(.black, for: .normal)
        rateTextBtn.titleLabel?.font = UIFont(name: "Avenir Next", size: 30)
        rateTextBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        rateTextBtn.titleLabel?.minimumScaleFactor = 0.5
        rateTextBtn.clipsToBounds = true
        
        messageBtn.setTitleColor(.black, for: .normal)
        messageBtn.titleLabel?.font = UIFont(name: "Avenir Next", size: 30)
        messageBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        messageBtn.titleLabel?.minimumScaleFactor = 0.5
        messageBtn.clipsToBounds = true
        
        inquiryView.layer.borderWidth = 1
        inquiryView.layer.borderColor = UIColor.black.cgColor
        breakDownView.layer.borderWidth = 1
        inquiryView.layer.borderColor = UIColor.black.cgColor
        
        for label in InputViewTextCollection {
            label.font = UIFont(name: "Avenir Next", size: 20)
            label.adjustsFontSizeToFitWidth = true
            label.minimumScaleFactor = 0.5
            label.backgroundColor = UIColor.lighterGray
        }
        
        for tf in additionalTextCollection {
            tf.font = UIFont(name: "Avenir Next", size: 20)
            tf.adjustsFontSizeToFitWidth = true
        }
        
        for tf in additionalPriceCollection {
            tf.font = UIFont(name: "Avenir Next", size: 20)
            tf.adjustsFontSizeToFitWidth = true
            
        }
        
        freightPriceLB.textAlignment = .center
        fuelPriceLB.textAlignment = .center
        tollPriceLB.textAlignment = .center
        additional_one_price_TF.textAlignment = .center
        additional_two_price_TF.textAlignment = .center
        additional_three_price_TF.textAlignment = .center
        additional_four_price_TF.textAlignment = .center
        additional_five_price_TF.textAlignment = .center
        total_price_LB.textAlignment = .center
    }
    
    var rate: Double?
    var fuel: Double?
    var toll: Double?
    var zone: Zone?
    var type: Freight?
    var moveType: MoveType?
    var weight: String = ""
    
    var one_price: Double = 0.0 {
        willSet {
            additional_one_price_TF.text = showDollar(price: newValue)
        }
    }
    var two_price: Double = 0.0 {
        willSet {
            additional_two_price_TF.text = showDollar(price: newValue)
        }
    }
    var three_price: Double = 0.0 {
        willSet {
            additional_three_price_TF.text = showDollar(price: newValue)
        }
    }
    var four_price: Double = 0.0 {
        willSet {
            additional_four_price_TF.text = showDollar(price: newValue)
        }
    }
    var five_price: Double = 0.0 {
        willSet {
            additional_five_price_TF.text = showDollar(price: newValue)
        }
    }
    
    var total_price: Double = 0.0
    
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTopConstraints()
        setInputConstraints()
        setupBreakdownConstraints()
        setViewsDesign()
        
        preEnterLabels()
        assignLabels()
        setDelegate()
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        total_price_LB.text = showDollar(price: calculateTotal())
    }
    
    private func setDelegate() {
        additional_one_TF.getPriceDelegate = self
        additional_two_TF.getPriceDelegate = self
        additional_three_TF.getPriceDelegate = self
        additional_four_TF.getPriceDelegate = self
        additional_five_TF.getPriceDelegate = self
        
        additional_one_TF.delegate = self
        additional_two_TF.delegate = self
        additional_three_TF.delegate = self
        additional_four_TF.delegate = self
        additional_five_TF.delegate = self
        
        additional_one_price_TF.delegate = self
        additional_two_price_TF.delegate = self
        additional_three_price_TF.delegate = self
        additional_four_price_TF.delegate = self
        additional_five_price_TF.delegate = self
    }
    
    private func calculateTotal() -> Double {
        guard let rt = rate else { return 0 }
        guard let fl = fuel else { return 0 }
        guard let tl = toll else { return 0 }
        
        let rate = (rt*100).rounded()/100
        let fuel = (fl*100).rounded()/100
        
        
        let total = rate + fuel + tl
        
        return total
    }
    
    private func calculateNewTotal() -> Double {
        return calculateTotal() + one_price + two_price + three_price + four_price + five_price
    }
    
    private func showDollar(price: Double) -> String {
        return String(format: "$%.02f", price)
    }
    
    @IBAction func rateTextBackBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func messageEmailBtn(_ sender: Any) {
        let screenshot = self.view.takeScreenShot()
        showMailComposer(img: screenshot)
    }
    
    func showMailComposer(img: UIImage) {
        guard MFMailComposeViewController.canSendMail() else { return }
        let composer = MFMailComposeViewController()
        composer.mailComposeDelegate = self
        composer.setToRecipients(["dispatch@roktransportinc.com"])
        composer.setSubject("Rate Quote")
        composer.setMessageBody("Here is our rate, \n Thank you for your business!", isHTML: false)
        
        if let imageData = img.pngData() {
            composer.addAttachmentData(imageData, mimeType: "image/png", fileName: "ROK_Quote.png")
        
        }
        
        present(composer, animated: true, completion: nil)
    }
    
    
    
}



extension ViewRateViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        if let prc = textField.text?.replacingOccurrences(of: "$", with: "").toDouble() {
            switch textField.tag {
            case 7:
                one_price = prc
            case 8:
                two_price = prc
            case 9:
                three_price = prc
            case 10:
                four_price = prc
            case 11:
                five_price = prc
            default:
                return
            }
        }
        total_price_LB.text = showDollar(price: calculateNewTotal())
    }
    
}


extension ViewRateViewController: GetPriceDelegate {
    func priceForAdditional(price: Int, forTag: Int) {
        switch forTag {
        case 2:
            one_price = Double(price)
        case 3:
            two_price = Double(price)
        case 4:
            three_price = Double(price)
        case 5:
            four_price = Double(price)
        case 6:
            five_price = Double(price)
        default:
            return
        }
        total_price_LB.text = showDollar(price: calculateNewTotal())
    }
}


extension ViewRateViewController: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        if let _ = error {
            // show error alert
            controller.dismiss(animated: true, completion: nil)
            return
        }
    
        switch result {
        case .cancelled:
            print("cancelled")
        case .failed:
            print("failed to send")
        case .saved:
            print("saved")
        case .sent:
            print("sent")
        @unknown default:
            break
        }
        
        controller.dismiss(animated: true, completion: nil)
    }
}
















