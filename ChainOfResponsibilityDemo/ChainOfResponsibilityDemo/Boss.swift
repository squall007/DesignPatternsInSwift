//
//  Boss.swift
//  ChainOfResponsibilityDemo
//
//  Created by Sam Stone on 07/11/2016.
//  Copyright © 2016 Sam Stone. All rights reserved.
//

class Boss : Chain {
    
    private var _nextManagementLevel : Chain?
    var nextManagementLevel : Chain{
        set{
            _nextManagementLevel = newValue
        }
        get{
            return _nextManagementLevel!
        }
    }
    
    func shouldApproveExpenditure(expenditure : Expenditure) {
        if expenditure.amount > 101 && expenditure.amount < 1000 {
            print("Your boss can approve this expenditure")
        } else {
            if _nextManagementLevel != nil{
                nextManagementLevel.shouldApproveExpenditure(expenditure: expenditure)
            }
        }
    }
}
