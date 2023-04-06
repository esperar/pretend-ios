//
//  ActionSheetView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/07.
//

import SwiftUI

struct ActionSheetView: View {
    
    @State var showingSheet: Bool = false
    @State var actionSheetOption: ActionSheetOption = .isOtherPost
    
    enum ActionSheetOption{
        case isMyPost
        case isOtherPost
    }
    
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
                    actionSheetOption = .isMyPost
                    showingSheet.toggle()
                }) {
                    Image(systemName: "ellipsis")
                }
                .actionSheet(isPresented: $showingSheet, content: getActionSheet)
            }
            .padding(.horizontal)
            
            Image("cat")
                .aspectRatio(1.0, contentMode: .fit)
        }
    }
        
    func getActionSheet() -> ActionSheet {
        
        let title = Text("원하는 옵션을 선택해주세요.")
        let shareButton: ActionSheet.Button = .default(Text("공유"))
        let reportButton: ActionSheet.Button = .destructive(Text("신고"))
        let deleteButton: ActionSheet.Button = .destructive(Text("게시물 삭제"))
        let cancleButton: ActionSheet.Button = .cancel()
        
        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, deleteButton, cancleButton])
            
        case .isOtherPost:
            return ActionSheet(title: title, message: nil, buttons: [shareButton, reportButton, cancleButton])
        }
        
    }
       

}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
