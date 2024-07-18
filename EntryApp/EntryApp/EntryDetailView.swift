//
//  EntryDetailView.swift
//  EntryApp
//
//  Created by 박지혜 on 7/18/24.
//

import SwiftUI

struct EntryDetailView: View {
    @Environment(\.dismiss) var dismiss
    var entry: Entry
    
    var body: some View {
        ZStack {
            // MARK: - 배경색
            Color(hex: "#121A21")
                .ignoresSafeArea(.all)
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

#Preview {
    NavigationStack {
        EntryDetailView(entry: SampleData.entries[0])
    }
}
