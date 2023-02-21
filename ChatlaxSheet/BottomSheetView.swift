//
//  BottomSheetView.swift
//  ChatlaxSheet
//
//  Created by Арам on 06.02.2023.
//

import SwiftUI

struct BottomSheetView: View {
	
	@Binding var isChatlaxSheetPresented: Bool
	@State private var offset: CGFloat = .zero
	
	var body: some View {
		ZStack(alignment: .bottom) {
			if isChatlaxSheetPresented {
				Color.black
					.opacity(0.3)
					.ignoresSafeArea()
					.onTapGesture {
						withAnimation(.easeOut) {
							isChatlaxSheetPresented.toggle()
						}
					}
				ZStack(alignment: .top) {
					Image("vw")
						.resizable()
						.scaledToFit()
					Capsule()
						.frame(width: 50, height: 5)
						.foregroundColor(Color.black)
						.padding(.top, 10)
				}
				.transition(.move(edge: .bottom))
			}
		}
		.ignoresSafeArea()
	}
}

//struct BottomSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSheetView()
//    }
//}
