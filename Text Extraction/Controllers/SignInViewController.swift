//
//  SignInViewController.swift
//  Text Extraction
//
//  Created by MacBook on 16/01/2024.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var bg_view_for_gradient: UIView!
    @IBOutlet weak var email_view: UIView!
    @IBOutlet weak var password_view: UIView!
    @IBOutlet weak var sign_up_view: UIView!
    
    @IBOutlet weak var user_email_TF: UITextField!
    @IBOutlet weak var user_password_TF: UITextField!
    
    @IBOutlet weak var image_view: UIView!
    @IBOutlet weak var user_profile_image: UIImageView!
    
    
    override func viewDidLoad() {
        
        let topColor = UIColor(red: 0.3393977582, green: 0.2109189034, blue: 0.3723678589, alpha: 1)
        let bottomColor = UIColor(red: 0.8310738802, green: 0.3672667444, blue: 0.6017774343, alpha: 1)
        
        applyGradient(to: bg_view_for_gradient, colors: [topColor, bottomColor], startPoint: CGPoint(x: 0.5, y: 0.0), endPoint: CGPoint(x: 0.5, y: 1.0))
        
        
        image_view.layer.cornerRadius = 25.0
        user_profile_image.layer.cornerRadius = 25.0
        user_profile_image.contentMode = .scaleAspectFit
        
        email_view.layer.cornerRadius = 20.0
        password_view.layer.cornerRadius = 20.0
        sign_up_view.layer.cornerRadius = 20.0
        
        user_email_TF.backgroundColor = UIColor.clear
        user_password_TF.backgroundColor = UIColor.clear
        
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
