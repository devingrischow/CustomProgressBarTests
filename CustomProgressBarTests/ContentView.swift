//
//  ContentView.swift
//  CustomProgressBarTests
//
//  Created by Devin Grischow on 12/17/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var testCalc:CGFloat = 0.4 * 100
    
    @State private var percent:CGFloat = 50
    
    
    
    
    var body: some View {
        
        VStack {
            
            
            BasicCustomBar(width: 350, height: 30, percent: $testCalc, progressColor: .yellow, backgroundColor: .gray, textColor: .white)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
