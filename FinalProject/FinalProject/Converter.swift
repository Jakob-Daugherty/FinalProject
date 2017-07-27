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
        self.inputText = rawInput + " " + inputSuffix
        let rawValue = Double(rawInput)
        var outValue: Double!
        if rawValue != nil {
            if self.conversion == Conversion.FtoC {
                outValue = fahrenheitToCelcius(temperature: rawValue!)
            }
            if self.conversion == Conversion.CtoF {
                outValue = celciusToFahrenheit(temperature: rawValue!)
            }
            if self.conversion == Conversion.MtoKm {
                outValue = milesToKilometers(miles: rawValue!)
            }
            if self.conversion == Conversion.KmtoM {
                outValue = kilometersToMiles(kilometers: rawValue!)
            }
            self.outputText = String(format: "%.2f", outValue) + "" + outputSuffix
        } else {
            self.outputText = rawInput + " " + outputSuffix
        }
        
        
    }
    
    func fahrenheitToCelcius(temperature: Double) -> Double {
        var celcius: Double
        celcius = (temperature - 32) * 5/9
        return celcius
    }
    
    func celciusToFahrenheit(temperature: Double) -> Double {
        var fahrenheit: Double
        fahrenheit = temperature * 1.8 + 32
        return fahrenheit
    }
    
    func milesToKilometers(miles: Double) -> Double {
        var kilometers: Double
        kilometers = miles * 1.6
        return kilometers
    }
    
    func kilometersToMiles(kilometers: Double) -> Double {
        var miles: Double
        miles = kilometers * 0.6
        return miles
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
            self.inputSuffix = "mi"
            self.outputSuffix = "km"
        case 4:
            self.conversion = Conversion.KmtoM
            self.inputSuffix = "km"
            self.outputSuffix = "mi"
        //default is to go to FtoC conversion
        default:
            self.conversion = Conversion.FtoC
            self.inputSuffix = "°F"
            self.outputSuffix = "°C"
            
        }
        self.convert()
        
    }

}
