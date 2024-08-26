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
                ZStack {
                    Color(.black)
                        .ignoresSafeArea()
                    
                    MeshGradient(
                        width: 3,
                        height: 3,
                        locations: .points([
                            SIMD2<Float>(0.000, 0.000),
                            SIMD2<Float>(0.140, 0.000),
                            SIMD2<Float>(1.000, 0.000),
                            SIMD2<Float>(0.000, 0.100),
                            SIMD2<Float>(0.900, 0.800),
                            SIMD2<Float>(1.000, 0.650),
                            SIMD2<Float>(0.000, 1.000),
                            SIMD2<Float>(0.450, 1.000),
                            SIMD2<Float>(1.000, 1.000)
                        ]),
                        colors: .colors([
                            Color(red: 0.192, green: 0.200, blue: 0.400),
                            Color(red: 0.800, green: 0.000, blue: 0.000),
                            Color(red: 0.900, green: 0.400, blue: 0.000),
                            Color(red: 0.800, green: 0.000, blue: 0.000),
                            Color(red: 0.600, green: 0.300, blue: 0.800),
                            Color(red: 0.900, green: 0.600, blue: 0.200),
                            Color(red: 0.300, green: 0.000, blue: 0.000),
                            Color(red: 0.600, green: 0.100, blue: 0.400),
                            Color(red: 0.900, green: 0.300, blue: 0.700)
                        ]),
                        background: Color(red: 0.100, green: 0.100, blue: 0.400),
                        smoothsColors: true
                    )
                    .frame(width: 300, height: 300)
                    .mask {
                        VStack {
                            Image(systemName: "wallet.pass.fill")
                                .font(.system(size: 150))
                            
                            Text("Passifier")
                                .font(.custom("SFMono-Bold", size: 50))
                                .fontWeight(.bold)
                        }
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) {
                            withAnimation {
                                self.isActive = true
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
