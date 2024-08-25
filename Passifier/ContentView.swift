//
//  ContentView.swift
//  Passifier
//
//  Created by Vishrut Jha on 8/25/24.
//
import SwiftUI

struct ContentView: View {
    @State private var isShowingSplash = true
    
    var body: some View {
        Group {
            if isShowingSplash {
                SplashScreenView()
            } else {
                PassesGridView()
            }
        }
    }
}

#Preview {
    ContentView()
}
