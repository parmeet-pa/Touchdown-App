//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 16/10/24.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    var body: some View {
        VStack(alignment: .leading,spacing: 5, content: {
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            HeaderDetailView()
                .padding(.horizontal)
            
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            VStack(alignment:.center,spacing: 0,content: {
                RatingSizesDetailview()
                    .padding(.top,-25)
                    .padding(.bottom,10)
                ScrollView(showsIndicators: false,content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body,design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })
                
                QauntityFavDetailView()
                    .padding(.vertical,10)
                
                AddtoCartDetailView()
                    .padding(.bottom,20)
            })
            
            .padding(.horizontal)
            .background(
              Color.white
                .clipShape(CustomShape())
                .padding(.top, -105)
            )
        })
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background(Color(
            red: shop.selectedProduct?.red ?? sampleProduct.red,
            green: shop.selectedProduct?.green ?? sampleProduct.green,
            blue: shop.selectedProduct?.blue ?? sampleProduct.blue
          ) .ignoresSafeArea(.all,edges: .all))
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
    
}
