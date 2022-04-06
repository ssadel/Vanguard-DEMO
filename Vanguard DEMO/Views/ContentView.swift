//
//  ContentView.swift
//  Vanguard DEMO
//
//  Created by Sidney Sadel on 4/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAnimation:Bool = true
    @State private var animate1:Bool = false
    @State private var animate2:Bool = false
    @State private var animate3:Bool = false
    
    var body: some View {
        
        ZStack {
            if showAnimation {
                ZStack {
                    if animate2 {
                        Color("DarkestRed")
                    } else {
                        Color("Red")
                            .ignoresSafeArea()
                    }
                    Image("vanguardLogo2b")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 90)
                        .opacity(animate1 ? 0.0 : 1.0)
                    if animate2 {
                    HStack(spacing: 0) {
                        Rectangle()
                            .fill(animate3 ? Color("DarkRed") : Color("Red"))
                            .frame(width: 500, height: 1000)
                            .offset(x: animate3 ? -500 : 0)
                        Rectangle()
                            .fill(animate3 ? Color("DarkRed") : Color("Red"))
                            .frame(width: 500, height: 1000)
                            .offset(x: animate3 ? 500 : 0)
                    }
                    .rotationEffect(Angle(degrees: -40))
                    }
                }
                .animation(.easeInOut(duration: 0.6), value: animate1)
                .animation(.easeInOut(duration: 1), value: animate3)
                .onAppear {
                    animate1 = false
                    animate2 = false
                    DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                        animate1 = true
                        DispatchQueue.main.asyncAfter(deadline: .now()+0.7) {
                            animate2 = true
                            DispatchQueue.main.asyncAfter(deadline: .now()+0.75) {
                                animate3 = true
                                DispatchQueue.main.asyncAfter(deadline: .now()+1.5) {
                                    showAnimation = false
                                }
                            }
                        }
                    }
                }
            } else {
                MasterView()
            }
        }
        .animation(.easeInOut(duration: 1), value: showAnimation)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
