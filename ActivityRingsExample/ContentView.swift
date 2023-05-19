//
//  ContentView.swift
//  ActivityRingsExample
//
//  Created by Tom Phillips on 5/19/23.
//

import SwiftUI

struct ContentView: View {
    // Properties storing the completion progress of the three rings
    @State private var firstRingProgress: CGFloat = 0.3
    @State private var secondRingProgress: CGFloat = 0.5
    @State private var thirdRingProgress: CGFloat = 0.8

    var body: some View {
        ZStack {
            Color.black
            ActivityRingView(progress: $firstRingProgress, colors: [.darkRed, .lightRed], radius: 150, lineWidth: 30)
                .fixedSize()
            ActivityRingView(progress: $secondRingProgress, colors: [.darkRed, .lightRed], radius: 128, lineWidth: 30)
                .fixedSize()
            ActivityRingView(progress: $thirdRingProgress, colors: [.darkRed, .lightRed], radius: 105, lineWidth: 30)
                .fixedSize()
            
            // Button that increments the rings progress value (just a demo to show the animation)
            VStack {
                Spacer()
                Button("Increment Ring") {
                    firstRingProgress += 0.1
                    secondRingProgress += 0.1
                    thirdRingProgress += 0.1
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
