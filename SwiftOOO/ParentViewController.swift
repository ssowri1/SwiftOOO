//
//  ParentViewController.swift
//  Mapconfig
//
//  Created by Arunkumar Porchezhiyan on 28/07/20.
//  Copyright © 2020 zvky. All rights reserved.
//

import UIKit

public class ParentViewController: UIViewController {
    let loaderVw = Loader()
    public override func viewDidLoad() {
        super.viewDidLoad()
    }
    /// This method is used to call the api
    func callApi() {
    }
}

// MARK: - Activity Indicator
extension ParentViewController {
    /// This method is used to start the loader
    func startAnimate() {
        loaderVw.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        self.loaderVw.center = self.view.center
        self.view.addSubview(loaderVw)
        loaderVw.startAnimating()
    }
}
