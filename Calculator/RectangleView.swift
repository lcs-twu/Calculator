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
            //slider
            Slider {value: Binding.constant(length)},
                   in: 0...100,
                    label: {Text("length")},
                   minimumValueLabel: (Text("0")),
                   maximumValueLabel: (Text("100")))
            Text("width")
                .bold()
                .font(.title2)
            
            Text(String(width))
            
            Slider{value: Binding.constant(width)},
                   in: 0...100,
                   label: {Text("width")},
                   minimumValueLabel: (Text("0")),
                   maximumValueLabel: (Text("100")))
            
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
