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
        self.watchCountValue += 1;
        self.watchCounterLabel.setText(watchCountValue.description)
    }
    @IBAction func decrement() {
        self.watchCountValue -= 1;
        self.watchCounterLabel.setText(watchCountValue.description)
    }
    @IBAction func reset() {
        self.watchCountValue = 0;
        self.watchCounterLabel.setText(watchCountValue.description)
    }
    
    var watchCountValue = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        self.watchCounterLabel.setText(watchCountValue.description)
        
    }

}
