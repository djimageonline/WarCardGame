//
//  ContentView.swift
//  War Card Game
//
//  Created by Johnny Proano on 9/16/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()

                HStack {

                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()

                }
                Spacer()
                                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                .foregroundColor(.white)
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }.foregroundColor(.white)
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    
                    }.foregroundColor(.white)
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    func deal(){
        var playerRandomRef = Int.random(in: 2...14)
        var cpuRandomRef = Int.random(in: 2...14)
    
//    Randomize the players Card
        playerCard = "card" + String(playerRandomRef)
    
//    Randomize cpu card
        cpuCard = "card" + String(cpuRandomRef)

//    Score

        if playerRandomRef > cpuRandomRef {
            playerScore += 1
        } else if cpuRandomRef > playerRandomRef {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
