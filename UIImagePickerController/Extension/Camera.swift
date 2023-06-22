//
//  Camera.swift
//  UIImagePickerController
//
//  Created by Sanghyun on 2023/06/22.
//

import UIKit


extension MainViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(
        _ picker: UIImagePickerController,
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
    ) {
        picker.dismiss(animated: true)
    }
}
