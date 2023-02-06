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
                    .opacity(0.3 - Double(offset) / 100)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isChatlaxSheetPresented = false
                    }
                VStack {
                    Image("vw")
                        .resizable()
                        .scaledToFit()
                }
                .offset(y: offset)
                .transition(.move(edge: .bottom))
            }
        }
        .ignoresSafeArea()
        .animation(.easeOut, value: isChatlaxSheetPresented)
    }
}

//struct BottomSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSheetView()
//    }
//}
