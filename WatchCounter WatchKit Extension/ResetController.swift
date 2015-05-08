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
    
    var parentInterfaceController : InterfaceController!
    
    @IBAction func positive() {
        parentInterfaceController.watchCountValue = 0
        self.dismissController()
    }
    @IBAction func negative() {
        self.dismissController()
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        parentInterfaceController = context as! InterfaceController
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
