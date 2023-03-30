//
//  SettingsView.swift
//  Fructus
//
//  Created by Barış Can Sertkaya on 30.03.2023.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    
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
                        Divider().padding(.vertical,5)
                    }
                    
                    // Section 2
                    
                    // Section 3
                    
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
