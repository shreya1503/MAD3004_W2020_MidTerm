//
//  Extension.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-18.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

extension String
{
    
    func Emailvalidation() -> Bool
    {
        let EmailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let EmailTest = NSPredicate(format : "SELF MATCHES %@" , EmailRegex)
        return EmailTest.evaluate(with: self)
    }
    
   /* func mobilevalidation() -> Bool
    {
        let MobileNumberRegex = "[0-9]{10}"
        let MobileTest =  NSPredicate(format:"SELF MATCHES %@",MobileNumberRegex)
        return MobileTest.evaluate(with:self)
    }*/

}
