//
//  MainInterface.swift
//  Vanguard DEMO
//
//  Created by Sidney Sadel on 4/6/22.
//

import SwiftUI

struct MainInterface: View {
    
    @State var didFinishLoading:Bool = false
    @State var selection:Int = 0
    
    var body: some View {
        
        ZStack {
            if !didFinishLoading {
                ProgressView()
            } else {
                TabView(selection: $selection) {
                    
                    PortfolioTab()
                        .tabItem {
                            Label("Portfolio", systemImage: "chart.line.uptrend.xyaxis")
                        }.tag(0)
                    
                    TransactTab()
                        .tabItem {
                            Label("Transact", systemImage: "shuffle")
                        }.tag(1)
                    
                    SearchTab()
                        .tabItem {
                            Label("Research", systemImage: "magnifyingglass")
                        }.tag(2)
                    
                    ProfileTab()
                        .tabItem {
                            Label("Profile", systemImage: "person")
                        }.tag(3)
                    
                }
                .accentColor(.black)
            }
        }
        .animation(.easeInOut, value: didFinishLoading)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now()+1.5) {
                didFinishLoading = true
            }
        }
        
    }
}

struct MainInterface_Previews: PreviewProvider {
    static var previews: some View {
        MainInterface()
    }
}
