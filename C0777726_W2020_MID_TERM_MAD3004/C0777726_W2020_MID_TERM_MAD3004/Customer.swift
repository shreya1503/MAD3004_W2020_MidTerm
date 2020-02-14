//
//  Customer.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Customer:IDisplay
{
    var customerID : String
    var firstName : String
    var lastName : String
    var fullName : String
    {
        return "\(firstName) \(lastName)"
    }
    var emailID : String
    //Bill Dictionary to store all types of bills
    var billDicn = [String:Bill]()
    var totalAmountToPay : Double = 0.0
    
    init(customerID:String, firstName:String, lastName:String, emailID:String)
    {
        self.customerID = customerID
        self.firstName = firstName
        self.lastName = lastName
        self.emailID = emailID
    }
    
    
    
    
    func display()
    {
        print("Customer ID : \(customerID)")
        print("Customer Full Name : \(fullName)")
        print("Customer Email ID : \(emailID)")
        print("     -----BILL INFORMATION-----     ")
        print("************************************")
        
    }
    
}
