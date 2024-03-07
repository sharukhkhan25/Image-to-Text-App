//
//  textOcrToImageController.swift
//  Text Extraction
//
//  Created by MacBook on 09/01/2024.
//

import UIKit

class textOcrToImageController: UIViewController {

    
    @IBOutlet weak var textviewrecognizer: UITextView!
    
    var texttoimage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if texttoimage == ""
        {
            print("Not Recogized______ ")
        }
        // Do any additional setup after loading the view.
        
        else
        {
            
            DispatchQueue.main.async { [self] in
                self.textviewrecognizer.text = texttoimage
            }
            print("HELLO WORLD\(texttoimage)")

        }
        
    }
    

    @IBAction func donebtn(_ sender: Any) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.present(nextViewController, animated:true, completion:nil)
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
