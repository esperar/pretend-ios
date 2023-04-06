//
//  ActionSheetView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/07.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var showingSheet: Bool = false
    
    var body: some View {
        
        Button(action: {
            showingSheet.toggle()
        }) {
            Text("이 중에서 더 못생긴사람은?")
        }
        .actionSheet(isPresented: $showingSheet, content: getActionSheet)
        
        VStack{
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@gsm.hs.kr")
                Spacer()
                
                Button(action: {
                    showingSheet.toggle()
                }){
                    Image(systemName: "ellipsis")
                }
                .actionSheet(isPresented: $showingSheet, content: {
                    ActionSheet(title: Text("Esperer"))
                })
            }
            .padding(.horizontal)
            
            Image("cat")
                .aspectRatio(1.0, contentMode: .fit)
        }
    }
        
    func getActionSheet() -> ActionSheet {
        
        let button1: ActionSheet.Button = .default(Text("김새미".uppercased()))
        let button2: ActionSheet.Button = .destructive(Text("김하온".uppercased()))
        let button3: ActionSheet.Button = .cancel()
        
        let title = Text("Action Sheet")
        
        return ActionSheet(title: title,
                           message: nil,
                           buttons: [button1, button2, button3])

        }
       

}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
