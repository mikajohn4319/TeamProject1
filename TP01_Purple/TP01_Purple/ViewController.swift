//
//  ViewController.swift
//  TP01_Purple
//
//  Created by Perkin, Landon on 2/10/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var startingImage: UIImageView!
    
    @IBOutlet weak var ImageOutlet: UIImageView!
    
    @IBAction func GreyActionButton(_ sender: Any) {
        let image = startingImage.image!
        let ciimage = CIImage(image: image)
        
        let filter = CIFilter(name: "CIPhotoEffectMono",
        parameters: [
            "inputImage": ciimage!
        ])
        
        let outputImage = filter?.outputImage
        ImageOutlet.image = UIImage(ciImage: outputImage!)
    }
    @IBAction func SepiaActionButton(_ sender: Any) {
        
    }
    @IBAction func FlipActionButton(_ sender: Any) {
        
    }
}

