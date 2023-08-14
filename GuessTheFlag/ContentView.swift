//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Valentin FLGT on 12/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = [
        "Estonia",
        "France",
        "Germany",
        "Ireland",
        "Italy",
        "Nigeria",
        "Poland",
        "Russia",
        "Spain",
        "UK",
        "US"
    ].shuffled()
    
    @State private var correctAnswer = Int.random(in: 0...2)
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var userScore = 0
    @State private var gameIteration = 0
    
    var lastGameIteration = 8
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
            .ignoresSafeArea()
            
            VStack {
                Text("Guess the Flag")
                    .font(.largeTitle.weight(.bold))
                    .foregroundColor(.white)
                
                Spacer()
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            .padding()
            .alert(scoreTitle, isPresented: $showingScore) {
                if gameIteration != lastGameIteration {
                    Button("Continue", action: askQuestion)
                } else {
                    Button("Reset", action: reset)
                }
            } message: {
                Text("Your score is \(userScore)")
            }
        }
        
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            userScore += 100
            gameIteration += 1
            displayCorrectAlert(number)
        } else {
            scoreTitle = "Wrong that's the flag of \(countries[number])"
            userScore -= 50
            gameIteration += 1
            displayCorrectAlert(number)
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func reset() {
        userScore = 0
        gameIteration = 0
        countries.shuffle()
    }
    
    func displayCorrectAlert(_ number: Int) {
        if (number == correctAnswer && gameIteration == 7) {
            scoreTitle = "Correct! Warning, last question!"
        } else if (number != correctAnswer && gameIteration == 7) {
            scoreTitle = "Wrong that's the flag of \(countries[number])! Warning, last question!"
        } else if (gameIteration == 8) {
            scoreTitle = "GAME OVER!"
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
