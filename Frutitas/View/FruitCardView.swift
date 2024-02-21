//
//  FruitCardView.swift
//  Frutitas
//
//  Created by Aneudys Amparo on 21/2/24.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - PROPERTIES
    let fruit: Fruit
    @State private var isAnimating: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit: Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                // Fruit: Title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black, radius: 2, x: 2, y: 2)
                
                // Fruit: Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                // Button: Start
                StartButtonView()
            }//: VSTACK
        } //: ZSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(
            LinearGradient(
                colors: fruit.gradientColors,
                startPoint: .top, endPoint: .bottom)
        )
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

// MARK: - PREVIEW
#Preview {
    FruitCardView(fruit: fruitsData[1])
        .previewLayout(.fixed(width: 320, height: 640))
}
