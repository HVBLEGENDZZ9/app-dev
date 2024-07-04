//
//  greetings.swift
//  app-dev
//
//  Created by Harshvardhan Bhosale on 29/06/24.
//

import Foundation

var greetings :String{
    
    let hour = Calendar.current.component(.hour, from: Date())
    switch hour {
    case 6..<12 : return "Good Morning!"
    case 12..<17 : return "Good Afternoon!"
    case 17..<22 : return "Good Evening!"
    default: return "Good Evening!"
    }
}
