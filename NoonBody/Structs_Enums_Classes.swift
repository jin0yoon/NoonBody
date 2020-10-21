//
//  Structs_Enums_Classes.swift
//  NoonBody
//
//  Created by 윤진영 on 2020/10/16.
//

import Foundation
import SwiftUI

struct recipePost: Identifiable {
    var id = UUID()
    
    var postingUser: String
    var description: String
    var numberOfLikes: Int
    var image: Image
}

struct friendsPost: Identifiable {
    var id = UUID()
    
    var friendName: String
    var friendDescription: String
    var friendNumberOfLikes: Int
    var friendImage: Image
}

struct myImagePost: Identifiable {
    var id = UUID()
    
    var myImage: Image
    var myWeight: Double
}

struct dietPost: Identifiable {
    var id = UUID()
    
    var dietWhen: String
    var dietTime: String
    var dietText: String
    var dietImage: Image
}
