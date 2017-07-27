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

