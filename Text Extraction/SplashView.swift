//
//  SplashView.swift
//  Text Extraction
//
//  Created by MacBook on 16/01/2024.
//

import UIKit
import Lottie

class SplashView: UIView {
    private var animationView: LottieAnimationView?

    override init(frame: CGRect) {
          super.init(frame: frame)
        animationslotieBirds()
        print("HELLO WORLD12132")

      }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        animationslotieBirds()
        
    }
    func  animationslotieBirds()
    {
        animationView = .init(name: "Animation")
        animationView!.frame = self.bounds
        animationView!.loopMode = .loop
        self.addSubview(animationView!)
        animationView!.play()
    }
}

