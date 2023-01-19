//
//  Label2View.swift
//  Calculator
//
//  Created by Tom Wu on 2023-01-19.
//

import SwiftUI

struct OutputView: View {
    
    // MARK: Stroed properties
    let name: String
    let value: Double
    
    // MARK: Computed properties
    var body: some View {
        
        VStack {
            
            //length
            Text(name)
                .bold()
                .font(.title2)
            
            Text("\(    value.formatted(.number.precision(.fractionLength(0...2))))")
            
        }

    }
}

struct OutputView_Previews: PreviewProvider {
    static var previews: some View {
        OutputView(name: "Height", value: 100)
    }
}

