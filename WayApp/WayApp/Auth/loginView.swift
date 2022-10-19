//
//  loginView.swift
//  WayApp
//
//  Created by Piotr Gawron on 18/10/2022.
//

import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}

struct loginView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                mainBG()
                
                VStack {
                    Spacer()
                    ZStack {
                        loginFormTile()
                        VStack {
                            Spacer()
                            TextField("", text: $email)
                                .frame(alignment: .center)
                                .frame(height: 55)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 4)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 16).foregroundColor(.white.opacity(0.1)))
                                .padding([.horizontal], 50)
                                .placeholder(when: self.email == "", alignment: .center) {
                                    Text("E-mail")
                                        .font(.system(size: 20, weight: .semibold))
                                        .foregroundColor(Color(red: 150 / 255, green: 150 / 255, blue: 150 / 255))
                                }
                            
                            TextField("", text: $password)
                                .frame(alignment: .center)
                                .frame(height: 55)
                                .textFieldStyle(PlainTextFieldStyle())
                                .padding([.horizontal], 4)
                                .cornerRadius(16)
                                .overlay(RoundedRectangle(cornerRadius: 16).foregroundColor(.white.opacity(0.1)))
                                .padding([.horizontal], 50)
                                .placeholder(when: self.email == "", alignment: .center) {
                                    Text("Password")
                                        .font(.system(size: 20, weight: .semibold))
                                        .foregroundColor(Color(red: 150 / 255, green: 150 / 255, blue: 150 / 255))
                                }
                            Spacer()
                        }
                        
                    }
                    HStack {
                        Spacer()
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .opacity(0.1)
                            .background{
                                Color(.white)
                                    .opacity(0.08)
                                    .blur(radius: 10)
                            }
                            .background {
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(
                                        .linearGradient(.init(colors: [
                                            .purple,
                                            .purple.opacity(0.5),
                                            .clear,
                                            .clear,
                                            .blue,
                                        ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    )
                            }
                            .frame(width: 150, height: 70)
                        Spacer()
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.white)
                            .opacity(0.1)
                            .background{
                                Color(.white)
                                    .opacity(0.08)
                                    .blur(radius: 10)
                            }
                            .background {
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(
                                        .linearGradient(.init(colors: [
                                            .purple,
                                            .purple.opacity(0.5),
                                            .clear,
                                            .clear,
                                            .blue,
                                        ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    )
                            }
                            .frame(width: 150, height: 70)
                        Spacer()
                    }
                    Spacer()
                }
                
            }
        }
    }
}

struct loginFormTile: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .fill(.white)
                .opacity(0.1)
                .background{
                    Color(.white)
                        .opacity(0.08)
                        .blur(radius: 10)
                }
                .background {
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(
                            .linearGradient(.init(colors: [
                                .purple,
                                .purple.opacity(0.5),
                                .clear,
                                .clear,
                                .blue,
                            ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                }
                .frame(width: 350, height: 500)
        }
    }
}

struct loginView_Previews: PreviewProvider {
    static var previews: some View {
        loginView()
    }
}

