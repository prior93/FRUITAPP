//
//  OnboardingView.swift
//  Frooti
//
//  Created by parashar.r.adhikary on 22/04/2021.
//

import SwiftUI




struct OnboardingView: View {
    // MARK:- Property
    
    var fruits:[Fruit] = fruitsData
    
    
    // MARK:- Body
    var body: some View {
        TabView{
            ForEach(fruits[0..<fruits.count]) {  item in
                FruitCardView(fruit: item)  } // ForEach LOOP
          
        }// TAB :
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
       
    }
}






// MARK:- Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
