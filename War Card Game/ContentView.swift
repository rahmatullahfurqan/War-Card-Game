//
//  ContentView.swift
//  War Card Game
//
//  Created by User on 16/07/23.
//

import SwiftUI

struct ContentView: View {
    var cardNames = (2...14).map{"card\($0)"}
    @State private var firstCard : Int = Int.random(in: 1...12)
    @State private var secondCard : Int = Int.random(in: 1...12)
    
    var body: some View {
        ZStack{
            Image("background-plain").resizable().ignoresSafeArea()
            VStack(alignment: .center){
                Spacer()
                Image("logo")
                Spacer()
                HStack(){
                    Spacer()
                    Image(cardNames[firstCard])
                    Spacer()
                    Image(cardNames[secondCard])
                    Spacer()
                }
                Spacer()
                Button{
                    firstCard = Int.random(in: 1...12)
                    secondCard = Int.random(in: 1...12)
                }label: {
                    Image("button")
                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").padding(.bottom,10)
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").padding(.bottom,10)
                        Text("0").font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white).font(.headline)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
