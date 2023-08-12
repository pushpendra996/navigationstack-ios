//
//  ContentView.swift
//  NavigationStack
//
//  Created by Pushpendra on 12/08/23.
//

import SwiftUI

struct ContentView: View {
    let players = [
                "Roy Kent",
                "Richard Montlaur",
                "Dani Rojas",
                "Jamie Tartt",
            ]
    var body: some View {
        NavigationStack {
            List(players, id: \.self) { player in
                NavigationLink(player, value: player)
            }
            .navigationDestination(for: String.self, destination: PlayerView.init)
            .navigationTitle("Select Players")
        }
    }
    
    struct PlayerView : View {
        let name : String
        var body: some View {
            Text("Hey \(name) Welcome")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
