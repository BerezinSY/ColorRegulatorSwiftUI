//
//  SliderView.swift
//  ColorRegulator
//
//  Created by BEREZIN Stanislav on 19.10.2020.
//

import SwiftUI

struct SliderView: View {
    
    // MARK: - Properties
    let value: Binding<Double>
    let range: ClosedRange<Double>
    let color: Color
    
    // MARK: - View
    var body: some View {
        Slider(value: value, in: range, step: 1)
                .accentColor(color)
    }
    
    init(value: Binding<Double>,
         range: ClosedRange<Double> = 0...255,
         color: Color = .blue) {
        
        self.value = value
        self.range = range
        self.color = color
    }
}

// MARK: - Preview
struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(128))
    }
}
