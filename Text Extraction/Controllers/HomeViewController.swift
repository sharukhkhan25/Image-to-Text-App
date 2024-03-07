//
//  ViewController.swift
//  Text Extraction
//
//  Created by MacBook on 09/01/2024.
//

import UIKit

class HomeViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    var imagePicker = UIImagePickerController()

    @IBOutlet weak var textrecoginzerlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.bringSubviewToFront(textrecoginzerlbl)
        textrecoginzerlbl.textColor = UIColor.black
        initialSetup()
    }
    private func initialSetup() {
        view.backgroundColor = .white
        title = "Capture Photo"
        
        let takePhotoButton = UIButton(type: .system)
        takePhotoButton.translatesAutoresizingMaskIntoConstraints = false
        takePhotoButton.setTitle("Take Photo", for: .normal)
        takePhotoButton.setTitleColor(.white, for: .normal)
        takePhotoButton.backgroundColor = UIColor.darkGray
        takePhotoButton.layer.cornerRadius = 5
        takePhotoButton.addTarget(self, action: #selector(handleTakePhoto), for: .touchUpInside)
        view.addSubview(takePhotoButton)
        
        takePhotoButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        takePhotoButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        takePhotoButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
        takePhotoButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
        let galleryButton = UIButton(type: .system)
                galleryButton.translatesAutoresizingMaskIntoConstraints = false
                galleryButton.setTitle("Gallery", for: .normal)
                galleryButton.setTitleColor(.white, for: .normal)
                galleryButton.backgroundColor = UIColor.blue
                galleryButton.layer.cornerRadius = 5
                galleryButton.addTarget(self, action: #selector(handleGallery), for: .touchUpInside)
                view.addSubview(galleryButton)
                
                galleryButton.topAnchor.constraint(equalTo: takePhotoButton.bottomAnchor, constant: 20).isActive = true
                galleryButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
                galleryButton.widthAnchor.constraint(equalToConstant: 120).isActive = true
                galleryButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
            }
    @objc private func handleTakePhoto() {
//        let controller = CustomCameraController()
//        self.present(controller, animated: true, completion: nil)
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "CustomCameraController") as! CustomCameraController
        self.present(nextViewController, animated:true, completion:nil)
    }
    
    @objc private func handleGallery() {
           print("Open Galeery")
           opengallery()
       }
    
    func opengallery()
    {
        DispatchQueue.main.async { [self] in
            if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
                print("Button capture")

                imagePicker.delegate = self
                imagePicker.sourceType = .savedPhotosAlbum
                imagePicker.allowsEditing = false

                present(imagePicker, animated: true, completion: nil)
            }
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.dismiss(animated: true, completion: { () -> Void in
                let photoPreviewContainer = PhotoPreviewView(frame: self.view.frame)
                photoPreviewContainer.photoImageView.image = image
                self.view.addSubview(photoPreviewContainer)
             
                
                photoPreviewContainer.onSavePhoto = { imagetotext in
                           // Navigate to another controller here
                    print("OCR TEXT FRoM IMAGE______ \(imagetotext)")
                    let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                    let nextViewController = storyBoard.instantiateViewController(withIdentifier: "textOcrToImageController") as! textOcrToImageController
                    nextViewController.texttoimage = imagetotext
                    self.present(nextViewController, animated:true, completion:nil)
                       }
            })
        }
    }

}


