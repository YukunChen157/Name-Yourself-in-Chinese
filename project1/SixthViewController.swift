//
//  SixthViewController.swift
//  project1
//
//  Created by chen, junyang on 11/28/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController,UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]){
        let photo = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        imageView.image = photo
        
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func takephoto(){
        let picker = UIImagePickerController()
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            picker.sourceType = .camera
        }else{
            picker.sourceType = .photoLibrary
        }
        picker.delegate = self
        
        present(picker, animated: true, completion: nil)
    }
    
    @IBAction func saveImage(){
        UIGraphicsBeginImageContextWithOptions(CGSize(width: imageView.frame.width, height: imageView.frame.height), false, 0);
        self.view.drawHierarchy(in: CGRect(x: -imageView.frame.origin.x, y: -imageView.frame.origin.y, width: self.view.frame.width, height: self.view.frame.height), afterScreenUpdates: true)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    }
    
}








