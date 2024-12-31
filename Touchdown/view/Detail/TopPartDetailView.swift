//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 16/10/24.
//

import SwiftUI

struct TopPartDetailView: View {
    @EnvironmentObject var shop:Shop
    @State var isanimating: Bool = false
    var body: some View {
        HStack(alignment: .center, spacing: 6,content: {
            
            VStack(alignment: .center, spacing: 6, content:{
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            })
            .offset(y: isanimating ? -50 : -75)
            Spacer()
            
            Image(shop.selectedProduct?.image ??  sampleProduct.image)
                .resizable()
                .scaledToFit()
        })
        .offset(y:isanimating ? 0 : -35)
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isanimating.toggle()
            }
        })
    }
}

#Preview {
    TopPartDetailView()
        .padding()
        .environmentObject(Shop())
        
}
