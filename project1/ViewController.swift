//
//  ViewController.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet var LastName : UITextField!
    @IBOutlet var FirstName : UITextField!
    @IBOutlet var BiHua : UISegmentedControl!
    @IBOutlet var Sex : UISegmentedControl!
    @IBOutlet var YiJing : UISegmentedControl!
    var model : Model?
    var transferObj : TransferObj = TransferObj()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        LastName.autocorrectionType = .no
        FirstName.autocorrectionType = .no
        if let temp = model{
            LastName.text = temp.Lastname
            FirstName.text = temp.Firstname
            BiHua.selectedSegmentIndex = temp.Bihua
            Sex.selectedSegmentIndex = temp.Sex
            YiJing.selectedSegmentIndex = temp.Yijing
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="send_label"){
            let destination = segue.destination as! SecondViewController
            destination.transferObj = self.transferObj
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func dismiss(){
        self.view.endEditing(true)
    }
    
    @IBAction func submit(){
        let model = Model(Lastname: LastName.text!, Firstname: FirstName.text!, Bihua: Int(BiHua.selectedSegmentIndex), Sex: Sex.selectedSegmentIndex, Yijing: YiJing.selectedSegmentIndex)
        self.model = model
        _ = ModelPerister.setModel(model)
        model.doStuff()
        self.transferObj.model = self.model
    }
    
    func textField(_ textField:UITextField,
                   shouldChangeCharactersIn range:NSRange,
                   replacementString string:String)->Bool{
        return (Int(string) == nil) || string == ""
    }
}

