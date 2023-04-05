//
//  BindingView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/05.
//

import SwiftUI

struct BindingView: View {
    
    @ObservedObject var countRepo = CountRepo()
    
    @State var isToggleOn: Bool = true
    
    var body: some View {
        
        VStack{
            ChildView(isToggleOn: $isToggleOn)
            if isToggleOn{
                Text("그으을자!!")
            }
        }
        
        VStack{
            Text("\(self.countRepo.count)").font(.largeTitle)
            
            Button("숫자 증가"){
                self.countRepo.count += 1
            }
        }
    }
}

struct ChildView: View{
    
    @Binding var isToggleOn: Bool
    
    var body: some View{
        Toggle(isOn: $isToggleOn){
            Text("글자를 가립니다")
        }.padding()
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}

class CountRepo: ObservableObject{
    var count: Int = 0 {
        willSet(newVal){
            print(newVal % 5)
            if(newVal % 5 == 0){
                objectWillChange.send()
            }
        }
    }
}
