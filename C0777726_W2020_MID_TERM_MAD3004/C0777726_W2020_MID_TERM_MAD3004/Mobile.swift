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
    
    init(billID:String, billDate:Date, billType:BillType, totalBillAmount:Double, mobileManufacturerName:String, planName:String, mobileNumber:String, internetGBUsed:Float, minuteUsed:Float)
    {
        self.mobileManufacturerName = mobileManufacturerName
        self.planName = planName
        self.mobileNumber = mobileNumber
        self.internetGBUsed = internetGBUsed
        self.minuteUsed = minuteUsed
        super.init(billID:billID, billDate:billDate, billType:billType, totalBillAmount:totalBillAmount)
    }
    
    override func Display()
    {
        
        super.Display()
        print("Manufacturer Name : \(mobileManufacturerName)")
        print("Plan Name : \(planName)")
        print("Mobile Number : \(mobileNumber)")
        print("Internet Usage : \(internetGBUsed)")
        print("Minutes Usage : \(minuteUsed)")
    
    }
    
}


