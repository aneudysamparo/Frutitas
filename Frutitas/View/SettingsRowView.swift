//
//  SettingsRowView.swift
//  Frutitas
//
//  Created by Aneudys Amparo on 21/2/24.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    Group {
        SettingsRowView(name: "Developer", content: "Aneudys Amparo")
            .padding()
        SettingsRowView(name: "Website", linkLabel: "AneudysAmparo", linkDestination: "aneudysamparo.com")
            .padding()
    }
}
