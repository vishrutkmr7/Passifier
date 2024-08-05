//
//  ContentView.swift
//  Passifier
//
//  Created by Vishrut Jha on 8/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isSignedIn = false
    
    var body: some View {
        if isSignedIn {
            PassesGridView()
        } else {
            SignInView(isSignedIn: $isSignedIn)
        }
    }
}

#Preview {
    ContentView()
}
