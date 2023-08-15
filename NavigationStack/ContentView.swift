//
//  ContentView.swift
//  NavigationStack
//
//  Created by Pushpendra on 12/08/23.
//

import SwiftUI

struct ContentView: View {
   
    let navigationItems = [
        NavigationItem(name: "View A", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.", menu: .a),
        NavigationItem(name: "View B", description: "Anything", menu: .b),
        NavigationItem(name: "View C", description: "Anything", menu: .c),
        NavigationItem(name: "View D", description: "Anything", menu: .d)]
    
    var body: some View {
        NavigationStack {
            List(navigationItems, id: \.self) { item in
                NavigationLink(item.name, value: item)
            }
            .navigationDestination(for: NavigationItem.self, destination: { item in
                switch item.menu {
                case .a:
                    AView(viewDescription: item.description)
                case .b:
                    BView()
                case .c:
                    CView()
                case .d:
                    DView()
                }
            })
            .navigationTitle("Select View")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct NavigationItem: Identifiable, Hashable {
    var id = UUID()
    var name: String
    var description: String
    var menu: Menu
}



enum Menu: String {
    case a
    case b
    case c
    case d
}
