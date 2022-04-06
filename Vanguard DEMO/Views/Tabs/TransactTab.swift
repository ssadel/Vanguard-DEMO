//
//  TransactTab.swift
//  Vanguard DEMO
//
//  Created by Sidney Sadel on 4/6/22.
//

import SwiftUI

struct TransactTab: View {
    var body: some View {
        
        VStack {
            Text("You're enrolled in Vanguard Personal Advisor Services")
                .font(.largeTitle.weight(.heavy))
                .multilineTextAlignment(.center)
        }
        
    }
}

struct TransactTab_Previews: PreviewProvider {
    static var previews: some View {
        TransactTab()
    }
}
