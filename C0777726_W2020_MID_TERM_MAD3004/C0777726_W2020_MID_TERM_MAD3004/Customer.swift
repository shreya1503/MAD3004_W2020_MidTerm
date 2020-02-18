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
    
    var customerID : String
    var firstName : String
    var lastName : String
    var fullName : String
    {
        return "\(firstName) \(lastName)"
    }
    var emailID : String
    //Bill Dictionary to store all types of bills
    lazy var billDicn = [String:[Bill]]()
    var bills = [Bill]()
    var totalAmountToPay : Double = 0.0
    
    init(customerID:String, firstName:String, lastName:String, emailID:String)
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
    
    func insertBill(Bills : Bill)
    {
        bills.append(Bills)
        billDicn.updateValue([Bills], forKey : customerID)
    }
    
    func totalBill() -> Double
    {
        totalAmountToPay = 0
        for t in bills
        {
            totalAmountToPay = totalAmountToPay + t.totalBillAmount
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
            print("***********************************************************")
        }*/
        
        for item in bills {
                   item.Display()
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
    
    func findBill(for id :Int)
    {
           var billid : Int
           var exist = false
           
           for item in bills
           {
               billid = item.billID
               if billid == id
               {
                   print("***************************************************")
                   print("--------------------Bill Details--------------------")
                   item.Display()
                   print("***************************************************")
                   exist = true
                   break
               }
           }
           
           if !exist
           {
               print("***************************************************")
               print("         There Is No Bill For Given Index         ")
               print("***************************************************")
           }
       }
    
}
		        
