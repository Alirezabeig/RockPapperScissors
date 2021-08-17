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
        
        if let imageFirstValue = self.imageFirstValue {
            self.imageReceiver.image = UIImage(named: "d\(imageFirstValue)")
        } else if let imageSecondValue = self.imageSecondValue {
            self.imageReceiver.image = UIImage(named: "d\(imageSecondValue)")
        } else if let imageThirdValue = self.imageThirdValue {
            self.imageReceiver.image = UIImage(named: "d\(imageThirdValue)")
        }
        
    }
    
    
    
    
}
