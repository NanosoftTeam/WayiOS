//
//  mainBG.swift
//  WayApp
//
//  Created by Piotr Gawron on 19/10/2022.
//

import SwiftUI

struct mainBG: View {
    var body: some View {
        Color(red: 46 / 255, green: 34 / 255, blue: 45 / 255)
            .ignoresSafeArea(.all)
        
        Circle()
            .frame(width: 333, height: 333)
            .foregroundColor(Color(red: 175 / 255, green: 53 / 255, blue: 194 / 255, opacity: 0.46))
            .blur(radius: 66)
            .offset(x: 150, y: -200)
        
        Circle()
            .frame(width: 183, height: 182)
            .foregroundColor(Color(red: 30 / 255, green: 183 / 255, blue: 192 / 255, opacity: 0.44))
            .blur(radius: 80)
            .offset(x: 00, y: -350)
        
        Circle()
            .frame(width: 179, height: 179)
            .foregroundColor(Color(red: 125 / 255, green: 34 / 255, blue: 34 / 255, opacity: 1))
            .blur(radius: 80)
            .offset(x: -100, y: -40)
        
        Circle()
            .frame(width: 250, height: 250)
            .foregroundColor(Color(red: 26 / 255, green: 199 / 255, blue: 147 / 255, opacity: 0.8))
            .blur(radius: 80)
            .offset(x: -10, y: 40)
        
        Circle()
            .frame(width: 168, height: 168)
            .foregroundColor(Color(red: 183 / 255, green: 167 / 255, blue: 25 / 255, opacity: 0.7))
            .blur(radius: 70)
            .offset(x: 80, y: 250)
    }
}
