//
//  Model.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import Foundation

class Model: NSObject, NSCoding{
    var Lastname: String
    var Firstname: String
    var Bihua: Int
    var Sex: Int //0:male, 1: female
    var Yijing: Int //index of [YiJing]
    var Firstnames: [FirstName] = []
    var outputLastName: LastName!
    var outputFirstNames: [FirstName] = []
    //var UniqueID: String
    
    var company : String!
    var jobtitle : String!
    var email : String!
    var phone : String!
    var address : String!
    
    var Names : [String] = []
    var allNames : [String] = []
    var selected : Int!
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(Lastname, forKey: "Lastname")
        aCoder.encode(Firstname, forKey: "Firstname")
        aCoder.encode(Bihua, forKey: "Bihua")
        aCoder.encode(Sex, forKey: "Sex")
        aCoder.encode(Yijing, forKey: "Yijing")
        //aCoder.encode(Firstnames, forKey: "Firstnames")
        //aCoder.encode(outputLastName, forKey: "outputLastName")
        //aCoder.encode(outputFirstNames, forKey: "outputFirstNames")
        //aCoder.encode(UniqueID, forKey: "UniqueID")
    }
    
    required init(coder aDecoder: NSCoder) {
        Lastname = aDecoder.decodeObject(forKey: "Lastname") as! String
        Firstname = aDecoder.decodeObject(forKey: "Firstname") as! String
        Bihua = aDecoder.decodeInteger(forKey: "Bihua")
        Sex = aDecoder.decodeInteger(forKey: "Sex")
        Yijing = aDecoder.decodeInteger(forKey: "Yijing")
        //Firstnames = aDecoder.decodeObject(forKey: "Firstnames") as! [FirstName]
        //outputLastName = aDecoder.decodeObject(forKey: "outputLastName") as! LastName
        //outputFirstNames = aDecoder.decodeObject(forKey: "outputFirstNames") as! [FirstName]
        //UniqueID = aDecoder.decodeObject(forKey: "UniqueID") as! String
    }
    
    func generateLastName(){
        let temp = Array(Lastname)
        if temp.count > 0 {
            let letter = temp[0]
            switch letter{
            case "A" :
                outputLastName = LastName(Word: "艾", pronunciation: "ai")
            case "a" :
                outputLastName = LastName(Word: "艾", pronunciation: "ai")
            case "B" :
                outputLastName = LastName(Word: "卞", pronunciation: "bian")
            case "b" :
                outputLastName = LastName(Word: "卞", pronunciation: "bian")
            case "C" :
                outputLastName = LastName(Word: "陈", pronunciation: "chen")
            case "c" :
                outputLastName = LastName(Word: "陈", pronunciation: "chen")
            case "D" :
                outputLastName = LastName(Word: "戴", pronunciation: "dai")
            case "d" :
                outputLastName = LastName(Word: "戴", pronunciation: "dai")
            case "E" :
                outputLastName = LastName(Word: "易", pronunciation: "yi")
            case "e" :
                outputLastName = LastName(Word: "易", pronunciation: "yi")
            case "F" :
                outputLastName = LastName(Word: "冯", pronunciation: "feng")
            case "f" :
                outputLastName = LastName(Word: "冯", pronunciation: "feng")
            case "G" :
                outputLastName = LastName(Word: "郭", pronunciation: "guo")
            case "g" :
                outputLastName = LastName(Word: "郭", pronunciation: "guo")
            case "H" :
                outputLastName = LastName(Word: "何", pronunciation: "he")
            case "h" :
                outputLastName = LastName(Word: "何", pronunciation: "he")
            case "I" :
                outputLastName = LastName(Word: "伊", pronunciation: "yi")
            case "i" :
                outputLastName = LastName(Word: "伊", pronunciation: "yi")
            case "J" :
                outputLastName = LastName(Word: "蒋", pronunciation: "jiang")
            case "j" :
                outputLastName = LastName(Word: "蒋", pronunciation: "jiang")
            case "K" :
                outputLastName = LastName(Word: "柯", pronunciation: "ke")
            case "k" :
                outputLastName = LastName(Word: "柯", pronunciation: "ke")
            case "L" :
                outputLastName = LastName(Word: "李", pronunciation: "li")
            case "l" :
                outputLastName = LastName(Word: "李", pronunciation: "li")
            case "M" :
                outputLastName = LastName(Word: "穆", pronunciation: "mu")
            case "m" :
                outputLastName = LastName(Word: "穆", pronunciation: "mu")
            case "N" :
                outputLastName = LastName(Word: "牛", pronunciation: "niu")
            case "n" :
                outputLastName = LastName(Word: "牛", pronunciation: "niu")
            case "O" :
                outputLastName = LastName(Word: "欧", pronunciation: "ou")
            case "o" :
                outputLastName = LastName(Word: "欧", pronunciation: "ou")
            case "P" :
                outputLastName = LastName(Word: "裴", pronunciation: "pei")
            case "P" :
                outputLastName = LastName(Word: "裴", pronunciation: "pei")
            case "Q" :
                outputLastName = LastName(Word: "钱", pronunciation: "qian")
            case "q" :
                outputLastName = LastName(Word: "钱", pronunciation: "qian")
            case "R" :
                outputLastName = LastName(Word: "任", pronunciation: "ren")
            case "r" :
                outputLastName = LastName(Word: "任", pronunciation: "ren")
            case "S" :
                outputLastName = LastName(Word: "孙", pronunciation: "sun")
            case "s" :
                outputLastName = LastName(Word: "孙", pronunciation: "sun")
            case "T" :
                outputLastName = LastName(Word: "田", pronunciation: "tian")
            case "t" :
                outputLastName = LastName(Word: "田", pronunciation: "tian")
            case "U" :
                outputLastName = LastName(Word: "吴", pronunciation: "wu")
            case "u" :
                outputLastName = LastName(Word: "吴", pronunciation: "wu")
            case "V" :
                outputLastName = LastName(Word: "魏", pronunciation: "wei")
            case "v" :
                outputLastName = LastName(Word: "魏", pronunciation: "wei")
            case "W" :
                outputLastName = LastName(Word: "王", pronunciation: "wang")
            case "w" :
                outputLastName = LastName(Word: "王", pronunciation: "wang")
            case "X" :
                outputLastName = LastName(Word: "许", pronunciation: "xu")
            case "x" :
                outputLastName = LastName(Word: "许", pronunciation: "xu")
            case "Y" :
                outputLastName = LastName(Word: "杨", pronunciation: "yang")
            case "y" :
                outputLastName = LastName(Word: "杨", pronunciation: "yang")
            case "Z" :
                outputLastName = LastName(Word: "赵", pronunciation: "zhao")
            case "z" :
                outputLastName = LastName(Word: "赵", pronunciation: "zhao")
            default:
                outputLastName = LastName(Word: "吴", pronunciation: "wu")
            }
        }else{
            outputLastName = LastName(Word: "空", pronunciation: "kong")
        }
        
    }
    
    func generateFirstName(){
        var candidates: [FirstName] = []
        for names in Firstnames{
            if(Bihua == names.BiHua){
                if(((Sex+1)==names.Sex)||(names.Sex==0)){
                    if((Yijing+1)==names.YiJing){
                        candidates.append(names)
                    }
                }
            }
        }
        if(candidates.count==0){
            outputFirstNames = [FirstName(Word: "傻逼", Bihua: 2, Sex: 1, YiJing: 2, meaning: "error", pronunciation: "error")]
        }else{
            if(candidates.count<5){
                outputFirstNames = candidates
            }else{
                var output: [FirstName] = []
                for _ in 1...5 {
                    let rFirstIndex = Int(arc4random_uniform(UInt32(candidates.count)))
                    output.append(candidates[rFirstIndex])
                    candidates.remove(at: rFirstIndex)
                }
                outputFirstNames = output
            }
        }
    }

    func doStuff(){
        self.generateLastName()
        self.generateFirstName()
        for i in self.outputFirstNames{
            self.Names.append("\(self.outputLastName.Word)\(i.Word)")
            self.allNames.append("\(self.outputLastName.Word)\(i.Word)")
        }
    }
    
    func deleteName(_ index: Int) -> String{
        let name = Names[index]
        Names.remove(at: index)
        return name
    }
    
    func getNumberRow() -> Int{
        return self.Names.count
    }
    
    convenience override init(){
        self.init(Lastname: "", Firstname: "", Bihua: 0, Sex: 0, Yijing: 0)
    }
    
    init(Lastname: String, Firstname: String, Bihua: Int, Sex: Int, Yijing: Int){
        self.Lastname = Lastname
        self.Firstname = Firstname
        self.Bihua = Bihua
        self.Sex = Sex
        self.Yijing = Yijing
        //UniqueID = NSUUID().uuidString
        Firstnames.append(FirstName(Word: "昱丁", Bihua: 2, Sex: 1, YiJing: 2, meaning: "going to live a life with bright future", pronunciation: "yu ding"))
        Firstnames.append(FirstName(Word: "甲欣", Bihua: 0, Sex: 0, YiJing: 1, meaning: "be respected and loved by others", pronunciation: "jia xin"))
        Firstnames.append(FirstName(Word: "驿枚", Bihua: 2, Sex: 1, YiJing: 3, meaning: "have an infinitely bright future", pronunciation: "yi mei"))
        Firstnames.append(FirstName(Word: "劲菘", Bihua: 2, Sex: 1, YiJing: 3, meaning: "be strong and tough like a pine", pronunciation: "jin song"))
        Firstnames.append(FirstName(Word: "贽之", Bihua: 1, Sex: 1, YiJing: 3, meaning: "well-educated person", pronunciation: "zhi zhi"))
        Firstnames.append(FirstName(Word: "晨郦", Bihua: 1, Sex: 1, YiJing: 2, meaning: "live a live bright and loveable", pronunciation: "chen li"))
        Firstnames.append(FirstName(Word: "易坚", Bihua: 0, Sex: 0, YiJing: 1, meaning: "being tough and strong", pronunciation: "yi jian"))
        Firstnames.append(FirstName(Word: "芳征", Bihua: 0, Sex: 0, YiJing: 2, meaning: "unique and aspring", pronunciation: "fang zhen"))
        Firstnames.append(FirstName(Word: "企超", Bihua: 0, Sex: 1, YiJing: 2, meaning: "have a competitive mind", pronunciation: "qi chao"))
        Firstnames.append(FirstName(Word: "霖一", Bihua: 2, Sex: 1, YiJing: 3, meaning: "considerate, nice, obliging", pronunciation: "lin yi"))
        Firstnames.append(FirstName(Word: "韵知", Bihua: 1, Sex: 0, YiJing: 1, meaning: "knowledgeable and well-educated", pronunciation: "yun zhi"))
        Firstnames.append(FirstName(Word: "凡笔", Bihua: 0, Sex: 1, YiJing: 1, meaning: "ordinary but talented", pronunciation: "fan bi"))
        Firstnames.append(FirstName(Word: "广计", Bihua: 0, Sex: 1, YiJing: 1, meaning: "consider all aspects", pronunciation: "guang ji"))
        Firstnames.append(FirstName(Word: "九亮", Bihua: 0, Sex: 1, YiJing: 2, meaning: "have a bright life", pronunciation: "jiu liang"))
        Firstnames.append(FirstName(Word: "凌智", Bihua: 1, Sex: 1, YiJing: 1, meaning: "smart and unique", pronunciation: "lin zhi"))
        Firstnames.append(FirstName(Word: "宝轩", Bihua: 1, Sex: 1, YiJing: 3, meaning: "be loved and cherished", pronunciation: "bao xuan"))
        Firstnames.append(FirstName(Word: "青合", Bihua: 1, Sex: 1, YiJing: 3, meaning: "lifeful and regraceful", pronunciation: "qing he"))
        Firstnames.append(FirstName(Word: "译凡", Bihua: 1, Sex: 0, YiJing: 2, meaning: "ordinary but well-educated", pronunciation: "yi fan"))
        Firstnames.append(FirstName(Word: "文姣", Bihua: 0, Sex: 2, YiJing: 3, meaning: "graceful and kind", pronunciation: "wen jiao"))
        Firstnames.append(FirstName(Word: "予人", Bihua: 0, Sex: 1, YiJing: 1, meaning: "always thinks others first", pronunciation: "yu ren"))
        Firstnames.append(FirstName(Word: "恩志", Bihua: 1, Sex: 1, YiJing: 1, meaning: "benevolence and ambition", pronunciation: "en zhi"))
        Firstnames.append(FirstName(Word: "丁迅", Bihua: 0, Sex: 1, YiJing: 3, meaning: "being fast and samrt", pronunciation: "ding xun"))
        Firstnames.append(FirstName(Word: "峭云", Bihua: 1, Sex: 1, YiJing: 3, meaning: "Plain living and high thinking", pronunciation: "qiao yun"))
        Firstnames.append(FirstName(Word: "新明", Bihua: 1, Sex: 1, YiJing: 2, meaning: "open mind and innovative", pronunciation: "xin ming"))
        Firstnames.append(FirstName(Word: "亦禅", Bihua: 2, Sex: 0, YiJing: 3, meaning: "live like a Buddhist", pronunciation: "yi chan"))
        Firstnames.append(FirstName(Word: "伟多", Bihua: 1, Sex: 1, YiJing: 1, meaning: "being great and resourceful", pronunciation: "wei duo"))
        Firstnames.append(FirstName(Word: "万君", Bihua: 0, Sex: 1, YiJing: 3, meaning: "eminent and prominent", pronunciation: "wan jun"))
        Firstnames.append(FirstName(Word: "阿伦", Bihua: 1, Sex: 1, YiJing: 2, meaning: "beyond ordinary people", pronunciation: "a lun"))
        Firstnames.append(FirstName(Word: "龙铁", Bihua: 1, Sex: 1, YiJing: 2, meaning: "strong and eminent", pronunciation: "long tie"))
        Firstnames.append(FirstName(Word: "乔榜", Bihua: 1, Sex: 1, YiJing: 3, meaning: "outstanding in the crowd", pronunciation: "qiao bang"))
        Firstnames.append(FirstName(Word: "乙铭", Bihua: 0, Sex: 1, YiJing: 3, meaning: "adorable and respected", pronunciation: "yi ming"))
        Firstnames.append(FirstName(Word: "昭春", Bihua: 1, Sex: 0, YiJing: 3, meaning: "as lively as spring", pronunciation: "zhao chun"))
        Firstnames.append(FirstName(Word: "方其", Bihua: 0, Sex: 1, YiJing: 2, meaning: "eminent and prominent", pronunciation: "fang qi"))
        Firstnames.append(FirstName(Word: "长太", Bihua: 0, Sex: 1, YiJing: 1, meaning: "talented and aspring", pronunciation: "chang tai"))
        Firstnames.append(FirstName(Word: "振卫", Bihua: 1, Sex: 1, YiJing: 2, meaning: "firm and girm", pronunciation: "zhen wei"))
        Firstnames.append(FirstName(Word: "名秋", Bihua: 1, Sex: 1, YiJing: 3, meaning: "being famous and respected", pronunciation: "ming qiu"))
        Firstnames.append(FirstName(Word: "曾艺", Bihua: 1, Sex: 0, YiJing: 1, meaning: "being versatile", pronunciation: "zeng yi"))
        Firstnames.append(FirstName(Word: "晋蒲", Bihua: 1, Sex: 1, YiJing: 3, meaning: "aspirant and aspring", pronunciation: "jin pu"))
        Firstnames.append(FirstName(Word: "海全", Bihua: 0, Sex: 1, YiJing: 2, meaning: "being patriotic and healthy", pronunciation: "hai quan"))
        Firstnames.append(FirstName(Word: "文根", Bihua: 1, Sex: 1, YiJing: 2, meaning: "live like a book fair", pronunciation: "wen gen"))
        Firstnames.append(FirstName(Word: "伯兴", Bihua: 0, Sex: 1, YiJing: 3, meaning: "dominant and happy", pronunciation: "bo xing"))
        Firstnames.append(FirstName(Word: "于青", Bihua: 1, Sex: 1, YiJing: 2, meaning: "lifeful and regraceful", pronunciation: "yu qing"))
        Firstnames.append(FirstName(Word: "日广", Bihua: 0, Sex: 1, YiJing: 1, meaning: "have a great future", pronunciation: "ri guang"))
        Firstnames.append(FirstName(Word: "五周", Bihua: 1, Sex: 1, YiJing: 3, meaning: "coonsiderate thoughtful", pronunciation: "wu zhou"))
        Firstnames.append(FirstName(Word: "国力", Bihua: 0, Sex: 1, YiJing: 1, meaning: "become a prominent figure in the country", pronunciation: "guo li"))
        Firstnames.append(FirstName(Word: "力朋", Bihua: 0, Sex: 1, YiJing: 2, meaning: "concern and care for friends", pronunciation: "li peng"))
        Firstnames.append(FirstName(Word: "飞禄", Bihua: 1, Sex: 1, YiJing: 3, meaning: "have a good future being an officer", pronunciation: "fei lu"))
        Firstnames.append(FirstName(Word: "大彤", Bihua: 1, Sex: 1, YiJing: 3, meaning: "strong and eminent", pronunciation: "da tong"))
        Firstnames.append(FirstName(Word: "子辰", Bihua: 0, Sex: 1, YiJing: 2, meaning: " as energetic as morning", pronunciation: "zi chen"))
        Firstnames.append(FirstName(Word: "诚希", Bihua: 1, Sex: 1, YiJing: 2, meaning: "honest and bright", pronunciation: "cheng xi"))
        Firstnames.append(FirstName(Word: "秀智", Bihua: 1, Sex: 2, YiJing: 1, meaning: "beautiful and wise", pronunciation: "xiu zhi"))
        Firstnames.append(FirstName(Word: "玉雪", Bihua: 0, Sex: 2, YiJing: 2, meaning: "pure and clean like snow", pronunciation: "yu xue"))
        Firstnames.append(FirstName(Word: "胭茗", Bihua: 1, Sex: 2, YiJing: 2, meaning: "as beautiful as seedlings", pronunciation: "yan ming"))
        Firstnames.append(FirstName(Word: "语嫣", Bihua: 2, Sex: 2, YiJing: 3, meaning: " highly cultured and steeped in propriety", pronunciation: "yu yan"))
        Firstnames.append(FirstName(Word: "清露", Bihua: 1, Sex: 2, YiJing: 2, meaning: "pure like a daw", pronunciation: "qing lu"))
        Firstnames.append(FirstName(Word: "垂玑", Bihua: 2, Sex: 2, YiJing: 3, meaning: "have smooth skin like jade", pronunciation: "chui ji"))
        Firstnames.append(FirstName(Word: "南春", Bihua: 1, Sex: 2, YiJing: 3, meaning: "live a life like spring", pronunciation: "nan chun"))
        Firstnames.append(FirstName(Word: "月花", Bihua: 0, Sex: 2, YiJing: 1, meaning: "luscious like the moon", pronunciation: "yue hua"))
        Firstnames.append(FirstName(Word: "庭花", Bihua: 0, Sex: 2, YiJing: 1, meaning: "smooth and pretty like a homebred flower", pronunciation: "ting hua"))
        Firstnames.append(FirstName(Word: "柔水", Bihua: 0, Sex: 2, YiJing: 1, meaning: "smooth like water", pronunciation: "rou shui"))
        Firstnames.append(FirstName(Word: "风晓", Bihua: 1, Sex: 2, YiJing: 1, meaning: "swift and knowledgeable", pronunciation: "feng xiao"))
        Firstnames.append(FirstName(Word: "麒瑛", Bihua: 2, Sex: 2, YiJing: 3, meaning: "pretty like jade and lucky like kylin", pronunciation: "qi ying"))
        Firstnames.append(FirstName(Word: "萧瑶", Bihua: 2, Sex: 2, YiJing: 3, meaning: "free and ufettered", pronunciation: "xiao yao"))
        Firstnames.append(FirstName(Word: "枫丽", Bihua: 1, Sex: 2, YiJing: 3, meaning: "beautiful like a maple leaf", pronunciation: "feng li"))
        Firstnames.append(FirstName(Word: "了霞", Bihua: 1, Sex: 2, YiJing: 2, meaning: "gorgeous like sunset", pronunciation: "liao xia"))
        Firstnames.append(FirstName(Word: "媛贞", Bihua: 2, Sex: 2, YiJing: 2, meaning: "upright beauty", pronunciation: "yuan zhen"))
        Firstnames.append(FirstName(Word: "幼颖", Bihua: 2, Sex: 2, YiJing: 2, meaning: "prominent since childhood", pronunciation: "you ying"))
        Firstnames.append(FirstName(Word: "宛娟", Bihua: 0, Sex: 2, YiJing: 2, meaning: "gentle and consderate", pronunciation: "wan juan"))
        Firstnames.append(FirstName(Word: "周琳", Bihua: 1, Sex: 2, YiJing: 3, meaning: "thoughtful and pretty like jade", pronunciation: "zhou ling"))
        Firstnames.append(FirstName(Word: "紫怡", Bihua: 1, Sex: 2, YiJing: 2, meaning: "elegant and beautiful", pronunciation: "zi yi"))
        Firstnames.append(FirstName(Word: "淮婷", Bihua: 1, Sex: 2, YiJing: 2, meaning: "beauty bron alongside the river", pronunciation: "huai ting"))
        Firstnames.append(FirstName(Word: "杞文", Bihua: 0, Sex: 0, YiJing: 2, meaning: "knowledgeable and read a lot of books", pronunciation: "qi wen"))
        Firstnames.append(FirstName(Word: "媛浛", Bihua: 2, Sex: 2, YiJing: 3, meaning: "have a good upbringing", pronunciation: "yuan han"))
        Firstnames.append(FirstName(Word: "史悦", Bihua: 1, Sex: 2, YiJing: 1, meaning: "happy and know the history", pronunciation: "shi yue"))
        Firstnames.append(FirstName(Word: "琳治", Bihua: 2, Sex: 2, YiJing: 2, meaning: "beatiful and have strong self-control", pronunciation: "lin zhi"))
        Firstnames.append(FirstName(Word: "长琴", Bihua: 0, Sex: 2, YiJing: 1, meaning: "good at art and music", pronunciation: "chang qing"))
        Firstnames.append(FirstName(Word: "王莹", Bihua: 0, Sex: 2, YiJing: 2, meaning: "sparkling and clean like gem", pronunciation: "yu yin"))
        Firstnames.append(FirstName(Word: "子默", Bihua: 1, Sex: 2, YiJing: 3, meaning: "tacit and slient", pronunciation: "zi mo"))
        Firstnames.append(FirstName(Word: "江花", Bihua: 0, Sex: 2, YiJing: 1, meaning: "beauty bron alongside the river", pronunciation: "jiang hua"))
        Firstnames.append(FirstName(Word: "试文", Bihua: 1, Sex: 0, YiJing: 3, meaning: "knowledgeable and good at writing", pronunciation: "shi wen"))
        Firstnames.append(FirstName(Word: "讯美", Bihua: 1, Sex: 2, YiJing: 3, meaning: "decency and concern for others", pronunciation: "xun mei"))
        Firstnames.append(FirstName(Word: "怡悦", Bihua: 0, Sex: 2, YiJing: 2, meaning: "have a happy life", pronunciation: "yi yue"))
        Firstnames.append(FirstName(Word: "妍苹", Bihua: 1, Sex: 2, YiJing: 2, meaning: "clever and family-centred", pronunciation: "yan ping"))
        Firstnames.append(FirstName(Word: "小佳", Bihua: 0, Sex: 2, YiJing: 1, meaning: "talented and prominent", pronunciation: "xiao jia"))
        Firstnames.append(FirstName(Word: "又冉", Bihua: 0, Sex: 2, YiJing: 2, meaning: "gentle and soft", pronunciation: "you ran"))
        Firstnames.append(FirstName(Word: "圩婷", Bihua: 2, Sex: 2, YiJing: 3, meaning: "agreeable girl", pronunciation: "wei ting"))
        Firstnames.append(FirstName(Word: "怡路", Bihua: 1, Sex: 2, YiJing: 3, meaning: "have a happy life", pronunciation: "yi lu"))
        Firstnames.append(FirstName(Word: "雨欣", Bihua: 1, Sex: 2, YiJing: 2, meaning: "smart and beatiful like rain", pronunciation: "yu xin"))
        Firstnames.append(FirstName(Word: "婉昀", Bihua: 2, Sex: 2, YiJing: 2, meaning: "graceful and kind", pronunciation: "wan yun"))
        Firstnames.append(FirstName(Word: "免霞", Bihua: 1, Sex: 2, YiJing: 3, meaning: "pretty like sunset", pronunciation: "mian xia"))
        Firstnames.append(FirstName(Word: "梦云", Bihua: 0, Sex: 2, YiJing: 1, meaning: "fond of dreaming and clever", pronunciation: "meng yun"))
        Firstnames.append(FirstName(Word: "冠亚", Bihua: 1, Sex: 0, YiJing: 1, meaning: "talented and prominent", pronunciation: "guan ya"))
        Firstnames.append(FirstName(Word: "浩荣", Bihua: 1, Sex: 1, YiJing: 2, meaning: "extraordinary vitality and driving ambition", pronunciation: "hao rong"))
        Firstnames.append(FirstName(Word: "志博", Bihua: 2, Sex: 1, YiJing: 2, meaning: "ambitious and competitive", pronunciation: "zhi bo"))
        Firstnames.append(FirstName(Word: "子健", Bihua: 1, Sex: 1, YiJing: 1, meaning: "have a healthy life", pronunciation: "zi jian"))
        Firstnames.append(FirstName(Word: "子谦", Bihua: 1, Sex: 1, YiJing: 1, meaning: "modest and unassertive", pronunciation: "zi qian"))
        Firstnames.append(FirstName(Word: "盛波", Bihua: 1, Sex: 1, YiJing: 1, meaning: "prosperous and flourishing", pronunciation: "sheng bo"))
        Firstnames.append(FirstName(Word: "隽阳", Bihua: 0, Sex: 1, YiJing: 2, meaning: "shiny and talent", pronunciation: "jun yang"))
        Firstnames.append(FirstName(Word: "宇琨", Bihua: 1, Sex: 1, YiJing: 3, meaning: "prominent like a jade", pronunciation: "yu kun"))
        Firstnames.append(FirstName(Word: "梓祥", Bihua: 1, Sex: 1, YiJing: 3, meaning: "have lucky and auspicious life", pronunciation: "zi xiang"))
        Firstnames.append(FirstName(Word: "灵运", Bihua: 2, Sex: 1, YiJing: 1, meaning: "live a lucky life", pronunciation: "lin yun"))
        Firstnames.append(FirstName(Word: "渊明", Bihua: 2, Sex: 1, YiJing: 3, meaning: "knowledgeable and open mind", pronunciation: "yuan ming"))
        Firstnames.append(FirstName(Word: "令晖", Bihua: 2, Sex: 1, YiJing: 2, meaning: "kind-hearted and virtuous", pronunciation: "lin hui"))
        Firstnames.append(FirstName(Word: "审言", Bihua: 2, Sex: 1, YiJing: 1, meaning: "speak carefully and considerate", pronunciation: "shen yan"))
        Firstnames.append(FirstName(Word: "浩然", Bihua: 2, Sex: 1, YiJing: 1, meaning: "vitality, dashing spirit and high spirit", pronunciation: "hao rang"))
        Firstnames.append(FirstName(Word: "白鸬", Bihua: 2, Sex: 1, YiJing: 2, meaning: "free and strong like a flying bird", pronunciation: "bai lu"))
        Firstnames.append(FirstName(Word: "毅毅", Bihua: 2, Sex: 1, YiJing: 1, meaning: "tough and strong", pronunciation: "yi yi"))
        Firstnames.append(FirstName(Word: "哲平", Bihua: 2, Sex: 1, YiJing: 2, meaning: "quiet and reflective ma", pronunciation: "zhe ping"))
        Firstnames.append(FirstName(Word: "百帆", Bihua: 2, Sex: 1, YiJing: 1, meaning: "outstanding and excellent", pronunciation: "bai fan"))
        Firstnames.append(FirstName(Word: "赫君", Bihua: 2, Sex: 1, YiJing: 1, meaning: "conspicuous man", pronunciation: "hao jun"))
        Firstnames.append(FirstName(Word: "志罡", Bihua: 2, Sex: 1, YiJing: 2, meaning: "strong-willed person", pronunciation: "zhi gang"))
        Firstnames.append(FirstName(Word: "叶颦", Bihua: 2, Sex: 1, YiJing: 3, meaning: "sentimental beauty", pronunciation: "ye pin"))
        Firstnames.append(FirstName(Word: "愉婧", Bihua: 2, Sex: 2, YiJing: 2, meaning: "cheerful beauty", pronunciation: "yu jing"))
        Firstnames.append(FirstName(Word: "娟蕾", Bihua: 2, Sex: 2, YiJing: 2, meaning: "beautiful like a flower bud", pronunciation: "juan lei"))
        Firstnames.append(FirstName(Word: "嫦霞", Bihua: 2, Sex: 2, YiJing: 1, meaning: "pretty and smooth like moonlight", pronunciation: "chang xia"))
        Firstnames.append(FirstName(Word: "雅瑶", Bihua: 2, Sex: 2, YiJing: 1, meaning: "elegant and fairy", pronunciation: "ya yao"))
        Firstnames.append(FirstName(Word: "晶瑶", Bihua: 2, Sex: 2, YiJing: 1, meaning: "sparkling and fairy", pronunciation: "jin yai"))
        Firstnames.append(FirstName(Word: "海娜", Bihua: 2, Sex: 2, YiJing: 1, meaning: "beauty bron beside the sea", pronunciation: "hai na"))
        Firstnames.append(FirstName(Word: "修霞", Bihua: 2, Sex: 2, YiJing: 1, meaning: "talented and pretty like sunset", pronunciation: "xiu xia"))
        Firstnames.append(FirstName(Word: "曼玲", Bihua: 2, Sex: 2, YiJing: 1, meaning: "bright and fine like a jade", pronunciation: "man ling"))
        Firstnames.append(FirstName(Word: "白易", Bihua: 0, Sex: 2, YiJing: 3, meaning: "have a bright and easy life", pronunciation: "bai yi"))
        Firstnames.append(FirstName(Word: "谷山", Bihua: 0, Sex: 2, YiJing: 3, meaning: "resourceful like a montain", pronunciation: "gu shan"))
        Firstnames.append(FirstName(Word: "含玉", Bihua: 0, Sex: 2, YiJing: 3, meaning: "well-educated and smart like a jade", pronunciation: "han yu"))
        Firstnames.append(FirstName(Word: "元风", Bihua: 0, Sex: 2, YiJing: 3, meaning: "swift like a wind and have a lucky life", pronunciation: "yuan feng"))
        Firstnames.append(FirstName(Word: "听白", Bihua: 0, Sex: 2, YiJing: 3, meaning: "considerate and bright", pronunciation: "ting bai"))
    }
}
