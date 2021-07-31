//
//  ContentView.swift
//
//  Created by Poren Chiang on 2021/8/1.
//

import SwiftUI

struct ContentView: View {
    var seconds: Int = 300
    
    var body: some View {
        VStack {
            Text(String(format: "%02d:%02d", seconds / 60, seconds % 60))
                .font(.custom("Source Sans 3 VF", size: 512.0))
                .fontWeight(.medium)
                .tracking(10)
                .minimumScaleFactor(0.05)
        }
        .padding(40)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewLayout(.fixed(width: 640, height: 480))
    }
}
