//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/04.
//

import SwiftUI

    struct ContentView: View {
        
    @State var touchedCount = 0
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello Swift")
        }
        .padding()
        
        NavigationView{
            Form{
                Text("버튼을 클릭한 횟수 \(touchedCount)")
                Button("this is button"){
                    self.touchedCount += 1
                }
            }.navigationBarTitle("this is title")
        }
        
        Form{
            Text("가짜 Todomate")
            Group{
                Text("asdfasdfasdfasdf")
                Text("asdfasdfasdfasdf")
                Text("Hello Swift UI")
            }
        }
    }
    }

    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    }
