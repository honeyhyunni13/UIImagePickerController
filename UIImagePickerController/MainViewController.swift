//
//  MainViewController.swift
//  UIImagePickerController
//
//  Created by Sanghyun on 2023/06/21.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = "UIImagePickerController Practice"
    }
    
    @IBAction func callCamera(_ sender: Any) {
        print("UIImagePickerController", "callCamera")
    }
    
    @IBAction func callAlbum(_ sender: Any) {
        print("UIImagePickerController", "callAlbum")
    }
    
    @IBAction func getProfile(_ sender: Any) {
        print("UIImagePickerController", "getProfile")
    }
}
