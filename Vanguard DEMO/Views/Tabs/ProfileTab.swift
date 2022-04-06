//
//  ProfileTab.swift
//  Vanguard DEMO
//
//  Created by Sidney Sadel on 4/6/22.
//

import SwiftUI

struct ProfileTab: View {
    var body: some View {
        
        NavigationView {
            GeometryReader { geo in
                VStack {
                    ScrollView {
                        Text("PROFILE")
                            .font(.subheadline.weight(.heavy))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading)
                        
                        CustomDivider()
                            .padding(.bottom)
                        
                        NavigationLink {
                            //
                        } label: {
                            VStack(alignment: .leading) {
                                Text("FAQs")
                                    .font(.title2.weight(.heavy))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading)
                     
                                Text("Learn more about what's changed and what's next for the app.")
                                    .padding(10)
                                    .padding(.bottom)
                                    .padding(.leading, 5)
                            }
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                        }
                        
                        CustomDivider()
                            .padding(.bottom)
                        
                        NavigationLink {
                            //
                        } label: {
                            VStack(alignment: .leading) {
                                Text("Feedback")
                                    .font(.title2.weight(.heavy))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading)
                     
                                Text("Tell us what you love, what you don't and how we can improve.")
                                    .padding(10)
                                    .padding(.bottom)
                                    .padding(.leading, 5)
                            }
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                        }
                        
                        CustomDivider()
                            .padding(.bottom)
                        
                        NavigationLink {
                            //
                        } label: {
                            VStack(alignment: .leading) {
                                Text("Settings")
                                    .font(.title2.weight(.heavy))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading)
                     
                                Text("Change your login options.")
                                    .padding(10)
                                    .padding(.bottom)
                                    .padding(.leading, 5)
                            }
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                        }
                        
                    }
                    .frame(width: geo.size.width/1.2)
                    
                    CustomDivider()
                        .frame(width: geo.size.width/1.2, alignment: .center)
                    Button {
                        //
                    } label: {
                        Text("Log out")
                            .font(.title3.weight(.bold))
                            .foregroundColor(.black)
                    }
                    .background(
                        Capsule()
                            .stroke()
                            .frame(width: 150, height: 60)
                    )
                    .padding()
                    .padding()
                    .padding(.bottom)

                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        
    }
}

struct ProfileTab_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTab()
    }
}

struct CustomDivider:View {
    var body: some View {
        
        Rectangle()
            .frame(height: 1)
            .foregroundColor(.gray.opacity(0.2))
        
    }
}
