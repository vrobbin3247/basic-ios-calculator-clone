//
//  ButtonType.swift
//  testing
//
//  Created by Vaibhav Mandavkar on 24/06/25.
//
import SwiftUI
import Foundation

enum ButtonType: Hashable, CustomStringConvertible{
    case digit (_digit: Digit)
    case operation (_operation: ArithmeticOperators)
    case negative
    case percent
    case decimal
    case equals
    case allClear
    case clear
    
    var description: String{
        switch self{
        case .digit(let digit):
            return digit.description
            
        case .operation(let operation):
            return operation.description
            
        case .negative:
            return "±"
        
        case .percent:
            return "%"
        
        case .decimal:
            return "."
        
        case .equals:
            return "="
        
        case .allClear:
            return "AC"
        
        case .clear:
            return "C"
        }
        
    }
    
    var backgroundColor: Color{
        switch self{
        case .allClear, .clear, .negative, .percent:
            return Color(.lightGray)
            
        case .operation, .equals:
            return .orange
        
        case .digit, .decimal:
            return .secondary
        }
    }
    
    var foregroundColor: Color{
        switch self{
        case .allClear, .clear, .negative, .percent:
            return .black
            
        default:
            return .white
        }
    }
}
