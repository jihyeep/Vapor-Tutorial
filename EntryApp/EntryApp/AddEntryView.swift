//
//  EntryDetailView.swift
//  EntryApp
//
//  Created by 박지혜 on 7/18/24.
//

import SwiftUI

struct AddEntryView: View {
    @Environment(\.dismiss) var dismiss
    @State private var entryTitle: String = ""
    @State private var entryBody: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                // MARK: - 배경색
                Color(hex: "#121A21")
                    .ignoresSafeArea(.all)
                
                VStack {
                    // entryTitle
                    TextField(text: $entryTitle) {
                        Text("Title")
                            .font(.system(size: 16))
                            .foregroundStyle(Color(hex: "#94ADC7"))
                    }
                    // 내부 padding
                    .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
                    .frame(width: 358, height: 56)
                    .background(RoundedRectangle(cornerRadius: 8)
                        .fill(Color(hex: "#243647")))
                    // 외부 padding
                    .padding(EdgeInsets(top: 12, leading: 0, bottom: 12, trailing: 0))
                    
                    // entryBody
                    TextEditor(text: $entryBody)
                        .font(.system(size: 16))
                        .foregroundStyle(Color(hex: "#94ADC7"))
                        .padding([.leading, .trailing], 16)
                        .frame(width: 358, height: 144)
                        .scrollContentBackground(.hidden)
                        .background(RoundedRectangle(cornerRadius: 8)
                            .fill(Color(hex: "#243647")))
                        .padding(.bottom, 12)
                    
                    Button() {
                        
                    } label: {
                        Text("Submit")
                            .font(.system(size: 16, weight: .bold))
                            .foregroundStyle(Color(hex: "#FFFFFF"))
                            .frame(width: 318, height: 48)
                            .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                            .background(RoundedRectangle(cornerRadius: 8)
                                .fill(Color(hex: "#1A80E5")))
                    }
                    Spacer()
                }
            }
            // MARK: - Navigation title/backButton
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("New entry")
                        .foregroundStyle(Color(hex: "#FFFFFF"))
                        .font(.system(size: 18, weight: .bold))
                }
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundStyle(Color(hex: "#FFFFFF"))
                    }
                }
                
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    AddEntryView()
}
