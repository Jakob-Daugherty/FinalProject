//
//  ViewController.swift
//  FinalProject
//
//  Created by Jakob Daugherty on 7/26/17.
//  Copyright © 2017 JakobDaugherty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    
    var converter: Converter = Converter()

    @IBOutlet weak var outputLabel: UITextField!
    @IBOutlet weak var inputLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputLabel.text = converter.inputText
        outputLabel.text = converter.outputText

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func handle9(_ sender: Any) {
        //handle touch of 9
        converter.uiHandle(newValue: "9")
        viewDidLoad()
    }
    
    @IBAction func handle8(_ sender: Any) {
        //handle touch of 8
        converter.uiHandle(newValue: "8")
        viewDidLoad()
    }
    
    @IBAction func handle7(_ sender: Any) {
        //handle touch of 7
        converter.uiHandle(newValue: "7")
        viewDidLoad()
    }
    
    @IBAction func handle6(_ sender: Any) {
        //handle touch of 6
        converter.uiHandle(newValue: "6")
        viewDidLoad()
    }
    
    @IBAction func handle5(_ sender: Any) {
        //handle touch of 5
        converter.uiHandle(newValue: "5")
        viewDidLoad()
    }
    
    @IBAction func handle4(_ sender: Any) {
        //handle touch of 4
        converter.uiHandle(newValue: "4")
        viewDidLoad()
    }
    
    @IBAction func handle3(_ sender: Any) {
        //handle touch of 3
        converter.uiHandle(newValue: "3")
        viewDidLoad()
    }
    
  
    @IBAction func handle2(_ sender: Any) {
        //handle touch of 2
        converter.uiHandle(newValue: "2")
        viewDidLoad()
    }
    
    @IBAction func handle1(_ sender: Any) {
        //handle touch of 1
        converter.uiHandle(newValue: "1")
        viewDidLoad()
        
    }
    
    @IBAction func handle0(_ sender: Any) {
        //handle touch of 0
        converter.uiHandle(newValue: "0")
        viewDidLoad()
    }
    
    @IBAction func handleDecimal(_ sender: Any) {
        //handle touch of .
        converter.uiHandle(newValue: ".")
        viewDidLoad()
    }

    @IBAction func handleNegitive(_ sender: Any) {
        //handle touch of +/- 
        converter.uiHandle(newValue: "-")
        viewDidLoad()
        
    }
    @IBAction func handleC(_ sender: Any) {
        //handle touch of clear 
        converter.uiHandle(newValue: "C")
        viewDidLoad()
    }
    
    @IBAction func getConversion(_ sender: Any) {
        let alert = UIAlertController(title: "Choice", message: "Choose Conveter", preferredStyle: UIAlertControllerStyle.actionSheet)
        alert.addAction(UIAlertAction(title: "fahrenheit to celcius", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle fahrenheit to celcius
            self.converter.setConversion(newValue: 1)
            self.viewDidLoad()
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle celcius to fahrenheit
            self.converter.setConversion(newValue: 2)
            self.viewDidLoad()
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle celcius to fahrenheit
            self.converter.setConversion(newValue: 3)
            self.viewDidLoad()
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle celcius to fahrenheit
            self.converter.setConversion(newValue: 4)
            self.viewDidLoad()
        }))
        self.present(alert, animated: true, completion: nil)
    }

}

