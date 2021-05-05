//
//  SettingsView.swift
//  Frooti
//
//  Created by parashar.r.adhikary on 23/04/2021.
//

import SwiftUI

struct SettingsView: View {
    // MARK:- Properties
    @Environment(\.presentationMode)  var presentationMode
    
    // MARK:- Body
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false)  {
                VStack(spacing: 20) {
                    //MARK:- Section 1
                    GroupBox(label: Text("") , content: {
                        /*@START_MENU_TOKEN@*/Text("Content")/*@END_MENU_TOKEN@*/
                    })
                    
                    //: MARK:- Section 2
                    
                    
                    //: MARK:- Section 3
                    
                    
                    Text("Placeholder")
                }//: Vstack
                .navigationBarTitle(Text("Setting"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                   Image(systemName: "xmark")
                }))
            }//: Scroll
        }//: Navigation
        
        
        
        
    }
}
// MARK:- Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
