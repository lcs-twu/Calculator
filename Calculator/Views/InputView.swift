//
//  LabelView.swift
//  Calculator
//
//  Created by Tom Wu on 2023-01-17.
//

import SwiftUI

struct InputView: View {
    
    // MARK: Stroed properties
    let name: String
    @Binding var value: Double
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            
            //length
            Text(name)
                .bold()
                .font(.title2)
            
            Slider(value: $value,
                   in: 0...100,
                   step: 1.0,
                   label: {Text("length")},
                   minimumValueLabel: {Text("0")},
                   maximumValueLabel: {Text("100")})
            
            
            Text("\(    value.formatted(.number.precision(.fractionLength(0...2))))")
            
        }

    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(name: "Length", value: Binding.constant(7.0))
    }
}
