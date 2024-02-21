//
//  ContentView.swift
//  Frutitas
//
//  Created by Aneudys Amparo on 14/2/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }){
                Image(systemName: "slider.horizontal.3")
            }.sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
            )
        }//: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}


// MARK: - PREVIEW
#Preview {
    ContentView(fruits: fruitsData)
}
