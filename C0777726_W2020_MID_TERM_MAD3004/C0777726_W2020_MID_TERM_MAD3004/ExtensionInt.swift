//
//  ExtensionInt.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-18.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

extension Int
{
    func minutes() -> String
    {
        let s = String.init(format: "%d Minutes", self)
        return s
    }
    
    func units() -> String
    {
        let s = String.init(format: "%d Units", self)
        return s
    }
}
