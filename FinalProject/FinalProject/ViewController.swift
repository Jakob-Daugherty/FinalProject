//
//  ViewController.swift
//  FinalProject
//
//  Created by Jakob Daugherty on 7/26/17.
//  Copyright © 2017 JakobDaugherty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Conversion {
        case FtoC, CtoF, MtoKm, KmtoM
    }
    
    var conversion: Conversion = Conversion.FtoC

    @IBOutlet weak var outputLabel: UITextField!
    @IBOutlet weak var inputLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if conversion == Conversion.FtoC {
            inputLabel.text = "F"
            outputLabel.text = "C"
        }
        if conversion == Conversion.CtoF {
            inputLabel.text = "C"
            outputLabel.text = "F"
        }
        if conversion == Conversion.MtoKm {
            inputLabel.text = "M"
            outputLabel.text = "Km"
        }
        if conversion == Conversion.KmtoM {
            inputLabel.text = "Km"
            outputLabel.text = "M"
        }
        
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
            self.conversion = Conversion.FtoC
            self.viewDidLoad()
        }))
        alert.addAction(UIAlertAction(title: "celcius to fahrenheit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle celcius to fahrenheit
            self.conversion = Conversion.CtoF
            self.viewDidLoad()
        }))
        alert.addAction(UIAlertAction(title: "miles to kilometers", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle celcius to fahrenheit
            self.conversion = Conversion.MtoKm
            self.viewDidLoad()
        }))
        alert.addAction(UIAlertAction(title: "kilometers to miles", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            // handle celcius to fahrenheit
            self.conversion = Conversion.KmtoM
            self.viewDidLoad()
        }))
        self.present(alert, animated: true, completion: nil)
    }

}

