//
//  CustomSearchTF.swift
//  ROK Transport Rate
//
//  Created by Mingu Chu on 12/30/19.
//  Copyright © 2019 chingoo. All rights reserved.
//

import UIKit

protocol GetZoneDelegate {
    func selectedZonefromTF(zone: String, forType: Int)
    
}

protocol GetPriceDelegate {
    func priceForAdditional(price: Int, forTag: Int)
}


class CustomSearchTF: UITextField {

    var resultList: [String] = []
    var searchTableView: UITableView?
    var getZoneDelegate: GetZoneDelegate?
    var getPriceDelegate: GetPriceDelegate?
    
    
    override func willMove(toWindow newWindow: UIWindow?) {
        super.willMove(toWindow: newWindow)
        searchTableView?.removeFromSuperview()
    }
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        self.addTarget(self, action: #selector(CustomSearchTF.textFieldDidChange), for: .editingChanged)
        self.addTarget(self, action: #selector(CustomSearchTF.textFieldDidBeginEditing), for: .editingDidBegin)
        self.addTarget(self, action: #selector(CustomSearchTF.textFieldDidEndEditing), for: .editingDidEnd)
        self.addTarget(self, action: #selector(CustomSearchTF.textFieldDidEndEditingOnExit), for: .editingDidEndOnExit)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        buildSearchTableView()
    }
    
    @objc open func textFieldDidChange(){
        switch self.tag {
        case 0, 1:
            filter(with: zoneChart)
        case 2, 3, 4, 5, 6:
            filter(with: additionalCharges)
        default:
            return
        }
        
        updateSearchTableView()
        searchTableView?.isHidden = false
    }
    @objc open func textFieldDidBeginEditing() {
        print("Begin Editing")
    }
    @objc open func textFieldDidEndEditing() {
        print("End editing")

    }
    @objc open func textFieldDidEndEditingOnExit() {
        print("End on Exit")
    }
    
    
    private func filter(with group: Dictionary<String, Any>) {
        let predicate = NSPredicate(format: "SELF contains[c] %@", self.text!)
        let searchData = group.keys.filter { predicate.evaluate(with: $0)}
        resultList = searchData
        searchTableView?.reloadData()
    }
    
}




extension CustomSearchTF: UITableViewDelegate, UITableViewDataSource {
    
    func buildSearchTableView() {
        if let tableView = searchTableView {
            tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CustomSearchTFCell")
            tableView.delegate = self
            tableView.dataSource = self
            self.window?.addSubview(tableView)
        } else {
            searchTableView = UITableView(frame: CGRect.zero)
        }
        
        updateSearchTableView()
    }
    
    func updateSearchTableView() {
        if let tableView = searchTableView {
            superview?.bringSubviewToFront(tableView)
            var tableHeight: CGFloat = 0
            tableHeight = tableView.contentSize.height
            
            if tableHeight < tableView.contentSize.height {
                tableHeight -= 10
            }
            
            // TB Frame
            var tableViewFrame = CGRect(x: 0, y: 0, width: frame.size.width, height: tableHeight)
            tableViewFrame.origin = self.convert(tableViewFrame.origin, to: nil)
            tableViewFrame.origin.x += 2
            tableViewFrame.origin.y += frame.size.height + 2
            
            UIView.animate(withDuration: 0.2) {
                self.searchTableView?.frame = tableViewFrame
            }
            
            //TB Style
            tableView.layer.masksToBounds = true
            tableView.separatorInset = UIEdgeInsets.zero
            tableView.layer.cornerRadius = 5.0
            tableView.separatorColor = UIColor.lightGray
            tableView.backgroundColor = UIColor.white.withAlphaComponent(0.7)
            
            if self.isFirstResponder {
                superview?.bringSubviewToFront(self)
            }
            
            tableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resultList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomSearchTFCell", for: indexPath) as UITableViewCell
        cell.backgroundColor = UIColor.clear
        cell.textLabel?.text = resultList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.text = resultList[indexPath.row]
        switch self.tag {
        case 0, 1:
            let zn = zoneChart[resultList[indexPath.row]]!
            self.getZoneDelegate?.selectedZonefromTF(zone: zn, forType: self.tag)
        case 2, 3, 4, 5, 6:
            let price = additionalCharges[resultList[indexPath.row]]!
            self.getPriceDelegate?.priceForAdditional(price: price, forTag: self.tag)
        default:
            return
        }
        
        tableView.isHidden = true
        self.endEditing(true)
    }
    
}
