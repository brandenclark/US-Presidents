//
//  ContentView.swift
//  US-Presidents
//
//  Created by Branden Clark on 9/5/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var presidents: [President] = Presidents.List
    
    var body: some View {
        NavigationView {
            List(presidents) { president in
                PresidentCell(president: president)
            }
            .navigationBarTitle(Text("US Presidents"))
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
