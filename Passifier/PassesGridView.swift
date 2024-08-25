//
//  PassesGridView.swift
//  Passifier
//
//  Created by Vishrut Jha on 8/5/24.
//

import SwiftUI
import SwiftData

struct PassesGridView: View {
    @Query private var passes: [Pass]
    @State private var showingScanner = false
    
    var body: some View {
        NavigationView {
            List(passes) { pass in
                PassRow(pass: pass)
            }
            .navigationTitle("My Passes")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { showingScanner = true }) {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $showingScanner) {
                ScannerView(onScan: processScannedImage)
            }
        }
    }
    
    private func processScannedImage(_ image: UIImage) {
            // Placeholder for image processing
    }
}

struct PassRow: View {
    let pass: Pass
    
    var body: some View {
        HStack {
            Image(systemName: "wallet.pass")
            Text(pass.name)
        }
    }
}

#Preview {
    PassesGridView()
}
