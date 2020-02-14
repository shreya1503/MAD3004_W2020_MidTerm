//
//  Bill.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

enum BillType
{
    case MOBILE, INTERNET, HYDRO
}

class Bill
{
    var billID : String
    var billDate : Date
    var billType : BillType
    var totalBillAmount : Double
    
    init(billID:String, billDate:Date, billType:BillType, totalBillAmount:Double)
    {
        self.billID = billID
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
    
    func Display()
    {
        print("Bill ID              : \(billID)")
        print("Bill Date            : \(billDate)")
        print("Bill Type            : \(billType)")
        print("Total Bill Amount    : $\(totalBillAmount) Units")
    }
    
}
