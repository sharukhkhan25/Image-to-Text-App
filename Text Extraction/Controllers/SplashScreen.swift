//
//  SplashScreen.swift
//  Text Extraction
//
//  Created by MacBook on 16/01/2024.
//

import UIKit
import Lottie
class SplashScreen: UIViewController {
    private var animationView: LottieAnimationView?

    override func viewDidLoad() {
        super.viewDidLoad()
        let topColor = UIColor(red: 0.3393977582, green: 0.2109189034, blue: 0.3723678589, alpha: 1)
        let bottomColor = UIColor(red: 0.8310738802, green: 0.3672667444, blue: 0.6017774343, alpha: 1)
        
//        applyGradient(to: splashbg, colors: [topColor, bottomColor], startPoint: CGPoint(x: 0.5, y: 0.0), endPoint: CGPoint(x: 0.5, y: 1.0))
        // Do any additional setup after loading the view.
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
//            self.navigateToNextScreen()
//        }

    }
    
    func navigateToNextScreen() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
          let homeViewController = storyboard.instantiateViewController(withIdentifier: "SignUpViewController")
          let navigationController = UINavigationController(rootViewController: homeViewController)
          
          UIApplication.shared.windows.first?.rootViewController = navigationController
          UIApplication.shared.windows.first?.makeKeyAndVisible()
    }

    func applyGradient(to view: UIView, colors: [UIColor], startPoint: CGPoint, endPoint: CGPoint) {
        // Create a CAGradientLayer
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = colors.map { $0.cgColor }
        gradientLayer.startPoint = startPoint
        gradientLayer.endPoint = endPoint
        
        // Add the gradient layer to the view's layer
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    

}
