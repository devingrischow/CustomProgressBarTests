//
//  BasicCustomBar.swift
//  CustomProgressBarTests
//
//  Created by Devin Grischow on 12/17/23.
//

import SwiftUI

//Basic Progress bar for displaying as percents (0-1)
struct BasicCustomBar: View {
    
    //Bar Size Parameters
    var width:CGFloat = 20
    var height:CGFloat = 200

    
    @Binding var percent: CGFloat //Percent Value
    
    
    //Colors
    var progressColor:Color //The Pr
    var backgroundColor:Color
    
    var textColor:Color
    
    
    var body: some View {
        
        ZStack(alignment: .leading){
            
            ZStack(alignment: .leading){
                
                
                
                Capsule().fill(Color.black.opacity(0.08))
                    .frame(width: width, height:height)
                
                //Text("20%").font(.caption).foregroundColor(Color.white).padding(.leading)
                
                
            }
            
            let multiplier = width / 100

            
            Capsule().fill(Color.yellow).frame(width: percent * multiplier, height: height).overlay(Text("20%").foregroundColor(.white).padding(.leading),alignment: .leading)
            
//.frame(width: 200,height:20).overlay(Text("20%")font(.caption).foregroundColor(Color.white).padding(.leading))
        
        }//Bottom OF Top Stack
        
    }
}

struct BasicCustomBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
