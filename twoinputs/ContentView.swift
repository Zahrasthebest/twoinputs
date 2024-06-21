//
//  ContentView.swift
//  twoinputs
//
//  Created by Zahra Moosani on 6/21/24.
// Shipbuilder app - two names combine to make one duo

import SwiftUI

struct ContentView: View {
    @State private var name1 = " "
    @State private var name2 = " "
    @State private var textTitle = " "
    var body: some View {
        VStack{
            
            Text ("What is your name?")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            TextField(" ", text: $name1)
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            
            Text ("What is your friends name?")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            TextField(" ", text: $name2)
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
            
            Button("Submit Names") {
                textTitle = ("Your duo name is, \(name1 + name2)!")
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.green)
            Text("\(textTitle)")
        
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
