//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Alexander Fedotov on 06.12.2024.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorsView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsView.layer.cornerRadius = 10
        
        updateColors()
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)

    }

    @IBAction func redSliderAction() {

        updateColors()
    }
    
    @IBAction func greenSliderAction() {

        updateColors()
    }
    
    @IBAction func blueSliderAction() {

        updateColors()
    }
    
    
    private func updateColors() {
        colorsView.backgroundColor = UIColor(
             red: CGFloat(redSlider.value),
             green: CGFloat(greenSlider.value),
             blue: CGFloat(blueSlider.value),
             alpha: 1
             )
    }
}

