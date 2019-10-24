//
//  PresidentCell.swift
//  US-Presidents
//
//  Created by Branden Clark on 9/5/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import SwiftUI

struct PresidentCell: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    let president: President
    
    var body: some View {
        NavigationLink(destination: PresidentDetailView(president: president)) {
            Image(president.fileName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .frame(maxHeight: verticalSizeClass == .regular ? 70 : 40)
            VStack(alignment: .leading) {
                Text(president.displayName)
                if verticalSizeClass == .regular {
                        Text(president.displayInOffice)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
        }
    }
}
