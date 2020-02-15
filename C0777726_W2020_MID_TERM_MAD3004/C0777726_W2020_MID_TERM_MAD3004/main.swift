//
//  main.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

var b1 = Bill(billID: "BILL0001", billDate: Date(), billType: BillType.HYDRO, totalBillAmount: 25)
var b2 = Bill(billID: "BILL0002", billDate: Date(), billType: BillType.MOBILE, totalBillAmount: 25)

var m1 = Mobile(billID: "MOB0001", billDate: Date(), billType: BillType.MOBILE, totalBillAmount: 60, mobileManufacturerName: "Apple Inc. iPhone X MAX+", planName: "LTE+3G 9.5GB Promo plan", mobileNumber: "9012345678", internetGBUsed: 4, minuteUsed: 230)


var h1 = Hydro(billID: "HYD0001", billDate: Date(), billType: BillType.HYDRO, totalBillAmount: 250.50, agencyName: "Hydro Care", unitUsed: 25)

var h2 = Hydro(billID: "HYD0002", billDate: Date(), billType: BillType.HYDRO, totalBillAmount: 400.00, agencyName: "PLanet Energy", unitUsed: 40)

var h3 = Hydro(billID: "HYD0003", billDate: Date(), billType: BillType.HYDRO, totalBillAmount: 100.50, agencyName: "Bruce Power", unitUsed: 18)


var i1 = Internet(billID: "INT0001", billDate: Date(), billType: BillType.INTERNET, totalBillAmount: 180, providerName: "Rogers", internetGBUsed: 500)

var i2 = Internet(billID: "INT0002", billDate: Date(), billType: BillType.INTERNET, totalBillAmount: 140, providerName: "Freedom", internetGBUsed: 400)


var c1 = Customer(customerID: "C0001", firstName: "Shreya", lastName: "Vaghasia", emailID: "Shreya321@gmail.com")
var c2 = Customer(customerID: "C0002", firstName: "Palak", lastName: "Joshipura", emailID: "PalakJ@gmail.com")
var c3 = Customer(customerID: "C0003", firstName: "Charmi", lastName: "Patel", emailID: "CharmiPatel@gmail.com")

c1.insertBill(Bills : m1, customerID: "\(m1.billID)")
c1.insertBill(Bills: h1, customerID: "\(h1.billID)")
c1.insertBill(Bills: i1, customerID: "\(i1.billID)")
c1.display()

c2.insertBill(Bills : h2, customerID: "\(h2.billID)")
c2.insertBill(Bills : i2, customerID: "\(i2.billID)")
c2.display()

c3.insertBill(Bills : h3, customerID: "\(h3.billID)")
c3.display()


