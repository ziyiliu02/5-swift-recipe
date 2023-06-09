//
//  RecipeDetailView.swift
//  5-swift-recipe (iOS)
//
//  Created by Liu Ziyi on 24/5/23.
//

import SwiftUI

struct RecipeDetailView: View {
    
    // The RecipeDetailView relies on having a reference to a single recipe because it' going to display the detail for that recipe. So going to declare a property here and it's going to be the data type Recipe. Not going to set this property to any particular instance because i'm going to rely on the list view to assign the particular recipe that we want to use to display the UI.
    var recipe:Recipe
    
    @State var selectedServingSize = 0
    
    var body: some View {
        ScrollView {
            VStack(alignment:.leading){
                //MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Recipe Title
                Text(recipe.name)
                    .bold()
                    .padding(.top, 20)
                    .padding(.leading)
                    .font(Font.custom("Avenir Heavy", size: 24))

                
                //MARK: Serving Size Picker
                VStack(alignment:.leading){
                    Text("Select your serving size:")
                        .font(Font.custom("Avenir", size: 15))
                    Picker("", selection: $selectedServingSize){
                        Text("2").tag(2)
                        Text("4").tag(4)
                        Text("6").tag(6)
                        Text("8").tag(8)
                    }
                    .font(Font.custom("Avenir", size: 15))
                    .pickerStyle(SegmentedPickerStyle())
                    .frame(width:160)
                }
                .padding()
                
                //MARK: Ingredients
                VStack(alignment:.leading){
                    Text("Ingredients")
                        .font(Font.custom("Avenir Heavy", size: 16))
                        .padding(.bottom, 5)
                    
                    ForEach(recipe.ingredients, id:\.self){ item in
                        Text("- " + item)
                            .font(Font.custom("Avenir", size: 15))
                    }
                }.padding(.horizontal)
                
                //MARK: Divider
                Divider()
                
                //MARK: Directions
                VStack(alignment:.leading){
                    Text("Directions")
                        .font(Font.custom("Avenir Heavy", size: 16))
                        .padding([.bottom, .top], 5)
                    
                    ForEach(0..<recipe.directions.count, id:\.self){ index in
                        Text(String(index+1) + ". " + recipe.directions[index])
                            .padding(.bottom, 5)
                            .font(Font.custom("Avenir", size: 15))
                    }
                }.padding(.horizontal)
            }
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        //Create a dummy recipe and pass it into the detail view so that we can see a preview
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
