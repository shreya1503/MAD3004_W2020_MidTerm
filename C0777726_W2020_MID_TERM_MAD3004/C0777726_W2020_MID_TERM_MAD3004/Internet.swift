//
//  Internet.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Internet : Bill
{
    var providerName : String
    var internetGBUsed : Float
    
    init(billID:String, billDate:Date, billType:BillType, providerName:String, internetGBUsed:Float)
    {
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        super.init(billID:billID, billDate:billDate, billType:billType)
        self.totalBillAmount = Double(internetGBUsed * 0.20)
    }
    
    override func Display()
    {
        super.Display()
         print("\tProvider Name        : \(providerName)")
         print("\tInternet Usage       : \(internetGBUsed)")

    }
}
