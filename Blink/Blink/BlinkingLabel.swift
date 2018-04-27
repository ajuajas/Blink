//
//  BlinkLabel.swift
//  Blink
//
//  Created by Ajas MA on 25/04/18.
//  Copyright © 2018 teamta. All rights reserved.
//

import UIKit

class BlinkingLabel : UILabel {
    
    public func startBlinking() {
        let options : UIViewAnimationOptions = [.repeat, .autoreverse]
        UIView.animate(withDuration: 0.35, delay:0.0, options:options, animations: {
            self.alpha = 0
        }, completion: nil)
    }
    
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
