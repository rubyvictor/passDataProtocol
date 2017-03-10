//
//  VCInitial.swift
//  passDataProtocol
//
//  Created by Victor Lee on 10/3/17.
//  Copyright © 2017 VictorLee. All rights reserved.
//

import UIKit

class VCinitial: UIViewController, VCFinalDelegate {
    
    @IBAction func btnPerformSequePressed(_ sender: Any) {
        performSegue(withIdentifier: "VCInitialToVCFinal", sender: nil)
        print("button pressed to perform seque")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VCFinal {
            destination.delegate = self
        }
    }
    
    func finishPassing(array: [String]) {
        print("Yay, conformed to protocol and data is passed to VCInitial")
        print(array)
    }
    
    
    
    
}
