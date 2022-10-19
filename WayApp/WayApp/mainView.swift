//
//  mainView.swift
//  WayApp
//
//  Created by Piotr Gawron on 18/10/2022.
//

import SwiftUI

struct mainView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                
                mainBG()
                
                VStack{
                    Spacer()
                    Text("WayApp")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                    Text("New way to organize")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundColor(Color(red: 150 / 255, green: 150 / 255, blue: 150 / 255))
                        .padding(.top, 4)
                    Spacer()
                    
                    VStack {
                        HStack {
                            VStack {
                                loginTile(isToggled: false).shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
                                registerTile(isToggled: false).shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
                            }
                            settingsTile(isToggled: false).shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 10)
                        }
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

struct mainView_Previews: PreviewProvider {
    static var previews: some View {
        mainView()
    }
}

