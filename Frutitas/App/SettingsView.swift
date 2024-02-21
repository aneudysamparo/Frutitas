//
//  SettingsView.swift
//  Frutitas
//
//  Created by Aneudys Amparo on 21/2/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - Section 1
                    GroupBox(
                        label: 
                            SettingsLabelView(
                                labelText: "Frutitas",
                                labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and, calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                                
                    }
                    
                    //MARK: - Section 2
                    GroupBox(
                        label: SettingsLabelView(
                        labelText: "Customization",
                        labelImage: "paintbrush")) {
                            Divider().padding(.vertical, 4)
                            
                            Text("If you wish, you can restart the application by toggle the switch in this box. That way it start the onboarding process and you will see the welcome screen again.")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            Toggle(isOn: $isOnboarding, label: {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            })
                            .padding()
                            .background(
                                Color(.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            )
                    }
                    
                    //MARK: - Section 3
                    GroupBox(
                        label: SettingsLabelView(
                            labelText: "Application",
                            labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(name: "Developer", content: "Aneudys")
                        SettingsRowView(name: "Instagram", linkLabel: "@aneudysamparo", linkDestination: "instagram.com/aneudysamparo")
                        SettingsRowView(name: "Website", linkLabel: "Aneudys Amparo", linkDestination: "aneudysamparo.com")
                        SettingsRowView(name: "Github", linkLabel: "@AneudysAmparo", linkDestination: "github.com/aneudysamparo")
                        SettingsRowView(name: "Swift", content: "5.5")
                        SettingsRowView(name: "SwiftUI", content: "5.0")
                        SettingsRowView(name: "Version", content: "1.0.0")
                        
                        
                    }
                    
                    //MARK: - Section 1
                    
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                })
                .padding()
            }//: Scroll
        }//:Nav
    }
}

#Preview {
    SettingsView()
}
