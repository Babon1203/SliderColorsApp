//
//  LabelView.swift
//  SliderColorsApp
//
//  Created by Кирилл Саталкин on 16.12.2023.
//

import SwiftUI

struct LabelView: View {
    
        var red: Double
        var green: Double
        var blue: Double
        
        var body: some View {
            let color = Color(red: red / 255, green: green / 255, blue: blue / 255)

            
            return Rectangle()
                .foregroundColor(color)
                .frame(width: 300, height: 200)
                .cornerRadius(10)
                
        }
    }


#Preview {
    LabelView(red: 80, green:20, blue:100)
}
