import SwiftUI

struct MyContentView: View {
    
    let genderType = ["남성","여성","비밀"]
    
    @State var name = ""
    @State var age = ""
    @State var bornIn = 0
    @State var gender = 0
    
    
    var resultScript: String{
        if(name.isEmpty){
            return "이름을 입력해주세요"
        } else{
            return "\(name)님은 성별이 \(genderType[gender])이며 나이는 \(124 - bornIn)입니다."
        }
    }
    
    var body: some View {
        Form{
            Section{
                TextField("이름을 입력하세요", text: $name)
                    .keyboardType(.default)
            }
            
            Section{
                TextField("나이를 입력해주세요 ", text: $age)
                    .keyboardType(.numberPad)
            }
            
            Section{
                Text("\(name)님의 나이는 \(age)입니다")
            }
            
        }
        
        NavigationView{
            Form{
                Section(header: Text("이름")){
                    TextField("이름을 입력하세요", text: $name)
                        .keyboardType(.default)
                }.navigationBarTitle("회원가입")
            }
        }
        
        Form{
            Section(header: Text("이름")){
                TextField("이름을 입력해주세요", text: $name)
                    .keyboardType(.default)
            }
            
            Section(header: Text("생년월일")){
                Picker("출생년도",selection: $bornIn){
                    ForEach(1900 ..< 2023){
                        Text("\(String($0))년생")
                    }
                }
            }
            
            Section(header: Text("성별")){
                Picker("성별",selection: $gender){
                    ForEach(0 ..< genderType.count){
                        Text("\(self.genderType[$0])")
                    }
                }.pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("결과")){
                Text("\(resultScript)")
            }

        }.navigationBarTitle("회원가입2")
        
    }
}

struct MyContentView_Previews: PreviewProvider {
    static var previews: some View {
        MyContentView()
    }
}
