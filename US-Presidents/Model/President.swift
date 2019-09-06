//
//  President.swift
//  US-Presidents
//
//  Created by Branden Clark on 9/5/19.
//  Copyright © 2019 Branden Clark. All rights reserved.
//

import Foundation

struct President : Identifiable {

    // MARK: - Properties
    
    var id = UUID()
    var presidency: Int
    var lastName: String
    var givenNames: String
    var tookOffice: String
    var leftOffice: String
    var party: String
    var homeState: String
    var portraitUrl: String
    var thumbnailUrl: String

    // MARK: - Computed properties
    
    var displayName: String {
        return "\(givenNames) \(lastName)"
    }
    
    var displayInOffice: String {
        return "\(tookOfficeYear) - \(leftOfficeYear)"
    }
    
    var fileName: String {
        return "\(Constants.Filename)\(String(format: "%02d", presidency))"
    }

    var tookOfficeYear: String {
        return tookOffice.components(separatedBy: "-").first ?? ""
    }

    var leftOfficeYear: String {
        return leftOffice.components(separatedBy: "-").first ?? ""
    }

    // MARK: - Initialization

    init(presidency: Int, lastName: String, givenNames: String,
         tookOffice: String, leftOffice: String, party: String, homeState: String,
         portraitUrl: String, thumbnailUrl: String) {
        self.presidency = presidency
        self.lastName = lastName
        self.givenNames = givenNames
        self.tookOffice = tookOffice
        self.leftOffice = leftOffice
        self.party = party
        self.homeState = homeState
        self.portraitUrl = portraitUrl
        self.thumbnailUrl = thumbnailUrl
    }
    
    private struct Constants {
       static let Filename = "US-President_"
   }
}
