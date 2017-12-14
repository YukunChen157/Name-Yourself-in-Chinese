//
//  FirstName.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import Foundation

class FirstName: NSObject, NSCoding{
    var Word: String
    var BiHua: Int
    var Sex: Int //0: neutral, 1: male, 2: female
    var YiJing: Int //0: easy, 1: normal, 2: hard
    let Yijings : [String] = ["trivial","Modish","Quaint"]
    var meaning : String
    var pronunciation : String
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(Word, forKey: "Word")
        aCoder.encode(BiHua, forKey: "BiHua")
        aCoder.encode(Sex, forKey: "Sex")
        aCoder.encode(YiJing, forKey: "YiJing")
        aCoder.encode(meaning, forKey: "meaning")
        aCoder.encode(pronunciation, forKey: "pronunciation")
    }
    
    required init(coder aDecoder: NSCoder) {
        Word = aDecoder.decodeObject(forKey: "Word") as! String
        BiHua = aDecoder.decodeInteger(forKey: "BiHua")
        Sex = aDecoder.decodeInteger(forKey: "Sex")
        YiJing = aDecoder.decodeInteger(forKey: "YiJing")
        meaning = aDecoder.decodeObject(forKey: "meaning") as! String
        pronunciation = aDecoder.decodeObject(forKey: "pronunciation") as! String
    }
    
    init(Word: String, Bihua: Int, Sex: Int, YiJing: Int, meaning: String, pronunciation: String){
        self.Word = Word
        self.BiHua = Bihua
        self.Sex = Sex
        self.YiJing = YiJing
        self.meaning = meaning
        self.pronunciation = pronunciation
    }
}
