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
    
    enum CustomerNotFound
    {
        case EmailIdInvailid , MobileNumberInvalid
    }
    
    var customerID : Int
    var firstName : String
    var lastName : String
    var fullName : String
    {
        return "\(firstName) \(lastName)"
    }
    var emailID : String
    //Bill Dictionary to store all types of bills
    lazy var billDicn = [String:Bill]()
    //var bills = [Bill]()
    var totalAmountToPay : Double = 0.0
    
    init(customerID:Int, firstName:String, lastName:String, emailID:String)
    {
        self.customerID = customerID
        self.firstName = firstName
        self.lastName = lastName
        
        if emailID.Emailvalidation() == true
        {
                self.emailID = emailID
        }
        else
        {
            self.emailID = "Email ID Is Not Valid "
        }
    }
    
    func insertBill(Bills : Bill, billID : String)
    {
        billDicn.updateValue(Bills, forKey : billID)
    }
    
    func totalBill() -> Double
    {
        totalAmountToPay = 0
        for t in billDicn
        {
            totalAmountToPay = totalAmountToPay + t.value.totalBillAmount
        }
        return totalAmountToPay
        
    }
    
    func display()
    {
        print("Customer ID          : \(customerID)")
        print("Customer Full Name   : \(fullName)")
        print("Customer Email ID    : \(String(describing : self.emailID))")
        print("             \t-----BILL INFORMATION-----          ")
        print("***********************************************************")
   
        /*for t in billDicn
        {
            t.value.Display()
           
        }*/
        
        
        for item in billDicn
        {
            item.value.Display()
            print("***********************************************************")
        }
        
        if billDicn.count == 0
        {
            print("\tNo Bills For This Customer")
        }
        else
        {
            print("       \tTotal Bill Amount To Pay : $\(totalBill())")
            print("***********************************************************")
        }
        
    }
     
}
