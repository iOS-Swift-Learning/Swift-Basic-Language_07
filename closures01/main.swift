//
//  main.swift
//  closures01
//
//  Created by XCODE on 2015/10/20.
//  Copyright © 2015年 Nick. All rights reserved.
//

import Foundation

//closures 閉包(動態運作 ex:訂購者,廠商,原料商);在某個地方,臨時動態配置方法

func getNewPayRoll(dayPay:Int) -> () -> Int {
    
    var salary:Int = 0
    
    func toWork() -> Int {
        
        salary += dayPay
        return salary
    } //end toWork func
    
    return toWork
}

let employeeA = getNewPayRoll(3000)
let employeeB = getNewPayRoll(1500)
let employeeC = getNewPayRoll(1000)

for var i=1; i<=30; i++ {
    
    print("第\(i)天:\nemployeeA:\(employeeA())\nemployeeB:\(employeeB())\nemployeeC:\(employeeC())\n")
} //end for loop









