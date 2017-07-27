//
//  Converter.swift
//  FinalProject
//
//  Created by Jakob Daugherty on 7/27/17.
//  Copyright © 2017 JakobDaugherty. All rights reserved.
//

import UIKit

class Converter: NSObject {
    enum Conversion {
        case FtoC, CtoF, MtoKm, KmtoM
    }
    var conversion: Conversion = Conversion.FtoC
    var outputText: String = "°C"
    var inputText: String = "°F"
    
    override init() {
        self.conversion = Conversion.FtoC
    }
    
    func setConversion(newValue: Int){
        switch newValue {
        case 1:
            self.conversion = Conversion.FtoC
            self.outputText = "°C"
            self.inputText = "°F"
        case 2:
            self.conversion = Conversion.CtoF
            self.outputText = "°F"
            self.inputText = "°C"
        case 3:
            self.conversion = Conversion.MtoKm
            self.outputText = "Km"
            self.inputText = "M"
        case 4:
            self.conversion = Conversion.KmtoM
            self.outputText = "M"
            self.inputText = "Km"
        //default is to go to FtoC conversion
        default:
            self.conversion = Conversion.FtoC
            self.outputText = "°C"
            self.inputText = "°F"
            
        }
        
    }

}
