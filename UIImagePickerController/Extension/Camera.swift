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
        didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]
    ) {
        guard let imageOriginal = info[.editedImage] as? UIImage else { return }
        
        picker.dismiss(animated: true) {
            self.imageHandled.image = imageOriginal
        }
    }
}
