//
//  AlertView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/04/06.
//

import SwiftUI

struct AlertView: View {
    
    @State private var showingAlert = false
    
    var body: some View {
        
        Button("Alert 메세지"){
            self.showingAlert.toggle()
        }
        .foregroundColor(.white)
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(30)
        .font(.system(size: 30))
        
        .alert(isPresented: $showingAlert){
            Alert(title: Text("Esperer!!"), message: Text("HopeKim"), primaryButton: .destructive(Text("취소"), action: {
                //some Action
            }), secondaryButton: .cancel(Text("hi")))
            
            let SomeButton1 = Alert.Button.default(Text("Hi Hope")){
                print("primary button pressed")
            }
            
            let SomeButton2 = Alert.Button.cancel(Text("Hi Esperer")){
                print("secondary button pressed")
            }
            
            return Alert(title: Text("Esperer iOS"), message: Text("Hello"), primaryButton: SomeButton1, secondaryButton: SomeButton2)
                  
        }
    }
}

struct AlertView_Previews: PreviewProvider {
    static var previews: some View {
        AlertView()
    }
}
