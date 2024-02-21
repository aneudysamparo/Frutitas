//
//  StartButtonView.swift
//  Frutitas
//
//  Created by Aneudys Amparo on 21/2/24.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        })//: Button
        .accentColor(.white)
    }
}

// MARK: - PREVIEW
#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
