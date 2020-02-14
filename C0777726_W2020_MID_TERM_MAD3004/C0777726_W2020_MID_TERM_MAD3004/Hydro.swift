//
//  Hydro.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Hydro : Bill
{
    var agencyName : String
    var unitUsed : String
    
    init(billID:String, billDate:Date, billType:BillType, totalBillAmount:Double, agencyName:String, unitUsed:String)
    {
        self.agencyName = agencyName
        self.unitUsed = unitUsed
        super.init(billID:billID, billDate:billDate, billType:billType, totalBillAmount:totalBillAmount)
    }
        
    override func Display()
    {
        super.Display()
        print("Agency Name : \(agencyName)")
        print("Units Used : \(unitUsed)")
    }
}
