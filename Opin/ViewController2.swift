//
//  ViewController2.swift
//  Opin
//
//  Created by Apple on 8/7/18.
//  Copyright © 2018 C_Laugharn. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController2: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

var imagePicker = UIImagePickerController()
    var topsArray : [UIImage] = []
    var imageType : String = ""
    
    @IBOutlet weak var topsImage: UIImageView!
    
    @IBOutlet weak var bottomsImage: UIImageView!
    
    @IBOutlet weak var shoesImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }

    @IBAction func takeScreenshot(_ sender: Any) {
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.render(in: UIGraphicsGetCurrentContext()!)
        var sourceImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        UIImageWriteToSavedPhotosAlbum(sourceImage!, nil, nil, nil)
    }
    
    @IBAction func nextTop(_ sender: UIButton) {
        imageType = "Top"
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String: Any]) {
        
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            if imageType == "Top" {
                topsImage.image = selectedImage
            }
            else if imageType == "Bottom" {
                bottomsImage.image = selectedImage
            }
            else if imageType == "Shoes" {
                shoesImage.image = selectedImage
            }
        }
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func nextBottom(_ sender: UIButton) {
        imageType = "Bottom"
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func nextShoes(_ sender: UIButton) {
        imageType = "Shoes"
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
