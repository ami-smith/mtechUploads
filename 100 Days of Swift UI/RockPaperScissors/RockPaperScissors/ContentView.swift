//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Ami Smith on 1/18/23.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = ["Rock", "Paper", "Scissors"]
    @State private var showingScore = false
    @State private var winningChoice = Int.random(in: 0...2)
    @State private var score = 0
    @State private var scoreTitle = ""
    @State private var botChoice = ["Rock", "Paper", "Scissors"]
    @State private var winOrLose = ["win", "lose"].shuffled()
    @State private var userChoice = ["Rock", "Paper", "Scissors"]
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack() {
                Spacer()
                
                Spacer()
                
                VStack(spacing: 15) {
                    Spacer()
                    VStack {
                        Text("Rock, Paper, Scissors")
                            .foregroundStyle(.secondary)
                            .font(.largeTitle.weight(.heavy))
                            .foregroundColor(.white)
                        
                        Spacer()
                        Text("This round, you should try to")
                            .foregroundColor(.white)
                        
                        Text(winOrLose.shuffled()[1])
                            .foregroundColor(.white)
                            .foregroundStyle(.secondary)
                            .font(.largeTitle)
                        
                        Spacer()
                        
                        Text("Bot's Choice: \((botChoice[winningChoice]))")
                        
                            .font(.largeTitle.weight(.semibold))
                        
                        Spacer()
                        
                        Text("Your Choice:")
                        
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            choiceTapped(number)
                        } label: {
                            Text(moves[number])
                                .clipShape(Capsule())
                            
                            
                        }
                        
                    }
                    
                    
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.regularMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    Spacer()
                    Spacer()
                    
                    Text("Score: \(score)")
                        .foregroundColor(.white)
                        .font(.title.bold())
                    Spacer()
                }
                .padding()
                
            }
            
            .alert(scoreTitle, isPresented: $showingScore) {
                Button("Continue", action: makeYourMove)
            } message: {
                Text("Your score is \(score)")
                
            }
            
        }
        
    }
    func choiceTapped(_ number: Int) {
        if number == winningChoice {
            scoreTitle = "You Win This Round"
            score += 1
        } else {
            scoreTitle = "You Lose This Round"
            score -= 1
        }
        showingScore = true
    }
    
    func makeYourMove() {
        winningChoice = Int.random(in: 0...2)
    }
    
}

//if the bot says you need to win, you should have the switch statement for:
//rock beats scissors, paper beats rock, scissors beats paper
//if the bot says you need to lose, you should have the switch statement for:
//rock loses to paper, paper loses to scissors, scissors loses to rock.


//func userShouldWin (){
//    if userChoice == "Rock" && botChoice == "Paper" {
        //some code here
//    } else if userChoice == "Paper" && botChoice == "Scissors"{
        // some code here
//    } else if userChoice == "Scissors" && botChoice == "Rock" {
        //some code here
//    } else {
//        //lose point
//    }
//}
//
//func userShouldLose() {
//    if botChoice == "Rock" && userChoice == "Scissors" {
            //some code here
    //    } else if botChoice == "Paper" && userChoice == "Rock" {
            // some code here
    //    } else if botChoice == "Scissors" && userChoice == "Paper" {
            //some code here
    //    } else {
    //        lose point



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


