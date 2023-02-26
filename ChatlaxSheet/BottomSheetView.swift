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
	@State private var size: CGSize = .zero
	
	var body: some View {
		ZStack {
			if isChatlaxSheetPresented {
				Color.black
					.opacity(0.3)
					.transition(.opacity)
					.onTapGesture {
						isChatlaxSheetPresented.toggle()
					}
			}
			VStack {
				Spacer()
				if isChatlaxSheetPresented {
					ZStack(alignment: .top) {
						Image("vw")
							.resizable()
							.scaledToFit()
						Capsule()
							.frame(width: 50, height: 5)
							.foregroundColor(Color.black)
							.padding(.top, 10)
					}
					.saveSize(in: $size)
					.transition(.move(edge: .bottom))
					.gesture(
						DragGesture()
							.onChanged({ value in
								if offset >= -20 {
									offset += value.translation.height
								}
							})
							.onEnded({ _ in
								if offset <= size.height / 2 {
									offset = 0
								} else {
									isChatlaxSheetPresented.toggle()
									offset = 0
								}
							})
					)
					.offset(y: offset)
				}
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
