//
//  VCFinal.swift
//  passDataProtocol
//
//  Created by Victor Lee on 10/3/17.
//  Copyright © 2017 VictorLee. All rights reserved.
//

import UIKit

protocol VCFinalDelegate {
    func finishPassing(array: [String])
    
}

class VCFinal: UIViewController {
    
    var delegate: VCFinalDelegate?
    
    @IBAction func btnPressedPassData(_ sender: Any) {
        
        delegate?.finishPassing(array: ["a", "b", "c", "d", "e"])
        performSegue(withIdentifier: "unwindSegueToVCInitial", sender: nil)
            print("Segue unwind")
    }
    
    
    deinit {
        print("\(delegate) is being deinitialised")
            
        }
        
}
