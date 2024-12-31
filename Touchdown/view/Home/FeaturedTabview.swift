//
//  FeaturedTabview.swift
//  Touchdown
//
//  Created by Parmeet Singh on 14/10/24.
//

import SwiftUI

struct FeaturedTabview: View {
    var body: some View {
        TabView {
          ForEach(players) { player in
            FeaturedItemView(player: player)
              .padding(.top, 10)
              .padding(.horizontal, 15)
          }
        } //: TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabview()
        .background(Color.gray)
}
