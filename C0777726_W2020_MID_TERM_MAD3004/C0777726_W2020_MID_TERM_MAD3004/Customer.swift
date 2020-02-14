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
    lazy var billDicn = [String:Bill]()
    var totalAmountToPay : Double = 0.0
    
    init(customerID:String, firstName:String, lastName:String, emailID:String)
    {
        self.customerID = customerID
        self.firstName = firstName
        self.lastName = lastName
        self.emailID = emailID
        //billDicn.updateValue(Bill, forKey: customerID)
    }
    
    func insertBill(Bills : Bill, customerID : String)
    {
        billDicn.updateValue(Bills, forKey : customerID)
    }
    
    func totalBill()
    {
        for t in billDicn
        {
             totalAmountToPay = totalAmountToPay + t.value.totalBillAmount
        }
        
    }
    
    func display()
    {
        print("Customer ID          : \(customerID)")
        print("Customer Full Name   : \(fullName)")
        print("Customer Email ID    : \(emailID)")
        print("             -----BILL INFORMATION-----          ")
        print("*************************************************")
        /*for (billID,Bills) in billDicn
        {
            print("Bill ID          : \(billID)")
            print("Bill Date        : \(Bills.billDate)")
            print("Bill Type        : \(Bills.billType)")
            print("Bill Amount      : \(Bills.totalBillAmount)")
            
        }*/
        for t in billDicn
        {
            t.value.Display()
        }
        
        if billDicn.count == 0
        {
            print("No Bills For This Customer")
        }
        else
        {
            print("*************************************************")
            print("       Total Bill Amount To Pay : $\(totalBill())")
            print("*************************************************")
        }
        
    }
    
}
		        
