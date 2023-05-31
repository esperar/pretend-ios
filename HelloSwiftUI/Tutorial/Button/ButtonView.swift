//
//  ButtonView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/06/01.
//

import SwiftUI

struct ButtonVeiw: View {
    
    @State private var showDetails = false
    @State private var showImage = false
    
    var body: some View {
        Button(action:{
            
        }) {
            
            HStack{
                Image(systemName: "folder.fill")
                Text("Tab Me")
            }
        }
        
        VStack{
            Button(action:{
                self.showDetails.toggle()
            }) {
                Text("디테일 보기")
            }
            
            if showDetails {
                Text("안녕하세요 저는 hope")
                    .font(.largeTitle)
                
            }
            
        }
        
        VStack{
            Button(action:{
                
            }) {
                HStack{
                    Image(systemName: "pencil")
                    Text("Edit")
                }.font(.system(size: 60))
                    .foregroundColor(.black)
            }
        }
        
        VStack{
            Button(action:{
                print("Delete Tab")
            }){
                HStack{
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(40)
            }
        }
        
        VStack {
            // 1
           Button("DefaultButtonStyle") {
               // some action
           }
           .buttonStyle(DefaultButtonStyle())
           
           Divider()
            // 2
           Button("BorderlessButtonStyle") {
               // some action
           }
           .buttonStyle(BorderlessButtonStyle())
           
           Divider()
            // 3
           Button(action: {
               // some action
           }) {
               Text("PlainButtonStyle")
           }
           .buttonStyle(PlainButtonStyle())
        }
        
        VStack{
            if showImage{
                Image(systemName: "moon.stars.fill")
            }
            Button(action:{
                self.showImage.toggle()
            }){
                Text("Button")
            }
        }
        
    }
}

struct ButtonVeiw_Previews: PreviewProvider {
    static var previews: some View {
        ButtonVeiw()
    }
}
