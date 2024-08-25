//
//  SplashScreenView.swift
//  Passifier
//
//  Created by Vishrut Jha on 8/25/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        Group {
            if isActive {
                PassesGridView()
            } else {
                VStack {
                    Text("Passifier")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
