//
//  ForthViewController.swift
//  project1
//
//  Created by York on 26/11/2017.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController{
    @IBOutlet var company : UITextField!
    @IBOutlet var jobTitle : UITextField!
    @IBOutlet var phone : UITextField!
    @IBOutlet var email : UITextField!
    @IBOutlet var address : UITextField!
    @IBOutlet var generate : UIButton!
    var transferObj : TransferObj = TransferObj()
    var model : Model!
    
    @IBAction func dismiss(){
        self.view.endEditing(true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.model = transferObj.model!
        if let saved_company = self.model.company{
            self.company.text = saved_company
        }
        if let saved_jobtitle = self.model.jobtitle{
            self.jobTitle.text = saved_jobtitle
        }
        if let saved_phone = self.model.phone{
            self.phone.text = saved_phone
        }
        if let saved_email = self.model.email{
            self.email.text = saved_email
        }
        if let saved_address = self.model.address{
            self.address.text = saved_address
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.transferObj.model = self.model
        if segue.identifier == "generateBusinessCard" {
            let destination = segue.destination as! FifthViewController
            destination.Company = company
            destination.JobTitle = jobTitle
            destination.Phone = phone
            destination.Email = email
            destination.Address = address
            destination.transferObj = self.transferObj
            self.model.company = company.text
            self.model.jobtitle = jobTitle.text
            self.model.phone = phone.text
            self.model.email = email.text
            self.model.address = address.text
        }
    }

}
