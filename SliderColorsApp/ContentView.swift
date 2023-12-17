//
//  ContentView.swift
//  SliderColorsApp
//
//  Created by Кирилл Саталкин on 16.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sliderValueRed = 0.0
    @State private var sliderValueGreen = 128.0
    @State private var sliderValueBlue = 255.0
    @State private var textValue = ""
    
    var body: some View {
        ZStack{
            Color.yellow
                .ignoresSafeArea()
            VStack {
                LabelView(red: sliderValueRed, green: sliderValueGreen, blue: sliderValueBlue)
                ColorSliderView(value: $sliderValueRed, color: .red)
                ColorSliderView(value: $sliderValueGreen, color: .green)
                ColorSliderView(value: $sliderValueBlue, color: .blue)
                Spacer()
            }
            
                       .padding()

        }
    }
}



  

#Preview {
    ContentView()
}

struct ColorSliderView: View {
    
    @Binding var value: Double
        @State var color: Color
        
        var body: some View {
            HStack (spacing: 5){
                Text("0")
                    .frame(width: 50, height: 30)
                    .foregroundColor(color)
                
                Slider(value: $value, in: 0...255, step: 1)
                    .accentColor(color)
                
                Text("\(Int(value))")
                    .frame(width: 50, height: 30)
                    
            }
        }
    }
