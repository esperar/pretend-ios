//
//  DividerView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/06/01.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        VStack(spacing: 40){
            Group{
                Text("Horizontal Divider")
                Divider()
                    .background(Color.red)
                Image(systemName: "a.circle.fill")
                Divider()
                    .background(Color.red)
                
            }
            
            Group{
                Text("Vertical Divider")
                
                HStack{
                    Divider()
                    Image(systemName: "b.circle.fill")
                    Divider()
                }.frame(height: 100)
            }
            
            Group{
                Text("Driver 길이 조절")
                Divider()
                    .frame(width: 200)
                Image(systemName: "d.circle.fill")
                Divider()
                    .frame(width: 300)
            }
        }
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
