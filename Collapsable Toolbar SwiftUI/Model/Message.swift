//
//  Message.swift
//  Collapsable Toolbar SwiftUI
//
//  Created by Towhid on 4/23/22.
//

import SwiftUI

struct Message : Identifiable {
    var id = UUID().uuidString
    var message : String
    var userName : String
    var tintColor : Color
}
var allMessages : [Message] = [
    Message(message: "what is the color ?" ,userName: "aa" , tintColor: .pink),
    Message(message: "what is the color ?" ,userName: "bb" , tintColor: .red),
    Message(message: "what is the color ?" ,userName: "cc" , tintColor: .orange),
    Message(message: "what is the color ?" ,userName: "dd" , tintColor: .yellow),
    Message(message: "what is the color ?" ,userName: "ee" , tintColor: .blue),
    Message(message: "what is the color ?" ,userName: "ff" , tintColor: .gray),
    Message(message: "what is the color ?" ,userName: "gg" , tintColor: .pink),
    Message(message: "what is the color ?" ,userName: "hh" , tintColor: .red),
    Message(message: "what is the color ?" ,userName: "ii" , tintColor: .orange),
    Message(message: "what is the color ?" ,userName: "jj" , tintColor: .yellow),
    Message(message: "what is the color ?" ,userName: "kk" , tintColor: .blue),
    Message(message: "what is the color ?" ,userName: "ll" , tintColor: .gray),
    Message(message: "what is the color ?" ,userName: "mm" , tintColor: .pink),
    Message(message: "what is the color ?" ,userName: "aa" , tintColor: .pink),
    Message(message: "what is the color ?" ,userName: "bb" , tintColor: .red),
    Message(message: "what is the color ?" ,userName: "cc" , tintColor: .orange),
    Message(message: "what is the color ?" ,userName: "dd" , tintColor: .yellow),
    Message(message: "what is the color ?" ,userName: "ee" , tintColor: .blue),
    Message(message: "what is the color ?" ,userName: "ff" , tintColor: .gray),
    Message(message: "what is the color ?" ,userName: "gg" , tintColor: .pink),
    Message(message: "what is the color ?" ,userName: "hh" , tintColor: .red),
    Message(message: "what is the color ?" ,userName: "ii" , tintColor: .orange),
    Message(message: "what is the color ?" ,userName: "jj" , tintColor: .yellow),
    Message(message: "what is the color ?" ,userName: "kk" , tintColor: .blue),
    Message(message: "what is the color ?" ,userName: "ll" , tintColor: .gray),
    Message(message: "what is the color ?" ,userName: "mm" , tintColor: .pink),
    Message(message: "what is the color ?" ,userName: "aa" , tintColor: .pink),
    Message(message: "what is the color ?" ,userName: "bb" , tintColor: .red),
    Message(message: "what is the color ?" ,userName: "cc" , tintColor: .orange),
    Message(message: "what is the color ?" ,userName: "dd" , tintColor: .yellow),
    Message(message: "what is the color ?" ,userName: "ee" , tintColor: .blue),
    Message(message: "what is the color ?" ,userName: "ff" , tintColor: .gray),
    Message(message: "what is the color ?" ,userName: "gg" , tintColor: .pink),
    Message(message: "what is the color ?" ,userName: "hh" , tintColor: .red),
    Message(message: "what is the color ?" ,userName: "ii" , tintColor: .orange),
    Message(message: "what is the color ?" ,userName: "jj" , tintColor: .yellow),
    Message(message: "what is the color ?" ,userName: "kk" , tintColor: .blue),
    Message(message: "what is the color ?" ,userName: "ll" , tintColor: .gray),
    Message(message: "what is the color ?" ,userName: "mm" , tintColor: .pink)
]


