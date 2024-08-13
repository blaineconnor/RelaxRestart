//
//  CircleGroupView.swift
//  RelaxRestart-App
//
//  Created by Fatih Emre Sarman on 13.08.2024.
//

import SwiftUI

struct CircleGroupView: View {
    
    // MARK: - Properties
    
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    
    // MARK: - Body
    
    var body: some View {
        
        ZStack{
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40).frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80).frame(width: 260, height: 260, alignment: .center)            
        }
    }
}

// MARK: - Preview
#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
        
        CircleGroupView(ShapeColor: .white, ShapeOpacity: 0.2)
    }
}
