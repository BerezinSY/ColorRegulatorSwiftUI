//
//  ColorView.swift
//  ColorRegulator
//
//  Created by BEREZIN Stanislav on 19.10.2020.
//

import SwiftUI

struct ColorView: View {
    
    // MARK: - Properties
    let height: CGFloat
    let color: UIColor
    let borderColor: Color
    
    // MARK: - View
    var body: some View {
        let totalWidth = UIScreen.main.bounds.width
        let totalHeight = UIScreen.main.bounds.height
        let cornerRadius = totalWidth / 20
        
            Color(color)
                .frame(height: totalHeight / height)
                .cornerRadius(cornerRadius)
                .overlay(RoundedRectangle(cornerRadius: cornerRadius).stroke(Color.white))
                .padding()
    }
    
    init(height: CGFloat = 6, color: UIColor, borderColor: Color = .white) {
        self.height = height
        self.color = color
        self.borderColor = borderColor
    }
}

// MARK: - Preview
struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .gray)
    }
}
