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
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(
                    destination:RecipeDetailView(recipe: r),
                    label:{
                        //MARK: Row item
                        HStack(spacing: 20) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(r.name)
                        }
                })
                
            }.navigationBarTitle("All Recipes")
        }

    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
