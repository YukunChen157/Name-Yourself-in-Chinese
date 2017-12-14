//
//  ModelPerister.swift
//  project1
//
//  Created by chen, junyang on 11/28/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class ModelPerister: NSObject{
    static let ModelArchiveURL: NSURL = {
        let documentDirectories = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = documentDirectories.first!
        return documentDirectory.appendingPathComponent("Model.archive") as NSURL
    }()
    
    class func setModel(_ model: Model) -> Bool {
//        print("set model")
//        print(model.Lastname)
        return NSKeyedArchiver.archiveRootObject(model, toFile: ModelArchiveURL.path!)
    }
    
    class func getModel() -> Model{
        if let model = NSKeyedUnarchiver.unarchiveObject(withFile: ModelArchiveURL.path!) as? Model{
//            print("if")
            return model
        }else{
//            print("else")
            return Model()
        }
    }
}
