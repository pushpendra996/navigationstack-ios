//
//  AView.swift
//  NavigationStack
//
//  Created by Pushpendra on 15/08/23.
//

import SwiftUI

struct AView: View {
    @State var viewDescription : String = ""
    var body: some View {
        Text("Hello, World! A View\n\(viewDescription)")
    }
}

struct AView_Previews: PreviewProvider {
    static var previews: some View {
        AView()
    }
}
