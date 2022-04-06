//
//  LoginView.swift
//  Vanguard DEMO
//
//  Created by Sidney Sadel on 4/6/22.
//

import SwiftUI

struct LoginView: View {
    
    @Binding var isLoggedIn:Bool
    @State var user:String = "Username"
    @State var pass:String = "Password"
    @State var willRemember:Bool = true
    @State var showSheet:Bool = false
    @State var sheetScreen:String = ""
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                Color("DarkestRed")
                    .ignoresSafeArea()
                VStack {
                    Button {
                        sheetScreen = "Feedback"
                        showSheet = true
                    } label: {
                        Text("[+]")
                            .foregroundColor(.white)
                            .font(.headline.weight(.semibold))
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding()

                    Image("whiteVanguard")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 230)
                        .padding()
                    
                    HStack {
                        Image(systemName: "person.fill")
                            .foregroundColor(.white)
                        TextField("Username", text: $user)
                            .foregroundColor(.white.opacity(0.8))
                    }
                    .underlineTextField()
                    .frame(width: geo.size.width/1.4)
                    
                    HStack {
                        Image(systemName: "key.fill")
                            .foregroundColor(.white)
                        TextField("Password", text: $user)
                            .foregroundColor(.white.opacity(0.8))
                    }
                    .underlineTextField()
                    .frame(width: geo.size.width/1.4)
                    
                    HStack {
                        Toggle(isOn: $willRemember) {
                            //
                        }
                        .frame(width: geo.size.width/3.5)
                        Text("Remember me")
                            .foregroundColor(.white.opacity(0.8))
                        Spacer()
                    }
                    
                    Button {
                        isLoggedIn = true
                    } label: {
                        Text("Log in")
                            .fontWeight(.semibold)
                            .foregroundColor(.gray)
                            .padding(.horizontal, 25)
                            .padding(7)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.white)
                    .buttonBorderShape(.capsule)
                    .padding()
                    
                    Spacer()
                    
                    Button {
                        //isLoggedIn = true
                    } label: {
                        VStack {
                        Image(systemName: "faceid")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                            .foregroundColor(.white)

                        Text("Face ID")
                            .foregroundColor(.white)
                        }
                    }
                    .padding(.bottom, 50)
                    
                    HStack(spacing: 30) {
                        Button {
                            sheetScreen = "Terms"
                            showSheet = true
                        } label: {
                            Text("Terms")
                        }
                        Button {
                            sheetScreen = "Privacy"
                            showSheet = true
                        } label: {
                            Text("Privacy")
                        }
                        Button {
                            sheetScreen = "Security"
                            showSheet = true
                        } label: {
                            Text("Security")
                        }

                    }
                    .sheet(isPresented: $showSheet, content: {
                        SheetView(screen: sheetScreen, isActive: $showSheet)
                    })
                    .foregroundColor(.white.opacity(0.8))
                }
            }
        }
        
    }
}

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(.gray.opacity(0.5))
            .padding(10)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView(isLoggedIn: .constant(true))
    }
}

struct SheetView:View {
    
    var screen:String
    @Binding var isActive:Bool
    
    var body: some View {
        
        VStack {
            Button {
                isActive = false
            } label: {
                Image(systemName: "xmark")
                    .font(.headline.weight(.bold))
                    .foregroundColor(.black)
                    .imageScale(.large)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()

            Spacer()
            Text(screen)
                .font(.title.weight(.black))
                .foregroundColor(.black)
            Spacer()
        }
        
    }
}
