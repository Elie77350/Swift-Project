//
//  ContentView.swift
//  MiseEnPratique
//
//  Created by Elie BINGUE on 26/02/2024.
//

import SwiftUI

struct ContentView: View {
	@State private var value = 0

    var body: some View {
        VStack {
						Button(action: {
							self.value += 1
						}) {
							Text("Incrémenter!")
								.padding()
								.background(Color.green)
								.foregroundColor(.white)
								.font(.title)
								.cornerRadius(10)
						}

					Text("Valeur : \(self.value)")
						.font(.title)

					Button(action: {
						if self.value > 0 {
							self.value -= 1
							print("Décrémenter")
						}
						}) {
							Text("Décrémenter!")
								.padding()
								.background(Color.red)
								.foregroundColor(.white)
								.font(.title)
								.cornerRadius(10)
					}
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
