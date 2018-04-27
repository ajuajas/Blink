//
//  ViewController.swift
//  Blink
//
//  Created by Ajas MA on 25/04/18.
//  Copyright © 2018 teamta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkingLabel(frame: CGRect.init(x: 10, y: 20, width: 200, height: 230))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "BLINK!"
        blinkingLabel.font = UIFont.boldSystemFont(ofSize: 60)
        blinkingLabel.textAlignment = .center
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton(frame: CGRect(x: self.view.frame.size.width - 135, y: self.view.frame.size.height - 60, width: 125, height: 30))
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        toggleButton.backgroundColor = UIColor.lightGray
        toggleButton.layer.cornerRadius = 3.0
        toggleButton.layer.borderWidth = 1.0
        toggleButton.layer.borderColor = UIColor.red.cgColor
        toggleButton.addTarget(self, action: #selector(toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        blinkingLabel.center = self.view.center
    }
    
    @objc func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
    
}
