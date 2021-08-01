//
//  ContentView.swift
//
//  Created by Poren Chiang on 2021/8/1.
//

import SwiftUI

struct ContentView: View {
    @State var running: Bool = false
    @State var seconds: Int = 300
    
    var body: some View {
        Color.white.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .mask(Text(String(format: "%02d:%02d", seconds / 60, seconds % 60))
                .font(.custom("Source Sans 3 VF", size: 512.0))
                .fontWeight(.medium)
                .tracking(10)
                .minimumScaleFactor(0.05)
            )
            .colorMultiply(seconds > 0 ? Color("TextColor") : Color("TimeUpColor"))
            .animation(.easeOut.speed(3))
        .padding(40)
        .onTapGesture {
            if (self.seconds > 0) {
                self.running.toggle()
            } else {
                self.reset()
            }
        }
        .onLongPressGesture {
            self.reset()
        }
        .onReceive(timer) { time in
            if (self.running) {
                if (self.seconds > 0) {
                    self.seconds -= 1
                } else {
                    self.running = false
                }
            }
        }
    }
    
    private let timer = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
    
    func reset() {
        self.running = false
        self.seconds = 300
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(running: true, seconds: 10)
            .previewLayout(.fixed(width: 640, height: 480))
    }
}
