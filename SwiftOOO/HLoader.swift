//
//  HLoader.swift
//  SwiftOOO
//
//  Created by Sowrirajan S on 06/09/20.
//  Copyright © 2020 com.ssowri1. All rights reserved.
//

import Foundation
import WebKit

public class HLoader: UIView {

    @IBOutlet weak var contentViewH: UIView!
    @IBOutlet weak var progressBarH: UIView!

    // Programatic purposs
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    // Storyboard/Xib purposs
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        let bundle = Bundle(for: HLoader.self)
        bundle.loadNibNamed("HLoader", owner: self, options: nil)
        addSubview(contentViewH)
        contentViewH.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
    }
    public func startAnimating() {
        let webview = WKWebView()
        let bundle = Bundle(for: HLoader.self)
        webview.frame  = CGRect(x: 0, y: 0, width: progressBarH.frame.size.width, height: progressBarH.frame.size.height)
        webview.load(URLRequest(url: bundle.url(forResource: "index", withExtension:"html")! as URL) as URLRequest)
        progressBarH.addSubview(webview)
        print("Success")
    }
}
