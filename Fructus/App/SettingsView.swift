//
//  SettingsView.swift
//  Fructus
//
//  Created by Barış Can Sertkaya on 30.03.2023.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // Section 1
                    GroupBox {
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(12)
                            Text("Most fruits are low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients.")
                                .font(.footnote)
                        }
                        
                    } label: {
                        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        Divider().padding(.vertical, 5)
                    }
                    
                    // Section 2
                    GroupBox {
                        Divider().padding(.vertical, 5)
                        Text("Toggle the switch to restart the app and see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.body)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                            
                        }
                        .padding()
                        .background(
                            Color(uiColor: .tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }
                    // Section 3
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Barış Can Sertkaya" )
                        SettingsRowView(name: "Designer", content: "Barış Can Sertkaya" )
                        SettingsRowView(name: "Compatibility", content: "iOS 16" )
                        SettingsRowView(name: "Github", linkLabel: "bariscansertkaya", linkDestination: "www.github.com/bariscansertkaya")
                        SettingsRowView(name: "Twitter", linkLabel: "@bariscansertdev", linkDestination: "www.twitter.com/bariscansertdev")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }

                    
                } //: VStack
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }

                    }
                }
                .padding()
            } //: ScrollView
        } //: NavigationView
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
