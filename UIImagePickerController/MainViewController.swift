//
//  MainViewController.swift
//  UIImagePickerController
//
//  Created by Sanghyun on 2023/06/21.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageHandled: UIImageView!
    @IBOutlet weak var buttonCamera: UIButton!
    @IBOutlet weak var buttonAlbum: UIButton!
    @IBOutlet weak var buttonUD: UIButton!
    
    var imagePicker: UIImagePickerController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "UIImagePickerController Practice"
        buttonCamera.setTitle("Camera", for: .normal)
        buttonAlbum.setTitle("Album", for: .normal)
        buttonUD.setTitle("UD", for: .normal)
        
        // UIImagePickerController
        imagePicker = UIImagePickerController()
        imagePicker?.delegate = self
    }
    
    // Camera
    @IBAction func callCamera(_ sender: Any) {
        guard let imagePicker = imagePicker else { return }
        
        imagePicker.sourceType = .camera
        self.present(imagePicker, animated: true)
    }
    
    @IBAction func callAlbum(_ sender: Any) {
        print("UIImagePickerController", "callAlbum")
    }
    
    @IBAction func getProfile(_ sender: Any) {
        print("UIImagePickerController", "getProfile")
    }
}
