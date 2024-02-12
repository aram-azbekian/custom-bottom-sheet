//
//  SampleGridView.swift
//  custom-bottom-sheet
//
//  Created by Арам on 26.03.2023.
//

import SwiftUI

struct SampleGridView: View {
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

	var body: some View {
        ScrollView([], showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(0..<4) { _ in
                    Circle()
                        .scaledToFit()
                }
            }
            .padding()
            .background(Color.white)
        }
        .scaledToFit()
	}
	
}
