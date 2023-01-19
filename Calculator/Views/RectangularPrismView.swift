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
    
    var surfaceArea: Double{
        return 2*length*height+2*length*width+2*height*width
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
                InputView(name: "length", value: $length)

                
                InputView(name: "width", value: $width)

                
                InputView(name: "height", value: $height)

            }
            
            OutputView(name: "volume", value: volume)
            
            OutputView(name: "surface area", value: surfaceArea)
        }
        
        Spacer()
    }
}

struct RectangularPrismView_Previews: PreviewProvider {
    static var previews: some View {
        RectangularPrismView()
    }
}
