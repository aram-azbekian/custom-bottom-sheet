//
//  BottomSheetView.swift
//  ChatlaxSheet
//
//  Created by Арам on 06.02.2023.
//

import SwiftUI

struct BottomSheetView: View {
	
	@Binding var isChatlaxSheetPresented: Bool
	
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
