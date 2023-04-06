import SwiftUI

struct AnimalMarker {
    let name: String
    let imageUrl: String
    let numberOfStore: Int
}

extension AnimalMarker {
    static func all() -> [AnimalMarker] {
        return [
            AnimalMarker(name: "고양이", imageUrl: "cat", numberOfStore: 2000),
            AnimalMarker(name: "고먐미", imageUrl: "car1", numberOfStore: 2100),
            AnimalMarker(name: "데이비드", imageUrl: "snake", numberOfStore: 2200),
            AnimalMarker(name: "이정우", imageUrl: "snake", numberOfStore: 5000),
            AnimalMarker(name: "감기약", imageUrl: "medi", numberOfStore: 100)
        ]
    }
}

struct AnimalMarkerView: View {
    
    let animalMarkers = AnimalMarker.all()
    
    var body: some View {
        NavigationView{
            List(self.animalMarkers, id: \.name) {
                animalMarker in
                NavigationLink(destination: AnimalMarkerDetail(animalMarker: animalMarker)){
                    AnimalMarkerCell(animalMarker: animalMarker)
                }
            }.navigationBarTitle("이정우마켓", displayMode: .inline)
        }
    }
}

struct AnimalMarkerCell: View{
    
    let animalMarker: AnimalMarker
    
    var body: some View{
        HStack{
            Image(animalMarker.imageUrl)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(16)
            
            VStack(alignment: .leading){
                Text(animalMarker.name).font(.largeTitle)
                Text("\(animalMarker.numberOfStore) 원")
            }
            
        }
    }
}

struct AnimalMarker_Preview: PreviewProvider {
    static var previews: some View {
        AnimalMarkerView()
    }
}
