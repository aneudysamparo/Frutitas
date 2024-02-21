//
//  SourceLinkView.swift
//  Frutitas
//
//  Created by Aneudys Amparo on 21/2/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox(){
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
        }
    }
}

#Preview {
    SourceLinkView()
}
