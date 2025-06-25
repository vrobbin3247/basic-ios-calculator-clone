//
//  ArithmeticOperators.swift
//  testing
//
//  Created by Vaibhav Mandavkar on 24/06/25.
//

import Foundation

enum ArithmeticOperators: CaseIterable, CustomStringConvertible{
    case addition
    case subtraction
    case multiplication
    case division
   
    
    var description: String{
        switch self{
        case .addition:
            return "+"
        
        case .subtraction:
            return "-"
            
        case .multiplication:
            return "x"
        
        case .division:
            return "÷"
        }
    }
}
