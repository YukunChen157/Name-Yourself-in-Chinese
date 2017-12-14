//
//  ImageFetcher.swift
//  project1
//
//  Created by Zixiang Liu on 12/13/17.
//  Copyright © 2017 chen, junyang. All rights reserved.

import UIKit

enum ImageFetchError: Error {
    case BadURL
    case ImageFetchFailed
}

enum ImageFetchResult {
    case ImageSuccess(UIImage)
    case ImageFailure(Error)
}

class ImageFetcher {
    let session = URLSession(configuration: URLSessionConfiguration.default)
    
    func fetchImage(duration : Double, url: String, completion: @escaping (ImageFetchResult) -> Void) {
        if let imageURL = URL(string: url) {
            let request = URLRequest(url: imageURL)
            
            let task = session.dataTask(with: request) {
                (data, response, error) -> Void in
                
                guard let imageData = data,
                    let _ = UIImage.init(data: imageData) else {
                        if data == nil {
                            completion(.ImageFailure(error!))
                        }
                        else {
                            completion(.ImageFailure(ImageFetchError.ImageFetchFailed))
                        }
                        return
                }
                
                guard let source = CGImageSourceCreateWithData(imageData as CFData, nil) else {
                    print("SwiftGif: Source for the image does not exist")
                    return
                }
                
                let count = CGImageSourceGetCount(source)
                var images = [UIImage]()
                // Fill arrays
                for i in 0..<count {
                    // Add image
                    if let image = CGImageSourceCreateImageAtIndex(source, i, nil) {
                        images.append(UIImage.init(cgImage: image))
                    }
                }
                
                if let gifimage = UIImage.animatedImage(with: images, duration: duration) {
                    completion(.ImageSuccess(gifimage))
                } else{
                    print("Nil GIF")
                }
            }
            task.resume()
        }
        else {
            completion(.ImageFailure(ImageFetchError.BadURL))
        }
    }
}
