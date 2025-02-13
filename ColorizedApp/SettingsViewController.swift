//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Alexander Fedotov on 06.12.2024.
//

import UIKit

final class settingsViewController: UIViewController {

    @IBOutlet var colorsView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsView.layer.cornerRadius = 20
        
        setColor()
        
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setColor()
        switch sender {
            case redSlider:
                redLabel.text = string(from: redSlider)
            case greenSlider:
                greenLabel.text = string(from: greenSlider)
            default:
                blueLabel.text = string(from: blueSlider)
        }
    }

    private func setColor() {
        colorsView.backgroundColor = UIColor(
            red: redSlider.value.cgFloat(),
            green: greenSlider.value.cgFloat(),
            blue: blueSlider.value.cgFloat(),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

extension Float {
    func cgFloat() -> CGFloat {
        CGFloat(self)
    }
}
