//
//  AnimalMarketDetail.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/05.
//

import SwiftUI

struct AnimalMarkerDetail: View {
    
    @State var isPresent: Bool = false

    let animalMarker: AnimalMarker
    
    var body: some View {
        
        VStack{
            Image(animalMarker.imageUrl)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .onTapGesture(count: 2, perform: {
                    self.isPresent = true
                })
               
            Text(animalMarker.name)
        }.alert(isPresented: $isPresent, content: {
            Alert(title: Text("더블 클릭"), message: Text("하셨습니다."), dismissButton: .default(Text("OK")))
        })
    }
}

struct AnimalMarketDetail_Previews: PreviewProvider {
    static let previewMarker = AnimalMarker(name: "이정우", imageUrl: "snake", numberOfStore: 3000)
    static var previews: some View {
        AnimalMarkerDetail(animalMarker: previewMarker)
    }
}
