//
//  SignUpViewController.swift
//  Text Extraction
//
//  Created by MacBook on 16/01/2024.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var bg_view_for_gradient: UIView!
    @IBOutlet weak var sign_up_view: UIView!
    @IBOutlet weak var user_name_view: UIView!
    @IBOutlet weak var email_view: UIView!
    @IBOutlet weak var password_view: UIView!
    @IBOutlet weak var comfirm_password: UIView!
    @IBOutlet weak var image_view: UIView!
    @IBOutlet weak var user_profile_image: UIImageView!
    
    @IBOutlet weak var user_name_TF: UITextField!
    @IBOutlet weak var user_email_TF: UITextField!
    @IBOutlet weak var user_password_TF: UITextField!
    @IBOutlet weak var user_comfirm_password_TF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let topColor = UIColor(red: 0.3393977582, green: 0.2109189034, blue: 0.3723678589, alpha: 1)
        let bottomColor = UIColor(red: 0.8310738802, green: 0.3672667444, blue: 0.6017774343, alpha: 1)
        
//        let gradient = UIColor(#colorLiteral(red: 0.7209069133, green: 0.2391627431, blue: 0.4958327413, alpha: 1))
//        let gradient_two = UIColor(#colorLiteral(red: 0.8954240084, green: 0.2681474686, blue: 0.5407798886, alpha: 1))
        
        applyGradient(to: bg_view_for_gradient, colors: [topColor, bottomColor], startPoint: CGPoint(x: 0.5, y: 0.0), endPoint: CGPoint(x: 0.5, y: 1.0))
//        applyGradient(to: sign_up_view, colors: [gradient, gradient_two], startPoint: CGPoint(x: 0.0, y: 0.0), endPoint: CGPoint(x: 1.0, y: 1.0))
        
        
        image_view.layer.cornerRadius = 25.0
        user_profile_image.layer.cornerRadius = 25.0
        user_profile_image.contentMode = .scaleAspectFit
        
        user_name_view.layer.cornerRadius = 20.0
        email_view.layer.cornerRadius = 20.0
        password_view.layer.cornerRadius = 20.0
        comfirm_password.layer.cornerRadius = 20.0
        sign_up_view.layer.cornerRadius = 20.0
        
        user_name_TF.backgroundColor = UIColor.clear
        user_email_TF.backgroundColor = UIColor.clear
        user_password_TF.backgroundColor = UIColor.clear
        user_comfirm_password_TF.backgroundColor = UIColor.clear
        
//        user_name_TF.layer.borderColor = UIColor.clear.cgColor
//        user_email_TF.layer.borderColor = UIColor.clear.cgColor
//        user_password_TF.layer.borderColor = UIColor.clear.cgColor
//        user_comfirm_password_TF.layer.borderColor = UIColor.clear.cgColor
        
//        user_name_TF.layer.borderWidth = 0.0
//        user_email_TF.layer.borderWidth = 0.0
//        user_password_TF.layer.borderWidth = 0.0
//        user_comfirm_password_TF.layer.borderWidth = 0.0
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

