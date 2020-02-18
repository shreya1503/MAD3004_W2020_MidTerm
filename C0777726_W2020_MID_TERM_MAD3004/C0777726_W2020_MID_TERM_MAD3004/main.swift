//
//  main.swift
//  C0777726_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

var b1 = Bill(billID: "BILL0001", billDate: Date(), billType: BillType.HYDRO)
var b2 = Bill(billID: "BILL0002", billDate: Date(), billType: BillType.MOBILE)

var m1 = Mobile(billID: "MOB0001", billDate: Date(), billType: BillType.MOBILE, mobileManufacturerName: "Apple Inc. iPhone X MAX+", planName: "LTE+3G 9.5GB Promo plan", mobileNumber: "901234567", internetGBUsed: 4, minuteUsed: 230)


var h1 = Hydro(billID: "HYD0001", billDate: Date(), billType: BillType.HYDRO, totalBillAmount: 250.50, agencyName: "Hydro Care", unitUsed: 25)

var h2 = Hydro(billID: "HYD0002", billDate: Date(), billType: BillType.HYDRO, totalBillAmount: 400.00, agencyName: "PLanet Energy", unitUsed: 40)

var h3 = Hydro(billID: "HYD0003", billDate: Date(), billType: BillType.HYDRO, totalBillAmount: 100.50, agencyName: "Bruce Power", unitUsed: 18)


var i1 = Internet(billID: "INT0001", billDate: Date(), billType: BillType.INTERNET, providerName: "Rogers", internetGBUsed: 500)

var i2 = Internet(billID: "INT0002", billDate: Date(), billType: BillType.INTERNET, providerName: "Freedom", internetGBUsed: 400)


var c1 = Customer(customerID: 01, firstName: "Shreya", lastName: "Vaghasia", emailID: "Shreya321@gmail.com")
c1.insertBill(Bills: m1, billID: m1.billID)
c1.insertBill(Bills: h1, billID: h1.billID)
c1.insertBill(Bills: i1, billID: i1.billID)
//c1.display()


var c2 = Customer(customerID: 02, firstName: "Avani", lastName: "Patel", emailID: "Avani89@gmail.com")
c2.insertBill(Bills : h2, billID: h2.billID)
c2.insertBill(Bills : i2, billID: i2.billID)
//c2.display()


var c3 = Customer(customerID: 03, firstName: "Charmi", lastName: "Patel", emailID: "CharmiPatelgmail.com")
c3.insertBill(Bills : h3, billID: h3.billID)
//c3.display()


var c4 = Customer(customerID: 04, firstName: "Gagan", lastName: "Kaur", emailID: "gagandeep@gmail.com")


var customers = [Int : Customer]()
customers.updateValue(c1, forKey: c1.customerID)
customers.updateValue(c2, forKey: c2.customerID)
customers.updateValue(c3, forKey: c3.customerID)
customers.updateValue(c4, forKey: c4.customerID)

func  getCustomerByID(id : Int)-> Customer?
{
    if let cust = customers[id]
    {
        return cust;
    }
    else
    {
        return nil
    }
}


if customers.count==0
{
    print("No Customers Exists Yet")
}



