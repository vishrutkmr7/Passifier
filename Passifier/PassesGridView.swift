//
//  PassesGridView.swift
//  Passifier
//
//  Created by Vishrut Jha on 8/5/24.
//

import SwiftUI

struct PassesGridView: View {
    @State private var passes: [Pass] = [] // Fetch from iCloud
    @State private var showingScanner = false
    
    let columns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(passes) { pass in
                        PassView(pass: pass)
                    }
                }
                .padding()
            }
            .navigationTitle("My Passes")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingScanner = true }) {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { /* Open settings */ }) {
                        Image(systemName: "gear")
                    }
                }
            }
        }
        .sheet(isPresented: $showingScanner) {
            ScannerView(passes: $passes)
        }
    }
}

struct PassView: View {
    let pass: Pass
    
    var body: some View {
        VStack {
            Image(systemName: "wallet.pass")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 100)
            Text(pass.name)
        }
        .padding()
        .background(Color.blue.opacity(0.1))
        .cornerRadius(10)
    }
}


#Preview {
    PassesGridView()
}
