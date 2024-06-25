//
//  CustomBackgroundView.swift
//  hike-app
//
//  Created by Reza on 20/6/2024.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
       
        ZStack {
            
            Color.customGreenMedium
                .cornerRadius(20)
                .offset(y: 12)
            
            Color.colorGreenLight
                .cornerRadius(20)
                .offset(y: 3)
                .opacity(0.8)
            
            LinearGradient(
                colors: [
                    Color.colorGreenLight,
                    Color.colorGreenMedium,
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            ).cornerRadius(20)
        }
    }
}

#Preview {
    CustomBackgroundView().padding()
}
