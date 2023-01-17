//
//  RectangleView.swift
//  Calculator
//
//  Created by Tom Wu on 2023-01-17.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Store property
    //let SWIFTUI to watch those interfaces
    @State var length: Double = 7
    @State var width: Double = 5
    @State var height: Double = 6
    //MARK: Computer property
    var area: Double{
        return length*width
    }
    var body: some View {
        VStack{
            HStack {
                Group{
                    Image("Rectangle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                    Spacer()
                    
                    
                    //length
                    LabelView(name: "length", value: length)

                    //slider
                    Slider(value: $length,
                           in: 0...100,
                           label: {Text("length")},
                           minimumValueLabel: {Text("0")},
                           maximumValueLabel: {Text("100")})
                    Text("width")
                        .bold()
                        .font(.title2)
                    
                    Text(String(width))
                    
                    Slider(value: $width,
                           in: 0...100,
                           label: {Text("width")},
                           minimumValueLabel: {Text("0")},
                           maximumValueLabel: {Text("100")})
                }
                Text("area")
                    .bold()
                    .font(.title2)
                
                Text(String(area))
                Slider(value: area,
                       in: 0...width*length,
                       label: {Text("area")},
                       minimumValueLabel: {Text("0")}, maximumValueLabel: {Text("10000")})
                
                Spacer()
            }
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
