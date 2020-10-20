//
//  ContentView.swift
//  ColorRegulator
//
//  Created by BEREZIN Stanislav on 19.10.2020.
//

import SwiftUI

struct MainView: View {
    
    // MARK: - Remotable properties
    @State private var redValue: Double = 128
    @State private var greenValue: Double = 128
    @State private var blueValue: Double = 128
    
    @State private var showAlert: Bool = false
    
    // MARK: - Color limit
    let lowColorLimit: Double = 0
    let upperColorLimit: Double = 255
    
    // MARK: - View
    var body: some View {
        
        ZStack {
            BackgroundView(color: .darkGray)
            VStack {
                ColorView(color: UIColor(red: CGFloat(redValue / 255),
                                         green: CGFloat(greenValue / 255),
                                         blue: CGFloat(blueValue / 255),
                                         alpha: 1))
                VStack {
                    HStack {
                        Label(text:"\(lround(redValue))", color: .white)
                        SliderView(value: $redValue, color: .red)
                        TextFieldView(value: $redValue, showAlert: $showAlert, onCommit: checkData)
                    }
                    HStack {
                        Label(text:"\(lround(greenValue))", color: .white)
                        SliderView(value: $greenValue, color: .green)
                        TextFieldView(value: $greenValue, showAlert: $showAlert, onCommit: checkData)
                    }
                    HStack {
                        Label(text:"\(lround(blueValue))", color: .white)
                        SliderView(value: $blueValue)
                        TextFieldView(value: $blueValue, showAlert: $showAlert, onCommit: checkData)
                    }
                }
                .padding()
                Spacer()
            }
        }
    }
    
    // MARK: - Check typed data
    func checkData() {
        
        let overLimitRed = redValue > upperColorLimit || redValue < lowColorLimit
        let overLimitGreen = greenValue > upperColorLimit || greenValue < lowColorLimit
        let overLimitBlue = blueValue > upperColorLimit || blueValue < lowColorLimit
        
        showAlert = overLimitRed || overLimitGreen || overLimitBlue
        
        if overLimitRed {
            redValue = upperColorLimit / 2
        } else if overLimitGreen {
            greenValue = upperColorLimit / 2
        } else if overLimitBlue {
            blueValue = upperColorLimit / 2
        }
    }
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
