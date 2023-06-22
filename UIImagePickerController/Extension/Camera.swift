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
        guard let imageOriginal = info[.originalImage] as? UIImage else { return }
        imageHandled.image = imageOriginal
        
        picker.dismiss(animated: true)
    }
}
