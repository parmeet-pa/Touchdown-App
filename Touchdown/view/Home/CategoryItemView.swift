//
//  CategoryItemView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 15/10/24.
//

import SwiftUI

struct CategoryItemView: View {
    let category:category
    var body: some View {
        Button(action:{},label: {
            HStack(alignment: .center,spacing:6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30,height: 30,alignment: .center)
                    .foregroundColor(Color.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray,lineWidth: 1))
        })
        
    }
}

#Preview {
    CategoryItemView(category: categories[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
