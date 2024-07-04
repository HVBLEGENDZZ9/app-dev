//
//  pickerPathConfigs.swift
//  app-dev
//
//  Created by Harshvardhan Bhosale on 15/06/24.
//
import SwiftUI
import Foundation

struct utilityPickerShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.maxX, y: 100))
        path.addLine(to: CGPoint(x: rect.maxX, y: 340))
        path.addLine(to: CGPoint(x: rect.minX, y: 340))
        path.addLine(to: CGPoint(x: rect.minX, y: 200))
        path.addLine(to: CGPoint(x: 50, y: 100))
        path.addLine(to: CGPoint(x: rect.minX, y: 100))

        return path
    }
}

