//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 16/10/24.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false,content: {
            LazyHGrid(rows:gridlayout,spacing: columnspacing,content: {
                ForEach(brands){
                    brand in
                    BrandItemView(brand: brand)
                }
            })
            .frame(height: 200)
            .padding(15)
        })
    }
}

#Preview {
    BrandGridView()
        .background(colorBackground)
}
