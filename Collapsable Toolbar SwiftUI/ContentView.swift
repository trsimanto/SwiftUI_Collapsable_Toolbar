//
//  ContentView.swift
//  Collapsable Toolbar SwiftUI
//
//  Created by Towhid on 4/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       // HomeView()
        GeometryReader{ proxi in
            let topEdge = proxi.safeAreaInsets.top
            HomeView(topEdge: topEdge).ignoresSafeArea(.all , edges: .top)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
