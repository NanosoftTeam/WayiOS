//
//  settingsTile.swift
//  WayApp
//
//  Created by Piotr Gawron on 18/10/2022.
//

import SwiftUI

struct settingsTile: View {
    
    @State var isToggled: Bool
    
    var body: some View {
        Button {
            withAnimation {
                isToggled.toggle()
            }
        } label: {
            HStack {
                Spacer()
                Image(systemName: "wand.and.rays")
                    .resizable()
                    .frame(width: 30, height: 30)
                Spacer()
                Text("Settings")
                    .font(.system(size: 22, weight: .semibold))
                Spacer()
            }
            .foregroundColor(.white)
            .frame(width: 150, height: 150, alignment: .leading)
            .background {
                LinearGradient(colors: [
                    Color(red: 94 / 255, green: 94 / 255, blue: 94 / 255, opacity: 0.7),
                    Color(red: 217 / 255, green: 217 / 255, blue: 217 / 255, opacity: 0.2)
                ] , startPoint: .top, endPoint: .bottom)
            }
            .cornerRadius(25)
        }
    }
}
