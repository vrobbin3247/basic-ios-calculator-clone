//
//  CalculatorView.swift
//  testing
//
//  Created by Vaibhav Mandavkar on 24/06/25.
//

import SwiftUI

struct CalculatorView: View {
    
    var buttonTypes: [[ButtonType]]{
        [[.allClear, .negative, .percent, .operation(_operation: .division)],[.digit(_digit: .seven), .digit(_digit: .eight), .digit(_digit: .nine), .operation(_operation: .multiplication)],
         [.digit(_digit: .four), .digit(_digit: .five), .digit(_digit: .six), .operation(_operation: .subtraction)],
         [.digit(_digit: .one), .digit(_digit: .two), .digit(_digit: .three), .operation(_operation: .addition)],
         [.digit(_digit: .zero), .decimal, .equals]]
    }
    
    var body: some View{
        VStack{
            
            Spacer()
            displayText
            buttonPad
            
            
            
        }.background(Color.black)
    }
}

struct CalculatorView_Previews: PreviewProvider{
    static var previews: some View{
        CalculatorView()
    }
}

extension CalculatorView{
    
    private var displayText: some View{
        Text("0")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .font(.system(size: 88, weight: .light))
            .lineLimit(1)
            .minimumScaleFactor(0.2)
    }
    
    private var buttonPad: some View{
        VStack{
            ForEach(buttonTypes, id: \.self){ row in
                HStack{
                    ForEach(row, id: \.self){ buttonType in
                        Button(buttonType.description){ }
                    }
                }
            }
        }
    }
}
