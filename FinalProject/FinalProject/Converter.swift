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
    var inputSuffix: String = "°F"
    var outputSuffix: String = "°C"
    var outputText: String = ""
    var inputText: String = ""
    var rawInput: String = ""
    
    
    override init() {
        self.conversion = Conversion.FtoC
        self.inputText = rawInput + inputSuffix
        self.outputText = rawInput + outputSuffix
        
    }
    
    func convert() {
        self.inputText = rawInput + "" + inputSuffix
        self.outputText = rawInput + "" + outputSuffix
        
    }
    
    func uiHandle(newValue: String) {
        //handle UI values and add to raw input
        if newValue == "-" {
            if self.rawInput.contains("-") {
                self.rawInput.remove(at: self.rawInput.startIndex)
            } else {
                let temp: String = newValue + self.rawInput
                self.rawInput = temp
            }
            
        } else if newValue == "." {
            if self.rawInput.contains(".") {
                //do nothing
            } else {
                self.rawInput += newValue
            }
        } else if newValue == "C" {
            self.rawInput = ""
        } else {
            self.rawInput += newValue
        }
        self.convert()
        
        
    }
    
    func setConversion(newValue: Int){
        switch newValue {
        case 1:
            self.conversion = Conversion.FtoC
            self.inputSuffix = "°F"
            self.outputSuffix = "°C"
        case 2:
            self.conversion = Conversion.CtoF
            self.inputSuffix = "°C"
            self.outputSuffix = "°F"
        case 3:
            self.conversion = Conversion.MtoKm
            self.inputSuffix = " M"
            self.outputSuffix = "Km"
        case 4:
            self.conversion = Conversion.KmtoM
            self.inputSuffix = "Km"
            self.outputSuffix = " M"
        //default is to go to FtoC conversion
        default:
            self.conversion = Conversion.FtoC
            self.inputSuffix = "°F"
            self.outputSuffix = "°C"
            
        }
        self.convert()
        
    }

}
