//
//  LoadHtml.swift
//  SwiftOOO
//
//  Created by Sowrirajan S on 05/09/20.
//  Copyright © 2020 com.ssowri1. All rights reserved.
//

import Foundation

public class LoadHtml: NSObject {
    public override init() { }
    static func loadH() {
        let htmlFile = Bundle.main.path(forResource: "index", ofType: "html")
        do {
            let htmlString = try String(contentsOfFile: htmlFile!, encoding: String.Encoding.utf8)
            print(htmlString)
        } catch {
            print(error)
        }
    }
}
