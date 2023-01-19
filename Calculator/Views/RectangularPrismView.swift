//
//  RectangularPrism.swift
//  Calculator
//
//  Created by Tom Wu on 2023-01-19.
//

import SwiftUI

struct RectangularPrismView: View {
    @State var length: Double = 7
    @State var width: Double = 5
    @State var height: Double = 6
    
    var volume: Double{
        return length*width*height
    }
    var body: some View {
        VStack{
            HStack {
                Group{
                    Image("RectanglePrism")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250)
                }
            }
            Group{
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
                
                LabelView(name: "width", value: width)
                
                Slider(value: $width,
                       in: 0...100,
                       label: {Text("width")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
                
                LabelView(name: "height", value: height)
                
                Slider(value: $height,
                       in: 0...100,
                       label: {Text("height")},
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: {Text("100")})
            }
            Text("volume")
                .bold()
                .font(.title2)
            
            LabelView(name: "volume", value: volume)
            
            Text("\(    volume.formatted(.number.precision(.fractionLength(0...2))))")
            
        }
        
        Spacer()
    }
}

struct RectangularPrismView_Previews: PreviewProvider {
    static var previews: some View {
        RectangularPrismView()
    }
}
