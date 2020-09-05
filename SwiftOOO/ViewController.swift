//
//  ViewController.swift
//  SwiftOOO
//
//  Created by Sowrirajan S on 04/09/20.
//  Copyright © 2020 com.ssowri1. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let loaderVw = Loader()

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func startAnimate() {
        loaderVw.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.loaderVw.center = self.view.center
        self.view.addSubview(loaderVw)
        loaderVw.startAnimating()
    }

    // To make the link between xib of the view and Swift class
    static func instanceFromNib() -> UIView {
        return UINib(nibName: "Gauge", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}


