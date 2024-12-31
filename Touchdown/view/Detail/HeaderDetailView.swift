//
//  HeaderDetailView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 16/10/24.
//

import SwiftUI

struct HeaderDetailView: View {
    @EnvironmentObject var shop:Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6,content: {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.title)
                .fontWeight(.black)
        })
        .foregroundColor(.white)
    }
}

#Preview {
    HeaderDetailView()
        .padding()
        .background(Color.gray)
        .environmentObject(Shop())
}
