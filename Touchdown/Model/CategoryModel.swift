//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Teemo Norman on 7/19/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
