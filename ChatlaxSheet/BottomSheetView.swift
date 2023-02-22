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
			VStack {
				Spacer()
				if isChatlaxSheetPresented {
					Image("vw")
						.resizable()
						.scaledToFit()
						.transition(.move(edge: .bottom))
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
