//
//  DisclosureView.swift
//  HelloSwiftUI
//
//  Created by 김희망 on 2023/06/01.
//

import SwiftUI

struct DisclosureView: View {
    
    @State private var details = false
    
    @State private var settingIsExpand = false
    @State private var batteryIsExpand = false
    @State private var isLowPowerMode = false
    @State private var volume: Double = 0
    
    @State private var soundIsExpand = false
    
    var body: some View {
        
        VStack{
            DisclosureGroup("embedded란?", isExpanded: $details){
                Text("embedded 는 영어로는 간직하다 , 끼워넣다 이런 뜻입니다. 프로그램 시스템의 일종으로  전자제품이나 전자 기기에 들어 가는 소규모의 마이크로 프로세서 시스템 이라고 보면 됩니다. 마이크로 프로세서는 운영 체제를 담는 그릇이라고 하면 ,  그런 운영 체제를 담고 있고,그에 따른 지배를 받는 마이크로 프로세서 시스템을 임베디드 시스템 이라고 합니다. 임베디드의 뜻은   embedded 라는 말에서도 알수 있듯이 내부에 무엇인가 포함하고 있는 상태를 말한다.")
                
            }
            .padding()
            Spacer().background(Color.blue)
        }
        
        VStack{
            
            DisclosureGroup("설명", isExpanded: $settingIsExpand){
                DisclosureGroup("배터리", isExpanded: $batteryIsExpand){
                    Toggle("저전력 모드 변환", isOn: $isLowPowerMode).padding()
                }
                .padding([.top, .leading, .trailing], 20)
            }
            .padding()
        
            
            DisclosureGroup(isExpanded: $soundIsExpand, content:{
                Slider(value: $volume, in: 0...100, step: 1)
                Text(" 현재 볼륨은 '\(volume, specifier: "%.0f")' 입니다.")
                }, label: {
                    HStack{
                        Image(systemName: "speaker.wave.3.fill")
                        Text("소리")
                }
                
            })
            .accentColor(.red)
            .padding()
            
            Spacer()
        }
        
        
        
    }
}

struct DisclosureView_Previews: PreviewProvider {
    static var previews: some View {
        DisclosureView()
    }
}
