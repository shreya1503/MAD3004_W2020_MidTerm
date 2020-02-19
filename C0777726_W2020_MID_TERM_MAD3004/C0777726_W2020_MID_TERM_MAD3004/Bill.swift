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
    var date : String
    
    init(billID:String, billDate:Date, billType:BillType)
    {
        self.billID = billID
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = 0
        
        let formater = DateFormatter()
        formater.dateFormat = "EEE, MMM,dd"
        
        let hourformater = DateFormatter()
        hourformater.dateFormat = "h:mm a"
        
        date = formater.string(from: billDate) + " " + hourformater.string(from: billDate)
    }
    
    func Display()
    {
        print("\tBill ID              : \(self.billID)")
        print("\tBill Date            : \(self.date)")
        print("\tBill Type            : \(self.billType)")
        print("\tBill Amount          : $\(self.totalBillAmount)")
    }
    
}
