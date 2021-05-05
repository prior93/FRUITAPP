//
//  FruitNutrientsView.swift
//  Frooti
//
//  Created by parashar.r.adhikary on 23/04/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK:- Properties
    
    var fruit : Fruit
    let nutrient :[String] = ["Energy","Vitamins", "Fat", "Sugar","Protein","Minerals"]
    
    // MARK:- Body
    var body: some View {
        GroupBox(){
            DisclosureGroup ("Nutritional Value per 100g"){
                ForEach(0..<nutrient.count, id: \.self ) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrient[item])
                                
                        }//: Group
                        .foregroundColor(.blue)
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
            
        }//: group box
    }
}



// MARK:- Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
