//
//  SectionView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 15/10/24.
//

import SwiftUI

struct SectionView: View {
    @State var rotateclockwise:Bool
    var body: some View {
        VStack (spacing:0){
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateclockwise ? 90 : -90))
            Spacer()
        }
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView(rotateclockwise: false)
         
        .padding()
        .background(colorBackground)
}
