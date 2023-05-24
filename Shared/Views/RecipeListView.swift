//
//  RecipeListView.swift
//  5-swift-recipe (iOS)
//
//  Created by Liu Ziyi on 24/5/23.
//

import SwiftUI

struct RecipeListView: View {
    
    //Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
