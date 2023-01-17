//
//  LabelView.swift
//  Calculator
//
//  Created by Tom Wu on 2023-01-17.
//

import SwiftUI

struct LabelView: View {
    
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
            
            Text("\(value)")

        }

    }
}

struct LabelView_Previews: PreviewProvider {
    static var previews: some View {
        LabelView(name: "Height", value: 180)
    }
}
