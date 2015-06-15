//
//  ViewController.swift
//  ColorMaker
//
//  Created by CHRISTOPHER WATSON on 06/15/15.
//  Copyright (c) 2015 CWatson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeColorView() {
        let r: CGFloat = CGFloat(self.redControl.value)
        let g: CGFloat = CGFloat(self.greenControl.value)
        let b: CGFloat = CGFloat(self.blueControl.value)
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        
    
    }
    @IBAction func redSliderValueChanged(sender: UISlider) {
        var currentValue = Int(sender.value*255)
        
        redLabel.text = "\(currentValue)"
    }

    @IBAction func blueSliderValueChanged(sender: UISlider) {
        var currentValue = Int(sender.value*255)
        
        blueLabel.text = "\(currentValue)"
    }
    
    @IBAction func greenSliderValueChanged(sender: UISlider) {
        var currentValue = Int(sender.value*255)
        
        greenLabel.text = "\(currentValue)"
    }
   
    
}

