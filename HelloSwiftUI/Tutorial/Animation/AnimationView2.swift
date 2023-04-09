//
//  AnimationView2.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/09.
//

import SwiftUI

struct AnimationView2: View {
    
    @State private var animationAmount = false
    @State private var isShowingRed = false
    
    var body: some View {
        Button("Tab Me"){
            self.animationAmount.toggle()
        }
        
        // background 보다 frame이 먼저 와야한다.
        .frame(width: 200, height: 200)
        .background(animationAmount ? Color.green: Color.yellow)
        .foregroundColor(animationAmount ? Color.white : Color.black)
        .animation(.default)
        .clipShape(RoundedRectangle(cornerRadius: animationAmount ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 50, damping: 1))
        
        VStack{
            Button("Tab Me"){
                withAnimation{
                    self.isShowingRed.toggle()
                }
            }
            
            if isShowingRed {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                    .transition(.scale)
            }
        }
    }
}

struct AnimationView2_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView2()
    }
}
