//
//  CustomButtonView.swift
//  hike-app
//
//  Created by Reza on 20/6/2024.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
            
            Circle()
                .stroke(
                    LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                ),
                    lineWidth: 8
                )
            
            Image(systemName: "figure.hiking")
                .font(.system(size: 30))
                .foregroundStyle(  LinearGradient(
                    colors: [
                        .customGrayLight,
                        .customGrayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom
                )
                )
        }.frame(width: 58 , height: 58)
        
       
           
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
