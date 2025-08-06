//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
  @State private   var name = ""
        @State private var textTitle = " What is your name?"
    @State private var email = ""
    @State private var textEmail = "What is your email?"
    var body: some View {
        VStack {
         
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            
            Text(textEmail)
                .font(.title)
            TextField("Type your email here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title2)
                .border(Color.blue, width: 1)
            Button("Submit ") {
              textTitle = "Welcome, \(name) !"
            
             }
            .font(.title2)
            .buttonStyle( .borderedProminent)
            .tint(.purple)
        }

        .padding()
    }
}

#Preview {
    ContentView()
}
