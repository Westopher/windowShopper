//
//  ViewController.swift
//  windowShopper
//
//  Created by West Kraemer on 10/12/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.6117921472, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        //adding the target tells the buttons what to do when it is tapped
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //set the button as the accessory view
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        //start with these labels hidden
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate() {
        //to make sure text field isn't empty
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        //clear text fields and hide labels of results
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
   

}

