import SwiftUI

struct AnimationView: View {
    
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("Tab me"){
            self.animationAmount += 1
        }
        .padding(50)
        .background(Color.green)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.yellow, lineWidth: 2)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(Animation.easeInOut(duration: 1)
                    .repeatForever(autoreverses: false)))
        .onAppear {
            self.animationAmount = 2
        }
        
        
        Button("Tab me2"){
            withAnimation{
                self.animationAmount += 360
            }
        }
        .padding(40)
        .background(Color.green)
        .foregroundColor(.white)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0.0, y: 1.0, z: 0.0))
    
        
        print(animationAmount)
        
        return VStack{
            
            Stepper("Scale Amount", value: $animationAmount.animation(), in: 1...10)
            
            Spacer()
            
            Button("Tab Me"){
                self.animationAmount += 1
            }
            .padding(40)
            .background(Color.green)
            .foregroundColor(.white)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
    
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}
