//
//  InterfaceController.swift
//  WatchCounter WatchKit Extension
//
//  Created by Adi-Hackintosh on 2015-05-04.
//  Copyright (c) 2015 AT. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var watchCounterLabel: WKInterfaceLabel!
    
    @IBAction func increment() {
        if watchCountValue < maxCountValue {
            self.watchCountValue += 1
        }
        setLabel()
    }
    @IBAction func decrement() {
        if watchCountValue > minCountValue {
            self.watchCountValue -= 1
        }
        setLabel()
    }
    @IBAction func reset() {
        if watchCountValue != 0 {
            self.presentControllerWithName("ResetScreen",context: self)
        }
    }
    
    var watchCountValue = 0
    let maxCountValue = 9999999
    let minCountValue = -999999
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        setLabel()
        
    }
    
    override func willActivate() {
        super.willActivate()
        
        setLabel()
    }
    
    func setLabel() {
        let helveticaFont = UIFont(name: "NeueHaasUnicaPro-Thin", size: 40)!
        var fontAttrs = [NSFontAttributeName : helveticaFont]
        var attrString = NSAttributedString(string: watchCountValue.description, attributes: fontAttrs)
        self.watchCounterLabel.setAttributedText(attrString)
    }

}
