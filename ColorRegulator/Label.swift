//
//  Label.swift
//  ColorRegulator
//
//  Created by BEREZIN Stanislav on 19.10.2020.
//

import SwiftUI

struct Label: View {
    
    // MARK: - Properties
    let text: String
    let color: Color
    
    // MARK: - View
    var body: some View {
        Text(text)
            .frame(width: 40)
            .foregroundColor(color)
    }
    
    init(text: String, color: Color = .black) {
        self.text = text
        self.color = color
    }
}

// MARK: - Preview
struct Label_Previews: PreviewProvider {
    static var previews: some View {
        Label(text: "34", color: .blue)
    }
}
