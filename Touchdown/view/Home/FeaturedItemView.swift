//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 14/10/24.
//

import SwiftUI

struct FeaturedItemView: View {
    let player:Player
    var body: some View {
        
            Image(player.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
                
    
        
        
    }
}

#Preview {
    FeaturedItemView(player: players[0])
        .previewLayout(.sizeThatFits)
        .padding()
        .background(colorBackground)
}
