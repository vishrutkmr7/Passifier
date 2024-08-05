    //
    //  SignInView.swift
    //  Passifier
    //
    //  Created by Vishrut Jha on 8/5/24.
    //

import SwiftUI
import AuthenticationServices

struct SignInView: View {
    @Binding var isSignedIn: Bool
    @State private var animation: CGFloat = 1.0
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Passifier")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .scaleEffect(animation)
                    .animation(Animation.easeInOut(duration: 1.0).repeatForever(), value: animation)
                    .onAppear { self.animation = 1.3 }
                
                Spacer()
                
                SignInWithAppleButton(.signIn) { request in
                    request.requestedScopes = [.fullName, .email]
                } onCompletion: { result in
                    switch result {
                        case .success(_):
                            print("Authorization successful.")
                            isSignedIn = true
                        case .failure(let error):
                            print("Authorization failed: " + error.localizedDescription)
                    }
                }
                .frame(width: 280, height: 60)
                .padding()
            }
        }
    }
}

#Preview {
    SignInView(isSignedIn: .constant(false))
}
