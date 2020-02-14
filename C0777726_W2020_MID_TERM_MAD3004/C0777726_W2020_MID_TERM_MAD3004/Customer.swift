//
//  Customer.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer 
{
    var customerId : String?
    var firstName : String?
    var lastName : String?
    var fullName : String?
    {
        return "\(firstName) \(lastName)"
    }
    var emailID : String?
    //Bill Dictionary to store all types of bills
    var totalAmountToPay : Float?
    
    
}
