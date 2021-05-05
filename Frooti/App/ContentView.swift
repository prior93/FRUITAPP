//
//  ContentView.swift
//  Frooti
//
//  Created by parashar.r.adhikary on 22/04/2021.
//

import SwiftUI

struct ContentView: View {
    // MARK:- Property
    var fruits :[Fruit] = fruitsData
    @State private var isShowingShetting: Bool = false
    
    
    // MARK:- Body
    
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits.shuffled()) {   item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item),
                        label: {
                            FruitRowView(fruit: item)
                                
                                .padding(.vertical,4)
                        })// : NavigationLink
                    
                }//:ForEach
                
            }//: List
            .navigationBarTitle("FRUITS")
            .navigationBarItems(trailing: Button(action: {
                isShowingShetting = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })) //:Button
            
            .sheet(isPresented: $isShowingShetting){
                SettingsView()
            }
        }//:Navigartion View
           
    }
}
// MARK:- Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
