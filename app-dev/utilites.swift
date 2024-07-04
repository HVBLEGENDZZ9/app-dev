//
//  utilites.swift
//  app-dev
//
//  Created by Harshvardhan Bhosale on 29/06/24.
//

import Foundation
import SwiftUI

func greetingText() -> String{
    let hour = Calendar.current.component(.hour, from: Date())
    switch hour {
    case 6..<12 : return "Good Morning"
    case 12..<17 : return "Good Afternoon"
    case 17..<22 : return "Good Evening"
    default: return "Good Evening"
    }
}

func contentColorScheme() -> Color{
    let hour = Calendar.current.component(.hour, from: Date())
    switch hour {
    case 6..<12 : return .teal
    case 12..<17 : return .orange
    case 17..<22 : return .purple
    default: return .black
    }
}

let timer = Timer.publish(
        every: 2,       // Second
        tolerance: 0.1, // Gives tolerance so that SwiftUI makes optimization
        on: .main,      // Main Thread
        in: .common     // Common Loop
    ).autoconnect()


var greetings : some View{
    VStack{
        Text(greetingText()).font(.largeTitle.weight(.bold)).padding([.top], 30).foregroundStyle(LinearGradient(gradient: Gradient(colors: [contentColorScheme(), .pink]), startPoint: .leading, endPoint: .trailing))
        Spacer()
    }
}



func randomPath() -> CGSize {
    let widthBound = UIScreen.main.bounds.width / 2
    let heightBound = UIScreen.main.bounds.height / 2
    let randomOffset = CGSize(
        width: CGFloat.random(in: -widthBound...widthBound),
        height: CGFloat.random(in: -heightBound...heightBound)
        )
    return randomOffset
}


