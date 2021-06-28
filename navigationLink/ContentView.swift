//
//  ContentView.swift
//  navigationLink
//
//  Created by cloud_vfx on 03/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = Contentmodel()
    
    var body: some View {
       
        
     
            NavigationView{
                VStack(alignment: .leading){
                    
                      Text("Search Bar")
                        .padding(.top)
                        .padding(.leading, 36)
                        
                    
                    
            
                    
                    List(model.modules){ r in
                
              NavigationLink(
                destination: Video(),
                label: {
                    Text(r.title)
                })
                    
     
            
                    
            
            }
                }
                .padding(-16).navigationTitle("Wrup up")
            }
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
