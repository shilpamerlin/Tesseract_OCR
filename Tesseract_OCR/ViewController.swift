//
//  ViewController.swift
//  Tesseract_OCR
//
//  Created by Shilpa Joy on 2019-02-19.
//  Copyright © 2019 Shilpa Joy. All rights reserved.
//

import UIKit
import TesseractOCR

class ViewController: UIViewController,G8TesseractDelegate {

    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tesseract = G8Tesseract(language: "eng"){
            tesseract.delegate = self
            tesseract.image = UIImage(named: "im")?.g8_blackAndWhite()
            tesseract.recognize()
            textView.text = tesseract.recognizedText
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func progressImageRecognition(for tesseract: G8Tesseract!) {
        print("Test Recogniation Progress\(tesseract.progress)%")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

