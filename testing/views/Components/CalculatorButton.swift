//
//  CalculatorButton.swift
//  testing
//
//  Created by Vaibhav Mandavkar on 25/06/25.
//
import SwiftUI

extension CalculatorView{
    struct CalculatorButton: View{
        
        let buttonType: ButtonType
        
        var body: some View{
            Button(buttonType.description){ }
                .buttonStyle(CalculatorButtonStyle(
                    size: getButtonSize(),
                    backgroundColor:buttonType.backgroundColor,
                    foregroundColor: buttonType.foregroundColor,
                    isWide: buttonType == .digit(_digit: .zero))
            )
        }
        private func getButtonSize() -> CGFloat{
            let screenWidth = UIScreen.main.bounds.width
            let buttonCount: CGFloat = 4.0
            let spacingCount = buttonCount + 1
            return (screenWidth - (spacingCount * Constants.padding))/buttonCount
    }
}

}
