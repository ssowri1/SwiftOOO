//
//  ViewController.swift
//  SwiftOOO
//
//  Created by Sowrirajan S on 04/09/20.
//  Copyright © 2020 com.ssowri1. All rights reserved.
//

import UIKit

class TestController: UIViewController {
    let loaderVw = HLoader()

    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimate()
    }
    
    func startAnimate() {
        loaderVw.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.loaderVw.center = self.view.center
        self.view.addSubview(loaderVw)
        loaderVw.startAnimating()
    }
}
