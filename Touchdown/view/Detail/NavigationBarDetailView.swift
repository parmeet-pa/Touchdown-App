//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 16/10/24.
//

import SwiftUI

struct NavigationBarDetailView: View {
     
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack{
            Button(action: {
                feedback.impactOccurred()
                withAnimation(.easeIn){
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
             
            Button(action: {}, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            })
        }
    }
}

#Preview {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .padding()
        .background(Color.gray)
}
