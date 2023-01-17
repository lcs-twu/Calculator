//
//  RectangleView.swift
//  Calculator
//
//  Created by Tom Wu on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Store property
    let length: Double = 7
    let width: Double = 5
    let height: Double = 6
    //MARK: Computer property
    var area: Double{
        return length*width
    }
    var body: some View {
        VStack{
            HStack {
                Image("Rectangle")
                    .resizable()
                    .scaledToFit()
                .frame(width: 250)
                Spacer()
                
            }
            //length
            Text("length")
                .bold()
                .font(.title2)
            
            Text(String(length))
            
            Text("width")
                .bold()
                .font(.title2)
            
            Text(String(width))
            
            Text("area")
                .bold()
                .font(.title2)
            
            Text(String(area))
            
            Spacer()
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
