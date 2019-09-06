//
//  PresidentCell.swift
//  US-Presidents
//
//  Created by Branden Clark on 9/5/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import SwiftUI

struct PresidentCell: View {
    let president: President
    
    var body: some View {
        NavigationLink(destination: PresidentDetailView(president: president)) {
            Image(president.fileName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(8)
                .frame(maxHeight: 70)
            VStack(alignment: .leading) {
                Text(president.displayName)
                Text(president.displayInOffice)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}

//#if DEBUG
//struct PresidentCell_Previews: PreviewProvider {
//    static var previews: some View {
//        PresidentCell()
//    }
//}
//#endif
