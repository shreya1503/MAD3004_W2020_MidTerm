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
    var billid : String?
    var billDate : Date?
    var billType : BillType?
    var totalBillAmount : Double?
}
