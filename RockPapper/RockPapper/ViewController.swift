//
//  ViewController.swift
//  RockPapper
//
//  Created by Alireza on 8/17/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scissorsButton: UIButton!
    
    @IBOutlet weak var papperButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // MARK : Button Programmed -
        let rocksButton = UIButton(frame: CGRect(x: 250, y: 350, width: 100, height: 50))
        
        if let image = UIImage(named: "rock.png") {
            rocksButton.setImage(image, for: .normal)
        }
        rocksButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

          self.view.addSubview(rocksButton)
    }
    
    
    
        // Generate a random Int32 using arc4Random
        
        // Return a more convenient Int, initialized with the random value
      
   
    
    // MARK : StoryBoard Segue
    @objc func buttonAction(sender: UIButton!) {
        performSegue(withIdentifier: "imageResponse", sender: self)
    }
    
    // MARK: Programmatically Segue

    @IBAction func papperPressed(_ sender: UIButton) {
        print("paper pressed")
    }
    
    

}

