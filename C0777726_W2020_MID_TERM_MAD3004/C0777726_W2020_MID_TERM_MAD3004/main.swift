//
//  main.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

var b1 = Bill(billID: "HYD0001", billDate: Date(), billType: BillType.HYDRO,				 totalBillAmount: 25)

var b2 = Bill(billID: "MOB0001", billDate: Date(), billType: BillType.MOBILE, totalBillAmount: 25)

var m1 = Mobile(billID: "MOB0001", billDate: Date(), billType: BillType.MOBILE, totalBillAmount: 60, mobileManufacturerName: "Apple Inc. iPhone X MAX+", planName: "LTE+3G 9.5GB Promo plan", mobileNumber: "9012345678", internetGBUsed: 4, minuteUsed: 230)

var h1 = Hydro(billID: "HYD0001", billDate: Date(), billType: BillType.HYDRO, totalBillAmount: 250.50, agencyName: "Hydro Care", unitUsed: 25)

var c1 = Customer(customerID: "C0001", firstName: "Shreya", lastName: "Vaghasia", emailID: "Shreya321@gmail.com")

c1.insertBill(Bills : b1, customerID: "C0001")
c1.insertBill(Bills: b2, customerID: "C0001")

//b1.Display()
//h1.Display()
c1.display()
//m1.Display()


