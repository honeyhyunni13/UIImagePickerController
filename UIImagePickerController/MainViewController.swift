//
//  MainViewController.swift
//  UIImagePickerController
//
//  Created by Sanghyun on 2023/06/21.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var imagePicker: UIImagePickerController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "UIImagePickerController Practice"
        
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
