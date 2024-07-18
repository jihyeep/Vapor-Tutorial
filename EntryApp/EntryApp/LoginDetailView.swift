//
//  EntryListView.swift
//  EntryApp
//
//  Created by 박지혜 on 7/18/24.
//

import SwiftUI

struct LoginDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            // MARK: - 배경색
            Color(hex: "#121A21")
                .ignoresSafeArea(.all)
        }
        // MARK: - Back button
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(Color(hex: "#FFFFFF"))
                }
            }
        }
    }
}

#Preview {
    LoginDetailView()
}
