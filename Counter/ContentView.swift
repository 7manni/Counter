//
//  ContentView.swift
//  Counter
//
//  Created by Abdulrahman Atta on 17/06/2023.
//

import SwiftUI

struct ContentView: View {
    
    @AppStorage ("counter") var counter = 0
    @AppStorage ("message") var message = "Have some cookies! 🍪"
    
    var body: some View {
        VStack {
            Text("\(counter) Cookies eaten")
            Button {
                print("Bye Bye Cookie")
                counter += 1
                if counter >= 40 {
                    message = "I hope you have health insurance 😔"
                }else if counter >= 30 {
                    message = "Eating any more could be fatal! 🤕"
                }else if counter >= 20 {
                    message = "Don't eat too many cookies 🙃"
                
            }
        } label: {
            Text("OM NOM NOM")
            
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 10)
        }
            Button {
                counter -= 1
            }label: {
                Text("One less piece of 🍪")
                    .padding()
                    .background(Color.accentColor)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 10)
            }
            Button {
                counter = 0
                message = ""
            }label: {
                Text("Reset")
                    .padding()
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.3), radius: 10)
            }
            
        Text(message)
            if counter >= 40 {
                Text("😡")
                    .padding()
                    .font(.system(size: 80))
            }
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
