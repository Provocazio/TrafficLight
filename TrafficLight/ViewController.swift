//
//  ViewController.swift
//  TrafficLight
//
//  Created by Никита on 11.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lights: UIStackView!
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var actionButton: UIButton!
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = self.redLight.frame.height/2
        yellowLight.layer.cornerRadius = self.yellowLight.frame.height/2
        greenLight.layer.cornerRadius = self.greenLight.frame.height/2
        
        actionButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }

    var switcher = 0
    
    @IBAction func goAction(_ sender: Any) {

            actionButton.setTitle("Next", for: .normal)
//        for switcher in 0...3{
        switcher += 1
        if switcher == 4 {
            switcher = 1
        }
        switch switcher {
        case 1:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            yellowLight.alpha = 0.3
        case 2:
            redLight.alpha = 0.3
            greenLight.alpha = 0.3
            yellowLight.alpha = 1
        case 3:
            redLight.alpha = 0.3
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
        default:
            break
        }
        
    }

}

