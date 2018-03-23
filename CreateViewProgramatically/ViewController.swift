
//  ViewController.swift
//  CreateViewProgramatically
//  Created by Ravi Parsa on 13/03/18.
//  Copyright © 2018 Ravi Parsa. All rights reserved.


import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var scrollView: UIScrollView!
    var array = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height+300)
        
        array = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j","a", "b", "c", "d", "e"]
        
        ///
        print(array)

        
        
        
        for i in 0..<array.count {
            //let btn = UIButton(frame: CGRect(x: 5, y: 10 + 90 * i, width: 350, height: 80))
            //btn.backgroundColor = UIColor.darkGray
            //btn.addTarget(self, action: #selector(self.showParkDetail), for: .touchUpInside)

            let label = UILabel(frame: CGRect(x: 5, y: 10 + 90 * i, width: 350, height: 80))
            label.backgroundColor = UIColor.darkGray
            
            //set the directional lock so only 1 scroll direction is used at a time
            scrollView.isDirectionalLockEnabled = true

            scrollView.addSubview(label)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

