//
//  ImageViewController.swift
//  project1
//
//  Created by Zixiang Liu on 12/13/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class ImageBrowserViewController: UIViewController {
    
    var transferobj : TransferObj = TransferObj()
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var ReadingLabel : UILabel!
    
    var imageFetcher: ImageFetcher!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageFetcher = ImageFetcher()
    }
    
    @IBAction func changeSpeed(_ sender: UISlider) {
        if (!sender.isTracking) {
            print(sender.value)
            if let url = self.transferobj.url {
                imageFetcher.fetchImage(duration: Double(sender.value), url: url) {
                    (fetchResult) -> Void in
                    
                    switch(fetchResult) {
                    case let .ImageSuccess(gifimage):
                        OperationQueue.main.addOperation() {
                            self.imageView.image = gifimage
                        }
                    case let .ImageFailure(error):
                        print("error: \(error)")
                    }
                    
                }
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        if let word = self.transferobj.strObj{
            self.ReadingLabel.text = word
        }
        else{
            self.ReadingLabel.text = "气"
        }
        if let url = self.transferobj.url {
            imageFetcher.fetchImage(duration: 4, url: url) {
                (fetchResult) -> Void in
                
                switch(fetchResult) {
                case let .ImageSuccess(gifimage):
                    OperationQueue.main.addOperation() {
                        self.imageView.image = gifimage
                    }
                case let .ImageFailure(error):
                    print("error: \(error)")
                }
                
            }
        }
    }
}
