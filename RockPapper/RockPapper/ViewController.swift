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
      
   
    
    // MARK : StoryBoard Segue with no passin
    @objc func buttonAction(sender: UIButton!) {
        performSegue(withIdentifier: "imageResponse", sender: self)
    }
    
    
    
    
    // MARK: Programmatically Segue

    @IBAction func papperPressed(_ sender: UIButton) {
        var contro = ImageDefined()
        contro = storyboard?.instantiateViewController(identifier: "ImageDefined") as! ImageDefined
        let val2 = 2
        contro.imageSecondValue = val2
        present(contro, animated: true, completion: nil)
    }
   
    
    // override func to Seque
    // override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // let controller = segue.destination as! DiceViewController
    // controller.firstValue = randomDiceValue()
    // controller.secondValue = randomDiceValue()
    
    @IBAction func rockButton(_ sender: UIButton) {
        
        var controll = ImageDefined()
        controll = storyboard?.instantiateViewController(identifier: "ImageDefined") as! ImageDefined
        let val3 = 3
        controll.imageThirdValue = val3
        present(controll, animated: true, completion: nil)
    }
    
    
}
    


