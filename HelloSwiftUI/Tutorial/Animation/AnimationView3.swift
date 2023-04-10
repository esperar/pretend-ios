//
//  AnimationView3.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/11.
//

import SwiftUI

struct AnimationView3: View {
    
    @State var animate: Bool = false
    let timing: Double = 10.0
    
    var body: some View {
        
        VStack{
            Button("애니메이션") {
                animate.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animate ? 300 : 200, height: 100)
                .overlay(
                    Text("animation: default")
                        .foregroundColor(Color.white)
                )
                .animation(Animation.default)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animate ? 300 : 200, height: 100)
                .overlay(
                    Text("animation: easeOut")
                        .foregroundColor(Color.white)
                )
                .animation(Animation.easeOut(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animate ? 300 : 200, height: 100)
                .overlay(
                    Text("animation: easeIn")
                        .foregroundColor(Color.white)
                )
                .animation(Animation.easeIn(duration: timing))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animate ? 300 : 200, height: 100)
                .overlay(
                    Text("animation: linear")
                        .foregroundColor(Color.white)
                )
                .animation(Animation.linear(duration: timing))
        }
        
        VStack{
            
            Button("애니메이션") {
                animate.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animate ? 300 : 50, height: 100)
                .overlay(
                    Text("Spring")
                        .font(animate ? .headline: .caption)
                        .foregroundColor(Color.white)
                        .animation(.none)
                )
                .animation(Animation.spring(
                    response: 3.0,
                    dampingFraction: 0.3,
                    blendDuration: 1.0
                ))
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: animate ? 300 : 50, height: 100)
                .overlay(
                    Text("default")
                        .font(animate ? .headline: .caption)
                        .foregroundColor(Color.white)
                )
                .animation(Animation.default)
            
            
        }
        
    }
}

struct AnimationView3_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView3()
    }
}
