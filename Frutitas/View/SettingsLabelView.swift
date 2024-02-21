//
//  SettingsLabelView.swift
//  Frutitas
//
//  Created by Aneudys Amparo on 21/2/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Frutitas", labelImage: "info.circle")
        .padding()
}
