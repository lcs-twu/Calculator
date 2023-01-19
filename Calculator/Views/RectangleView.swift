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
    //MARK: Computer property
    var area: Double{
        return length * width
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
                }
            }
                //length
                InputView(name: "length", value: $length)
                
                //slider
                
                
                
                InputView(name: "width", value: $width)
     
                OutputView(name: "area", value: area)
                
            }
            
            Spacer()
        }
    }
struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
