//
//  ViewController.swift
//  weightApp
//
//  Created by Mohamed Gamal on 5/1/19.
//  Copyright © 2019 ME. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightText: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var weightText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func actionButton(_ sender: UIButton) {
        
         let height = Int(heightText.text!)
         let weight = Int(weightText.text!)
        
        if(height != nil && weight != nil){
            if(height! > 0 && weight! > 0){
        let result = height! - weight!
        resultImage.isHidden = false
        resultLabel.isHidden = false
            if (result > 100){
                resultLabel.text = "you are thin"
                resultImage.image = UIImage(named: "thinImage")
                
                
            }else if (result < 100) {
                resultLabel.text = "you are fat"
                resultImage.image = UIImage (named: "fixed image")
                
            }else if (result == 100){
                resultLabel.text = "you are perfect well"
                resultImage.image = UIImage (named: "healthy image")
                
            }
            }else{
                resultLabel.isHidden = false
                resultLabel.text = "error number"
            }
       
        
        }else{
            resultLabel.isHidden = false
            resultLabel.text = "please fill empty fields"
        }
        
        
        
    }
}

