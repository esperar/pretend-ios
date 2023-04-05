//
//  StackContentView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/05.
//

import SwiftUI

struct StackContentView: View {
    var body: some View {
        HStack{
            Text("Hello!")
            Text("Hello!")
            Text("Hello!")
        }.background(Color.red)
        
        VStack(alignment: .leading, spacing: 20){
            Text("맨 위")
            Spacer().frame(height:5)
            Text("중앙")
            Spacer().frame(height:5)
            Text("하단")
        }.background(Color.red)
        
        ZStack{
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            RadialGradient(gradient: Gradient(colors:[.white, .black]), center: .center, startRadius: 310, endRadius: 100)
            AngularGradient(gradient: Gradient(colors:[.red,.yellow,.blue]), center: .center)
            
            Color.red.frame(width:300,height: 300)
            
            Color(red: 0.1, green: 0.2, blue: 0.3).frame(width:00,height:2000)
            
            Color.blue.frame(width:200,height: 200)
        }
        
        ZStack{
            AngularGradient(gradient: Gradient(colors:[.red,.orange,.yellow,.green,.blue,.purple]), center: .center)
                .edgesIgnoringSafeArea(.all)
            HStack{
                VStack{
                    Text("11시")
                    Spacer()
                    Text("9시")
                    Spacer()
                    Text("7시")
                }
                
                Spacer()
                
                VStack{
                    Text("12시")
                    Spacer()
                    Text("중앙")
                    Spacer()
                    Text("6시")
                }
                
                Spacer()
                
                VStack{
                    Text("1시")
                    Spacer()
                    Text("3시")
                    Spacer()
                    Text("5시")
                    
                }
            }
        }
    }
    

}

struct StackContentView_Previews: PreviewProvider {
    static var previews: some View {
        StackContentView()
    }
}
