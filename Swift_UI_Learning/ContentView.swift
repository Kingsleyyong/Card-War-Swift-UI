//
//  ContentView.swift
//  Swift_UI_Learning
//
//  Created by Kingsley Yong on 13/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Spacer()
            Image("logo")
                .resizable()
                .frame(width: 200.0, height: 100.0)
            
            Spacer()
            
            HStack{
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpuCard)
                Spacer()
            }
            
            Spacer()
            
            Button(action: {
                //Generate rand num from 2 to 14 inclusively
                let playerRand = Int.random(in: 2...14)
                let cpuRand = Int.random(in: 2...14)
                
                //Update card
                playerCard = "card"+String(playerRand)
                cpuCard = "card"+String(cpuRand)
                
                //Update score
                if(playerRand>cpuRand){
                    playerScore += 1
                }else if(cpuRand>playerRand){
                    cpuScore += 1
                }
                
            }, label: {
                Image("dealbutton")
                    .resizable()
                    .frame(width: 130.0, height: 50.0)
            })
            
            
            Spacer()
            HStack{
                Spacer()
                VStack{
                    Text("Player")
                        .padding()
                    Text(String(playerScore))
                        
                }
                
                
                Spacer()
                
                VStack{
                    Text("CPU")
                        .padding()
                    Text(String(cpuScore))
                        
                }
                
                Spacer()
            }
            .foregroundColor(Color.white)
            .font(.custom("", size: 30))
            
            Spacer()
        }
        .background(Image("background"))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
