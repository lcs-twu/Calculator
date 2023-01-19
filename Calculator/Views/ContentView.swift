//
//  ContentView.swift
//  Calculator
//
//  Created by Tom Wu on 2023-01-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List{
            
            
            NavigationLink(destination: {
                RectangleView()
            }, label: {
                Text("rectangle")
            })
            
            NavigationLink(destination: {
                RectangularPrismView()
            }, label: {
                Text("rectangle prism")
                
            })
            
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
