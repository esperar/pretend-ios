//
//  MyContentView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/05.
//

import SwiftUI

struct MyContentView: View {
    
    @State var name = ""
    
    var body: some View {
        Form{
            TextField("이름을 입력해주세요", text: $name)
            Text("당신의 이름은 \(name) 입니다.")
        }
    }
}

struct MyContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyContentView()
    }
}
