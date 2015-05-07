//
//  ResetController.swift
//  WatchCounter
//
//  Created by Adi-Hackintosh on 2015-05-07.
//  Copyright (c) 2015 AT. All rights reserved.
//

import WatchKit
import Foundation


class ResetController: WKInterfaceController {
    
    @IBOutlet weak var resetToZeroLabel: WKInterfaceLabel!
    
    @IBAction func positive() {
        setLabel()
    }
    @IBAction func negative() {
        setLabel()
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        setLabel()
        
    }
    
    /*
    override func willActivate() {
        super.willActivate()
        
        self.setTitle(" ")
    }*/
    
    func setLabel() {
        let helveticaFont = UIFont(name: "NeueHaasUnicaPro-Thin", size: 20)!
        var fontAttrs = [NSFontAttributeName : helveticaFont]
        var attrString = NSAttributedString(string: "Reset to 0?", attributes: fontAttrs)
        self.resetToZeroLabel.setAttributedText(attrString)
    }
    
}
