//
//  SecondViewController.swift
//  project1
//
//  Created by chen, junyang on 11/6/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit
class SecondViewController: UITableViewController{
    
    @IBOutlet weak var bottomName: UILabel!
    @IBOutlet weak var bottomMeaning: UILabel!
    @IBOutlet weak var bottomPronunciation: UILabel!
    var model : Model!
    var transferObj : TransferObj = TransferObj()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.transferObj.model = self.model
        if(segue.identifier=="enter_info"){
            let destination = segue.destination as! ForthViewController
            destination.transferObj = self.transferObj
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.model = transferObj.model!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 75
        bottomName.text = NSLocalizedString("name", comment: "name in bottom of view 2")
        bottomMeaning.text = NSLocalizedString("meaning", comment: "meaning in bottom of view 2")
        bottomPronunciation.text = NSLocalizedString("pronunciation", comment: "pronunce in view 2")
    }
    
    @IBAction func toggleEditMode(_ sender: UIButton) {
        if isEditing == false {
            setEditing(true, animated: true)
            let done = NSLocalizedString("Done", comment: "Done message")
            sender.setTitle(done, for: .normal)
        }
        else {
            setEditing(false, animated: true)
            let edit = NSLocalizedString("Edit", comment: "Edit message")
            sender.setTitle(edit, for: .normal)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.getNumberRow()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath) as! NameCell
        cell.title.text = model.Names[indexPath.row]
        cell.meaning.text = model.outputFirstNames[indexPath.row].meaning
        return cell
    }
    
    func deleteRow(_ path: IndexPath) {
        verifyDelete(   model.deleteName(path.row),
                        {
                            (action) -> Void in
                            self.tableView.deleteRows(at: [path], with: .automatic)
                        }
        )
    }

    func verifyDelete(_ name: String, _ delete: @escaping (UIAlertAction) -> Void) {
        let title = "\(name)"
        let message = NSLocalizedString("Are you sure you don't like this name?", comment: "Warning message")
        
        let ac = UIAlertController(title: title, message: message, preferredStyle: .actionSheet)
        
        let cancel = NSLocalizedString("Cancel", comment: "Cancel message")
        let cancelAction = UIAlertAction(title: cancel, style: .cancel, handler: nil)
        ac.addAction(cancelAction)
        
        let delete_message = NSLocalizedString("Delete", comment: "Delete message")
        let deleteAction = UIAlertAction(title: delete_message, style: .destructive, handler: delete)
        ac.addAction(deleteAction)
        
        present(ac, animated: true, completion: nil)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            deleteRow(indexPath)
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.model.selected = indexPath.row
        bottomPronunciation.text = "\(self.model.outputLastName.pronunciation) \(self.model.outputFirstNames[self.model.selected].pronunciation)"
        bottomMeaning.text = self.model.outputFirstNames[self.model.selected].meaning
        bottomName.text = self.model.Names[self.model.selected]
    }
}
