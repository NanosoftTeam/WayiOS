//
//  dashboardView.swift
//  WayApp
//
//  Created by Piotr Gawron on 20/10/2022.
//

import SwiftUI

struct dashboardView: View {
    var body: some View {
        TabView {
            appView()
                .tabItem {
                    VStack {
                        Text("Dashboard")
                        Image(systemName: "music.note.house")
                    }.foregroundColor(.white)
                }
        }
    }
}

struct dashboardView_Previews: PreviewProvider {
    static var previews: some View {
        dashboardView()
    }
}

