//
//  EntryListView.swift
//  EntryApp
//
//  Created by 박지혜 on 7/18/24.
//

import SwiftUI

struct SampleData {
    static let entries: [Entry] = [
        Entry(date: "Jan 25, 2023", content: "I have started a new project at work"),
        Entry(date: "Jan 25, 2023", content: "example1"),
        Entry(date: "Jan 25, 2023", content: "example2"),
        Entry(date: "Jan 25, 2023", content: "example3"),
        Entry(date: "Jan 25, 2023", content: "example4"),
    ]
}

struct EntryListView: View {
    var body: some View {
        ZStack {
            // MARK: - 배경색
            Color(hex: "#121A21")
                .ignoresSafeArea(.all)
            
            List(SampleData.entries, id: \.id) { entry in
                NavigationLink(destination: EntryDetailView(entry: entry)) {
                    VStack(alignment: .leading) {
                        Text(entry.date)
                            .font(.system(size: 16))
                            .foregroundStyle(Color(hex: "#FFFFFF"))
                        Text(entry.content)
                            .font(.system(size: 14))
                            .foregroundStyle(Color(hex: "#94ADC7"))
                    }
                    .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 16))
                }
                // 리스트 배경색 제거
                .listRowBackground(Color.clear)
            }
            .listStyle(.plain)
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
