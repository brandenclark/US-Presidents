//
//  PresidentDetailView.swift
//  US-Presidents
//
//  Created by Branden Clark on 9/5/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import SwiftUI

struct PresidentDetailView: View {
    let president: President
    
    var body: some View {
        VStack(spacing: 12) {
            HStack {
                Image(president.fileName)
                    .cornerRadius(8)
                    .padding()
                VStack(alignment: .leading) {
                    Text(president.displayName)
                        .font(.headline)
                    Text(president.displayInOffice)
                        .font(.subheadline)
                }
            }
            VStack(alignment: .leading) {
                HStack {
                    Text("Home State:")
                    Text(president.homeState)
                }
                HStack {
                    Text("Party:")
                    Text(president.party)
                }
            }
        }
        .navigationBarTitle(president.displayName)
    }
}

struct BackButton: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button("Back") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

//#if DEBUG
//struct PresidentDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        PresidentDetailView()
//    }
//}
//#endif
