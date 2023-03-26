//
//  SampleGridView.swift
//  ChatlaxSheet
//
//  Created by Арам on 26.03.2023.
//

import SwiftUI

struct SampleGridView: View {
	
	let columns = [
		GridItem(.flexible(), spacing: 20),
		GridItem(.flexible(), spacing: 20),
		GridItem(.flexible(), spacing: 20)
	]
	
	// Grid is not animated properly for some reason
	var body: some View {
		LazyVGrid(columns: columns) {
			ForEach(0..<9) { _ in
				Circle()
					.frame(height: 150)
			}
		}
		.padding()
		.background(Color.white)
	}
	
}
