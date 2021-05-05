//
//  FruitModel.swift
//  Frooti
//
//  Created by parashar.r.adhikary on 22/04/2021.
//

import SwiftUI


//MARK:- FRUITS Data Model

struct Fruit: Identifiable {
    var id = UUID()
    var title : String
    var headline: String
    var image: String
    var gradientColors:[Color]
    var description: String
    var nutrition :[String]
}
