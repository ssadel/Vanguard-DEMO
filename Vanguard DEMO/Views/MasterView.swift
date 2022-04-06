//
//  MasterView.swift
//  Vanguard DEMO
//
//  Created by Sidney Sadel on 4/6/22.
//

import SwiftUI

struct MasterView: View {
    
    @State var isLoggedIn:Bool = false
    
    var body: some View {
        
        ZStack {
            if !isLoggedIn {
                LoginView(isLoggedIn: $isLoggedIn)
                    .transition(.slide)
            } else {
                MainInterface()
            }
        }
        .animation(.easeInOut(duration: 0.75), value: isLoggedIn)
    }
}

struct MasterView_Previews: PreviewProvider {
    static var previews: some View {
        MasterView()
    }
}
