//
//  SearchTab.swift
//  Vanguard DEMO
//
//  Created by Sidney Sadel on 4/6/22.
//

import SwiftUI

struct SearchTab: View {
    
    @State var searchText:String = ""
    
    var body: some View {
        
        GeometryReader { geo in
            VStack {
                Rectangle()
                    .fill(Color("DarkRed"))
                    .ignoresSafeArea()
                    .frame(maxWidth: .infinity)
                    .frame(height: 90)
                    .overlay(
                        
                        VStack(alignment: .leading) {
                            Image("vanguardLogo2b")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50)
                            Text("RESESRCH")
                                .fontWeight(.heavy)
                                .foregroundColor(.white)
                        }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                            .offset(y: -20)
                        
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .foregroundColor(.white)
                            .frame(width: geo.size.width/1.1, height: 60)
                            .shadow(radius: 4)
                            .overlay(
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .font(.headline.weight(.bold))
                                    Text("Search for investment products")
                                        .foregroundColor(.gray)
                                }
                            )
                            .offset(y: 50)
                    )
                Spacer()
                
                
                Text("Learnings ahead!")
                    .font(.title.weight(.heavy))
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, \n\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in ...")
                    .padding()
                    .multilineTextAlignment(.center)
                
                Spacer()
            }
        }
        
    }
}

struct SearchTab_Previews: PreviewProvider {
    static var previews: some View {
        SearchTab()
    }
}
