//
//  ViewController.swift
//  ZariLV
//
//  Created by macbookpro on 18/10/2017.
//  Copyright © 2017 Besnik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    
    var Zari = ["zari1","zari2","zari3","zari4","zari5","zari6"]
   override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            var numri1:Int = Int(arc4random_uniform(UInt32(Zari.count)))
            var fotot1:String = Zari[numri1]
            img1.image = UIImage.init(named: fotot1)
            
            var numri2:Int = Int(arc4random_uniform(UInt32(Zari.count)))
            
            var fotot2:String = Zari[numri2]
            img2.image = UIImage.init(named: fotot2)
    }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnRoll(_ sender: Any) {
        
        var numri1:Int = Int(arc4random_uniform(UInt32(Zari.count)))
        var fotot1:String = Zari[numri1]
        img1.image = UIImage.init(named: fotot1)
        
        var numri2:Int = Int(arc4random_uniform(UInt32(Zari.count)))
        
        var fotot2:String = Zari[numri2]
        img2.image = UIImage.init(named: fotot2)
        
    }
    
    
}

