//
//  TextFieldView.swift
//  ColorRegulator
//
//  Created by BEREZIN Stanislav on 19.10.2020.
//

import SwiftUI

struct TextFieldView: View {
    
    // MARK: - Alert message
    private let lowLimit = 0
    private let upperLimit = 255
    
    private var alertTitle: String {
        """
        Attention!
        Value is out of limit!
        """
    }
    
    private var alertMessage: String {
        """
        The value you typed in is incorrect.
        The limit of the data is \(lowLimit)...\(upperLimit) points.
        The current value is going to be default.
        """
    }
    
    // MARK: - Properties
    let value: Binding<Double>
    let showAlert: Binding<Bool>
    let onCommit: () -> ()
    
    // MARK: - View
    var body: some View {
        TextField("", value: value,
                  formatter: NumberFormatter(),
                  onEditingChanged: { _ in },
                  onCommit: onCommit)
            
            .frame(width: 45)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .multilineTextAlignment(.trailing)
            .alert(isPresented: showAlert, content: {
                Alert(title: Text(alertTitle), message: Text(alertMessage))
            })
            
    }
}

// MARK: - Preview
struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(value: .constant(128), showAlert: .constant(false), onCommit: {})
    }
}
