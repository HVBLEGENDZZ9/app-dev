//
//  ContentView.swift
//  app-dev
//
//  Created by Harshvardhan Bhosale on 15/06/24.
//

import SwiftUI
import CoreGraphics

struct ContentView: View {
    
    @State private var phase = 0.0
    
    @State var message = "hello"
    
    var body: some View {
        
        let card = RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            .strokeBorder(contentColorScheme(), style: StrokeStyle(lineWidth: 4, dash: [10], dashPhase: phase))
            .frame(width: 375, height: 275).background(.ultraThinMaterial).opacity(0.7)
            .onAppear {
                withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                    phase -= 20
                }
            }
        
        ZStack{
            BgdFullScreenVideoView(videoName: "backvideo3")
            greetings
            VStack{
                Button(action: {
                    message = "Button 1 tapped!"
                    print("hello button text")
                }){
                    ZStack{
                        card
                        Text("Text").font(.custom("Borel", size: 90)).foregroundStyle(LinearGradient(gradient: Gradient(colors: [contentColorScheme(), .pink]), startPoint: .leading, endPoint: .trailing))
                        
                    }
                    
                }
                .padding()
                .onTapGesture {
                    withAnimation(.bouncy()){
                        
                    }
                }
                
                Button(action: {
                    message = "Button 1 tapped!"
                    print("hello button photo")
                }){
                    ZStack{
                        card
                        Text("Image").font(.custom("Borel", size: 90)).foregroundStyle(LinearGradient(gradient: Gradient(colors: [contentColorScheme(), .pink]), startPoint: .leading, endPoint: .trailing))
                    }
                    
                }
                .padding()
                Spacer()
            }.position(x: UIScreen.main.bounds.width*0.5, y: 475)
        }
    }
}


#Preview {
    ContentView()
}
