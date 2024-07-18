//
//  EntryListView.swift
//  EntryApp
//
//  Created by 박지혜 on 7/18/24.
//

import SwiftUI

struct EntryListView: View {
    var body: some View {
        ZStack {
            // MARK: - 배경색
            Color(hex: "#121A21")
                .ignoresSafeArea(.all)
            
            VStack {
                
            }
        }
        // MARK: - Navigation title
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Entries")
                    .foregroundStyle(Color(hex: "#FFFFFF"))
                    .font(.system(size: 18, weight: .bold))
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    NavigationStack {
        EntryListView()
    }
}
