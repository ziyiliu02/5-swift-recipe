//
//  RecipeModel.swift
//  5-swift-recipe (iOS)
//
//  Created by Liu Ziyi on 22/5/23.
//

import Foundation

class RecipeModel: ObservableObject {
 
    @Published var recipes = [Recipe]()
    
}
