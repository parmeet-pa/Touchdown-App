//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 15/10/24.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridlayout, alignment: .center, spacing:columnspacing, pinnedViews: [], content: {
            Section(
                header: SectionView(rotateclockwise: false),
              footer: SectionView(rotateclockwise: true)
            ) {
              ForEach(categories) { category in
                CategoryItemView(category: category)
              }
            }
          }) //: GRID
          .frame(height: 140)
          .padding(.horizontal, 15)
          .padding(.vertical, 10)
        })
    }
}

#Preview {
    CategoryGridView()
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
