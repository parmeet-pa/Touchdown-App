//
//  TitileView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 16/10/24.
//

import SwiftUI

struct TitileView: View {
    var title:String
    var body: some View {
        HStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
        
        .padding(.horizontal)
        .padding(.top,15)
        .padding(.bottom,10)
    }
}

#Preview {
    TitileView(title: "Helmet")
        .background(colorBackground)
}
