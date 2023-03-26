//
//  ContentView.swift
//  custom-bottom-sheet
//
//  Created by Арам on 06.02.2023.
//

import SwiftUI

struct ContentView: View {
	@State private var isImageSheetPresented = false
	@State private var isTextSheetPresented = false
	@State private var isGridSheetPresented = false
	
	var body: some View {
		ZStack {
			TabView {
				ZStack {
					Color.yellow
						.ignoresSafeArea()
					VStack {
						// image view
						Button {
							isImageSheetPresented.toggle()
						} label: {
							Text("Open image sheet")
						}
						
						// some text view
						Button {
							isTextSheetPresented.toggle()
						} label: {
							Text("Open text sheet")
						}
						
						// some text view
						Button {
							isGridSheetPresented.toggle()
						} label: {
							Text("Open grid sheet")
						}
						
						Spacer()
					}
				}
				.tabItem { Text("One") }
				Color.green
					.ignoresSafeArea()
					.tabItem { Text("Two") }
				Color.red
					.ignoresSafeArea()
					.tabItem { Text("Three") }
			}
			
			BottomSheetView(isSheetPresented: $isImageSheetPresented, content: {
				Image("vw")
					.resizable()
					.scaledToFit()
			})
			.animation(.easeOut(duration: 0.3), value: isImageSheetPresented)
			
			BottomSheetView(isSheetPresented: $isTextSheetPresented, content: {
				HStack {
					Text("sample text")
					Image(systemName: "heart.fill")
				}
				.font(.system(size: 35))
				.frame(maxWidth: .infinity)
				.frame(height: 150)
				.background(Color.white)
			})
			.animation(.easeOut(duration: 0.3), value: isTextSheetPresented)
			
			BottomSheetView(isSheetPresented: $isGridSheetPresented, content: {
				SampleGridView()
			})
			.animation(.easeOut(duration: 0.3), value: isGridSheetPresented)
		}
	}
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
