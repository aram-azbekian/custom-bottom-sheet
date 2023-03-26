//
//  BottomSheetView.swift
//  ChatlaxSheet
//
//  Created by Арам on 06.02.2023.
//

import SwiftUI

struct BottomSheetView<Content: View>: View {
	
	@Binding var isSheetPresented: Bool
	@ViewBuilder var content: () -> Content
	
	@State private var offset: CGFloat = .zero
	@State private var size: CGSize = .zero
	
	var body: some View {
		ZStack {
			if isSheetPresented {
				Color.black
					.opacity(0.3)
					.transition(.opacity)
					.onTapGesture {
						isSheetPresented.toggle()
					}
			}
			VStack {
				Spacer()
				if isSheetPresented {
					ZStack(alignment: .top) {
						content()
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
									isSheetPresented.toggle()
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
