//
//  RectangleView.swift
//  Calculator
//
//  Created by Tom Wu on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Store property
    
    //MARK: Computer property
    
    var body: some View {
        VStack{
            HStack {
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                .frame(width: 250)
                Spacer()
                
            }
            
            Spacer()
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
