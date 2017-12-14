//
//  ViewController_Animation.swift
//  Assignment6
//
//  Created by York on 28/10/2017.
//  Copyright © 2017 York. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet var topRight: UILabel!
    @IBOutlet var topLeft: UILabel!
    @IBOutlet var bottomLeft: UILabel!
    @IBOutlet var bottomRight: UILabel!
    
    @IBOutlet var topLeftY: NSLayoutConstraint!
    
    @IBAction func makeItHappen(_ sender: UIButton) {
        animateTopRightBegin()
        animateTopLeftBegin()
        animateBottomLeftBegin()
        animateBottomRightBegin()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // slowly fades the top right label out
    func animateTopRightBegin() {
        UIView.animate(
            withDuration: 2,
            delay: 0,
            options: [],
            animations: { () -> Void in
                self.topRight.alpha = 0
                
        },
            completion: { (Bool) -> Void in
                self.animateTopRightEnd()
        })
    }
    
    // slowly fades the top right label back in
    func animateTopRightEnd() {
        UIView.animate(
            withDuration: 2.0,
            animations: { () -> Void in
                self.topRight.alpha = 1
        })
    }
    
    // slowly drops the label off of the bottom
    //   of the screen
    func animateTopLeftBegin() {
        let height = view.frame.height
//        print(height)
//        print(self.topLeftY.constant)
        self.topLeftY.constant += height
        
        let topLeftClosure = { () -> Void in
            let topLeftText = NSLocalizedString("Here I go!", comment: "top left button name")
            self.topLeft.text = topLeftText
            self.view.layoutIfNeeded()
        }
        
        
        UIView.animate(
            withDuration: 2.0,
            delay: 0,
            options: [.curveLinear],
            animations: topLeftClosure,
            completion: { (Bool) -> Void in
                self.animateTopLeftEnd()
        })
    }
    
    // slowly raises the label back to its starting position
    func animateTopLeftEnd() {
        let height = view.frame.height
        self.topLeftY.constant -= height
        
        UIView.animate(withDuration: 2, animations: { () -> Void in
            let topLeftText = NSLocalizedString("I am back!", comment: "top left button name (return)")
            self.topLeft.text = topLeftText
            self.view.layoutIfNeeded()
        })
    }
    
    // change background color of bottom left label
    func animateBottomLeftBegin() {
        UIView.animate(
            withDuration: 2,
            delay: 0,
            options: [],
            animations: { () -> Void in
                // hack to get the background animate to work with a label
                self.bottomLeft.layer.backgroundColor = self.randomColor(alpha: 1.0).cgColor
        },
            completion: nil)
    }
    
    func randomColor(alpha: CGFloat) -> UIColor {
        return UIColor(red: randomFloat(),
                       green: randomFloat(),
                       blue: randomFloat(),
                       alpha: alpha) // always opaque
    }
    
    func randomFloat() -> CGFloat {
        return CGFloat(Float(arc4random()) / Float(UINT32_MAX))
    }
    
    // slowly enlarge the bottom right label out
    func animateBottomRightBegin() {
        UIView.animate(
            withDuration: 2,
            delay: 0,
            options: [],
            animations: { () -> Void in
                self.bottomRight.transform = self.bottomRight.transform.scaledBy(x:4,y:4)
                
        },
            completion: { (Bool) -> Void in
                self.animateBottomRightEnd()
        })
    }
    
    func animateBottomRightEnd() {
        UIView.animate(
            withDuration: 2.0,
            animations: { () -> Void in
                self.bottomRight.transform = self.bottomRight.transform.scaledBy(x:0.25,y:0.25)
        })
    }
}

