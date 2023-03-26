//
//  Utils.swift
//  ChatlaxSheet
//
//  Created by Арам on 26.02.2023.
//

import SwiftUI

struct SizeCalculator: ViewModifier {
	
	@Binding var size: CGSize
	
	func body(content: Content) -> some View {
		content
			.background(
				GeometryReader { proxy in
					Color.clear
						.onAppear {
							size = proxy.size
						}
				}
			)
	}
	
}

extension View {
	func saveSize(in size: Binding<CGSize>) -> some View {
		modifier(SizeCalculator(size: size))
	}
}
