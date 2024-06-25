//
//  CardView.swift
//  hike-app
//
//  Created by Reza on 20/6/2024.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        }while imageNumber == randomNumber
        imageNumber = randomNumber
    }
    
    
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .font(.system(size: 52))
                            .fontWeight(.black)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        Spacer()
                        Button {
                            print("Button Clicked")
                        }label: {
                            CustomButtonView()
                        }
                    }
                    Text("Fun and enjoyable outdoor activity for friends and family")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.customGrayMedium)
                    
                }
                ZStack {
                    Circle()
                        .fill(
                            LinearGradient(colors: [
                                Color("ColorIndigoMedium"),
                                Color ("ColorSalmonLight")], 
                                           startPoint:.topLeading,
                                           endPoint: .bottomTrailing)
                        )
                        .frame(width: 256 , height: 256)
                        
                    Image("image-\(imageNumber)")
                        .resizable()
                    .scaledToFit()
                    .animation(.default, value: imageNumber)
                    
                }
                Spacer()
                
                Button{
                    randomImage()
                }label: {
                    Text("Explor More")
                        .fontWeight(.heavy)
                        .font(.title2)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.30), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
                
               
                
            }.padding()
        }
        .frame(width: 320 , height: 570)

        
    }
}

#Preview {
    CardView()
}
