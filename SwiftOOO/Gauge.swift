//
//  Gauge.swift
//  GaugeView
//
//  Created by Sowrirajan Sugumaran on 8/21/17.
//  Copyright © 2017 Sowrirajan Sugumaran. All rights reserved.
//

import UIKit

open class Gauge: UIView {
    
    static func addGauge() {
        let vwGauge = Gauge.instanceFromNib()
        UIApplication.shared.keyWindow?.window?.addSubview(vwGauge)
    }

    // To make the link between xib of the view and Swift class
    static func instanceFromNib() -> UIView {
        return UINib(nibName: "Gauge", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! UIView
    }
}

