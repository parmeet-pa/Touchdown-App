//
//  NavigationBarView.swift
//  Touchdown
//
//  Created by Parmeet Singh on 14/10/24.
//

import SwiftUI

struct NavigationBarView: View {
    @State private var isanimated:Bool = false
    var body: some View {
            HStack{
                Button(action:{},label: {
                    Image(systemName: "magnifyingglass")
                        .font(.title)
                        .foregroundColor(.black)
            })
                
                Spacer()
                LogoView()
                    .opacity(isanimated ? 1 : 0)
                    .offset(x:0,y: isanimated ? 0 : -25)
                    .onAppear(perform:{
                        withAnimation(.easeOut(duration: 0.5)){
                            isanimated.toggle()
                        }
                    })
                Spacer()
                Button(action:{},label: {
                    ZStack {
                       
                        Image(systemName: "cart")
                            .font(.title)
                            .foregroundColor(.black)
                        Circle()
                            .fill(Color.red)
                            .frame(width: 14,height: 14,alignment: .center)
                            .offset(x:13, y:-10)
                    }
            })
            }
        
    }
}

#Preview {
    NavigationBarView()
        .padding()
}
