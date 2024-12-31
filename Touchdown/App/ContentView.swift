//
//  ContentView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 14/10/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shop:Shop
    
    var body: some View {
        
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing:0){
                    NavigationBarView()
                        .padding(.horizontal,15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05),radius: 5,x:0,y:5)
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        VStack(spacing: 0) {
                            FeaturedTabview()
                                .frame(height: 320)
                            
                            CategoryGridView()
                            
                            TitileView(title: "Helmets")
                            LazyVGrid(columns: gridlayout,spacing: 15,content: {
                                ForEach(product){
                                    item in
                                    ProductItemView(product: item)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = item
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            })
                            .padding(15)
                            TitileView(title: "Brands")
                            BrandGridView()
                            
                            footerView()
                                .padding(.horizontal)
                        } //: VSTACK
                    })
                }
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            } else {
                ProductDetailView()
            }
        }
        .ignoresSafeArea(.all,edges: .top)
    }
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
