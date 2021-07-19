//
//  Shop.swift
//  Touchdown
//
//  Created by Teemo Norman on 7/19/21.
//

import Foundation

//MARK: - OBSERVABLE OBJECT MAKES IT VISIBILE EVERYWHERE. @PUBLISHED MAKES IT SO THAT THE VARIABLES ARE CONSTANTLY WATCHED AND IF THEY ARE CHANGED IT WILL CAUSE A VIEW RELOAD
class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
