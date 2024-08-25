//
//  ScannerView.swift
//  Passifier
//
//  Created by Vishrut Jha on 8/5/24.
//

import SwiftUI
import VisionKit

struct ScannerView: View {
    let onScan: (UIImage) -> Void
    
    var body: some View {
        Text("Scanner Placeholder")
            // Implement actual scanner later
    }
}

#Preview {
    ScannerView(onScan: { _ in })
}
