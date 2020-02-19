//
//  Mobile.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Mobile : Bill
{
    var mobileManufacturerName : String
    var planName : String
    var mobileNumber : String
    var internetGBUsed : Float
    var minuteUsed : Float
    
    init(billID:String, billDate:Date, billType:BillType,mobileManufacturerName:String, planName:String, mobileNumber:String, internetGBUsed:Float, minuteUsed:Float)
    {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
       
        if mobileNumber.count != 10
        {
            print("Invalid Mobile Number : Mobile Number Cannot Be Less Than 10 Digits")
        }
        
        self.mobileNumber = mobileNumber
               
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        super.init(billID:billID, billDate:billDate, billType:billType)
        self.totalBillAmount = Double(minuteUsed * 0.05)
    }
    
    override func Display()
    {
        
        super.Display()
        print("\tManufacturer Name    : \(mobileManufacturerName)")
        print("\tPlan Name            : \(planName)")
        print("\tMobile Number        : \(mobileNumber)")
        print("\tInternet Usage       : \(internetGBUsed) GB")
        print("\tMinutes Usage        : \(minuteUsed) Minutes")
    
    }
    
}


