//
//  CurrencyTxtField.swift
//  windowShopper
//
//  Created by West Kraemer on 10/12/18.
//  Copyright © 2018 West Kraemer. All rights reserved.
//

import UIKit

//to ensure IB reflects the actual look of the app, first add IBDesignable, then add prep for interfacebuilder func, with the customizedview func you created (containing your customized views...). Finally, you want to call these views in your awake from nib func.
@IBDesignable

class CurrencyTxtField: UITextField {

    
    override func prepareForInterfaceBuilder() {
        customizedView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
        }
        
        func customizedView {
            backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.25)
            layer.cornerRadius = 5.0
            textAlignment = .center
            
            if let p = placeholder {
                let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }

}
