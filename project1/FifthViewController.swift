//
//  FifthViewController.swift
//  project1
//
//  Created by York on 26/11/2017.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController{
    var Company : UITextField!
    var JobTitle : UITextField!
    var Phone : UITextField!
    var Email : UITextField!
    var Address : UITextField!
    var transferObj : TransferObj = TransferObj()
    var model : Model!
    
    @IBOutlet var button1 : UIButton!
    @IBOutlet var button2 : UIButton!
    @IBOutlet var button3 : UIButton!
    
    @IBOutlet weak var englishparent: UIView!
    @IBOutlet weak var chineseparent: UIView!
    @IBOutlet var company : UILabel!
    @IBOutlet var jobtitle : UILabel!
    @IBOutlet var email : UILabel!
    @IBOutlet var phone : UILabel!
    @IBOutlet var address : UILabel!
    @IBOutlet var chineseName : UILabel!
    @IBOutlet var englishName : UILabel!
    
    @IBOutlet var company2 : UILabel!
    @IBOutlet var jobtitle2 : UILabel!
    @IBOutlet var email2 : UILabel!
    @IBOutlet var phone2 : UILabel!
    @IBOutlet var address2 : UILabel!
    @IBOutlet var chineseName2 : UILabel!
    @IBOutlet var englishName2 : UILabel!
    @IBOutlet weak var english: UIView!
    @IBOutlet weak var chinese: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        self.model = transferObj.model!
        super.viewWillAppear(animated)
        company.text = Company.text!
        jobtitle.text = JobTitle.text!
        phone.text = "Phone: " + Phone.text!
        email.text = "Email: " + Email.text!
        address.text = Address.text!
        chineseName.text = self.model.Names[self.model.selected]
        englishName.text = self.model.Firstname + " " + self.model.Lastname
        
        company2.text = Company.text!
        jobtitle2.text = JobTitle.text!
        phone2.text = "电话：" + Phone.text!
        email2.text = "邮箱：" + Email.text!
        address2.text = Address.text!
        chineseName2.text = self.model.Names[self.model.selected]
        englishName2.text = self.model.Firstname + " " + self.model.Lastname
        
        let words = Array(chineseName.text!)
        button1.setTitle(String(words[0]), for: .normal)
        button2.setTitle(String(words[1]), for: .normal)
        button3.setTitle(String(words[2]), for: .normal)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "show" {
            let destination = segue.destination as! ImageBrowserViewController
            destination.transferobj = self.transferObj
        }
    }
    
    @IBAction func saveImage(){
        save(english, englishparent)
        save(chinese, chineseparent)
    }
    
    func save(_ version: UIView, _ parentview : UIView){
        UIGraphicsBeginImageContextWithOptions(CGSize(width: version.frame.width, height: version.frame.height), false, 0);
        parentview.drawHierarchy(in: CGRect(x: -version.frame.origin.x, y: -version.frame.origin.y, width: parentview.frame.width, height: parentview.frame.height), afterScreenUpdates: true)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!;
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil);
    }
    
    @IBAction func callSafari(button: UIButton){
        let chineseWord = button.title(for: .normal)!
        let unicodeScalars = chineseWord.unicodeScalars
        let Myunicode = String(unicodeScalars[unicodeScalars.startIndex].value, radix: 16, uppercase: true)
        let url = "https://raw.githubusercontent.com/ZixiangLiu/Name-yourself-in-Chinese/master/GIF/\(Myunicode).gif"
        self.transferObj.url = url
        self.transferObj.strObj = button.title(for: .normal)!
    }
}
