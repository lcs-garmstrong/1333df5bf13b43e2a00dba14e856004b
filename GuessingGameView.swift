//
//  GuessingGameView.swift
//  GuessingGame
//
//  Created by Russell Gordon on 2021-11-30.
//

import SwiftUI

struct GuessingGameView: View {
    
    // MARK: Stored properties
    
    // The input collected from the Slider
	// ADD MISSING CODE HERE
    
    // The secret target that the user is trying to guess
    @State var target = Int.random(in: 0...100)
    
    // What feedback to provide the user with
    @State var feedback = ""
    
    // MARK: Computed properties
    var body: some View {

        VStack {

			// Collect the user's input using a Slider
			// ADD MISSING CODE HERE
			
			// Show the user's input to them using a Text view        
			// ADD MISSING CODE HERE
            
            // Let the user check to see if their current guess is correct
            Button(action: {
                
                // Convert the user's input, which is a Double, into 
                let currentGuessAsInteger = Int(currentGuess)
                
                // Compare the user's guess to the target and give appropriate feedback
				// ADD MISSING CODE HERE
                
            }, label: {
                Text("Submit Guess")
            })
            .buttonStyle(.bordered)
            
            // Show the feedback to the user
            Text(feedback)
                .font(.title3)
                .italic()
                .multilineTextAlignment(.center)
            
            Spacer()
            
        }
        .padding()
        .navigationTitle("Guessing Game")
        
    }
}

struct GuessingGameView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GuessingGameView()
        }
    }
}
