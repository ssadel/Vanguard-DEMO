//
//  PortfolioTab.swift
//  Vanguard DEMO
//
//  Created by Sidney Sadel on 4/6/22.
//

import SwiftUI

struct PortfolioTab: View {
    
    @State var selection:Int = 0
    
    var body: some View {
        
        GeometryReader { geo in
            ScrollView {
                Text("Retirement")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title.weight(.bold))
                    .padding()
                    .padding(.top)
                Text("$325,535.32")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .font(.custom("String", size: 50).weight(.semibold))
                    .padding(.trailing)
                Text("as of 4/5/2022")
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.trailing)
                    .padding(.bottom)
                
                ZStack {
                    Rectangle()
                        .cornerRadius(30)
                        .foregroundColor(.gray.opacity(0.2))
                    HStack {
                        Spacer()
                        Text("YTD")
                            .font(.subheadline.weight(.semibold))
                        Spacer()
                        Spacer()
                        Text("ALL")
                            .font(.subheadline.weight(.semibold))
                        Spacer()
                    }
                }
                .frame(width: geo.size.width/1.2, height: 50)
                
                Picker("", selection: $selection) {
                    Text("YTD").tag(0)
                    Text("ALL").tag(1)
                }
                .pickerStyle(.segmented)
                .padding()
            }
        }
        
    }
}

struct PortfolioTab_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioTab()
    }
}
