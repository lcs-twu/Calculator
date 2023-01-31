//
//  RectangularPrism.swift
//  Calculator
//
//  Created by Tom Wu on 2023-01-19.
//

import SwiftUI

struct RectangularPrismView: View {
    @State var length: Double = ""
    @State var width: Double = ""
    @State var height: Double = ""
    
    var volume: Double? {
        guard let length = Double(length) else { return nil }
        guard let width = Double(width) else { return nil }
        guard let height = Double(height) else{ return nil }
        return length * width * height
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
