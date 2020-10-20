//
//  BackgroundView.swift
//  ColorRegulator
//
//  Created by BEREZIN Stanislav on 19.10.2020.
//

import SwiftUI

struct BackgroundView: View {
    
    let color: UIColor
    
    var body: some View {
        Color(color)
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(color: .darkGray)
    }
}
