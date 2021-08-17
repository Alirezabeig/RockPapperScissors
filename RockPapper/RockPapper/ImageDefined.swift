//
//  ImageDefined.swift
//  RockPapper
//
//  Created by Alireza on 8/17/21.
//

import UIKit

class ImageDefined : UIViewController {
     
    var imageFirstValue : Int?
    var imageSecondValue : Int?
    var imageThirdValue : Int?
    
    
    @IBOutlet weak var textReceiver: UILabel!
    @IBOutlet weak var imageReceiver: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        if imageFirstValue == self.imageFirstValue {
            self.imageReceiver.image = #imageLiteral(resourceName: "RockCrushesScissors")
        }
        else if imageSecondValue == self.imageSecondValue {
            self.imageReceiver.image = #imageLiteral(resourceName: "d1")
        }
        else {
            self.imageReceiver.image = #imageLiteral(resourceName: "d2")
        }
        
        
    }

    
}
