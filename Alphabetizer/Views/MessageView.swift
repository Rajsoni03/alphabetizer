//
//  MessageView.swift
//  Alphabetizer
//
//
//

import SwiftUI

struct MessageView: View {
    @Environment(Alphabetizer.self) private var alphabetizer
    
    var body: some View {
        Text(alphabetizer.message.rawValue)
            .font(.largeTitle)
    }
}

#Preview {
    let alphabetizer = Alphabetizer()
    alphabetizer.message = .instructions
    return MessageView()
        .environment(alphabetizer)
}
