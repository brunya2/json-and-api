//
//  CatModel.swift
//  Frame and Bounds
//
//  Created by Brunya on 10.03.2021.
//

import Foundation


struct CatModel: Decodable {
    struct CatCategories: Decodable {
        let id: String
        let name: String
    }
    
    let categories: [CatCategories] = []
    let id: String
    let url: String
}


