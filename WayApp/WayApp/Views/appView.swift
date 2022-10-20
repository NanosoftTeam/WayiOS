//
//  appView.swift
//  WayApp
//
//  Created by Piotr Gawron on 20/10/2022.
//

import SwiftUI

struct lesson: Identifiable {
    var id: String { name }
    let name: String
}

struct appView: View {
    var body: some View {
        
        let lessons = [
            lesson(name: "Polski"),
            lesson(name: "Matematyka"),
            lesson(name: "Fizyka"),
            lesson(name: "test1"),
            lesson(name: "Polski"),
            lesson(name: "Matematyka"),
            lesson(name: "Fizyka"),
            lesson(name: "test1")
        ]
        
        ZStack {
            mainBG()
            
            VStack {
                Spacer()
                Text("Dashboard")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
            }
        }
    }
}

struct appView_Previews: PreviewProvider {
    static var previews: some View {
        appView()
    }
}

