//
//  SetupView.swift
//  Alphabetizer
//
//  Created by Raj Soni on 25/12/24.
//

import SwiftUI

struct SetupView: View {
    @Environment(Alphabetizer.self) private var alphabetizer
    var body: some View {
        HStack {
            Button("Add Tiles", systemImage: "plus.circle") {
                alphabetizer.tileCount += 1
            }
            Text("Tiles Count: \(alphabetizer.tileCount)")
            Button("Remove Tiles", systemImage: "minus.circle") {
                alphabetizer.tileCount -= 1
            }
        }
        .font(.title)
        .buttonStyle(.bordered)
        .labelStyle(.iconOnly)
    }
}

#Preview {
    let alphabetizer = Alphabetizer()
    
    return SetupView()
        .environment(alphabetizer)
}
