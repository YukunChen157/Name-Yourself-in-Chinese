//
//  NameCell.swift
//  project1
//
//  Created by Zixiang Liu on 11/10/17.
//  Copyright © 2017 chen, junyang. All rights reserved.
//

import UIKit

class NameCell: UITableViewCell {
    @IBOutlet var title: UILabel!
    @IBOutlet weak var meaning: UILabel!
    
    func updateLabels() {
        let bodyFont = UIFont.preferredFont(forTextStyle: UIFontTextStyle.body)
        let caption1Font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.caption1)
        title.font = bodyFont
        meaning.font = caption1Font
    }
}
