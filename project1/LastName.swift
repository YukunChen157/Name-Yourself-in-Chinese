//
//  LastName.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import Foundation

class LastName: NSObject, NSCoding{
    var Word: String
    var pronunciation : String
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(Word, forKey: "Word")
        aCoder.encode(pronunciation, forKey: "pronunciation")
    }
    
    required init(coder aDecoder: NSCoder) {
        Word = aDecoder.decodeObject(forKey: "Word") as! String
        pronunciation = aDecoder.decodeObject(forKey: "pronunciation") as! String
    }
    
    init(Word: String, pronunciation : String){
        self.Word = Word
        self.pronunciation = pronunciation
    }
}
