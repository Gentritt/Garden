//
//  Vegetable.swift
//  GardenAp11
//
//  Created by TestPc on 4.9.22.
//

import Foundation

struct Vegetable : Decodable {
    let vegetableId:Int
    let name:String
    let description:String
    let thumbnailImage:String
    
    
    private enum CodingKeys: String,CodingKey{
        case vegetableId = "VegetableId"
        case name = "Name"
        case description = "Description"
        case thumbnailImage = "ThumbnailImage"
    }
    
}
