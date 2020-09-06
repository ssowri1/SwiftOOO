//
//  Manager.swift
//  MapSDK
//
//  Created by Arunkumar Porchezhiyan on 06/08/20.
//  Copyright © 2020 zvky. All rights reserved.
//

import UIKit

public class Manager {
    public init(){}
    
    public func viewController() -> UIViewController {
        let VC = TestController()
        return VC
    }
    
    public func pushToQQQ(viewC: UINavigationController) {
        let sb = UIStoryboard.init(name: "OOO", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "TestController")
        viewC.pushViewController(vc, animated: true)
    }
}
