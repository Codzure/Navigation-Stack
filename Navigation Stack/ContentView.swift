//
//  ContentView.swift
//  Navigation Stack
//
//  Created by Leonard Mutugi on 22/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var path: [DataStructure] =
    [DataStructure.exampleData[0],
     DataStructure.exampleData[1]
    ]
    
    var body: some View {
        NavigationStack(path: $path) {
        // One
//            List{
//                NavigationLink("Mastering SwiftUI", value: "Mastering SwiftUI")
//                NavigationLink("Mastering iOS Machine Learning", value: Color.orange)
//            }
//            .navigationTitle("iOS Developer")
//            .navigationDestination(for: String.self) { value
//                in
//                Text(value)
//                NavigationLink("Mastering iOS Machine Learning", value: "Mastering iOS Machine Learning")
//                Button("Pop to root"){
//                    path = NavigationPath()
//                }
//                .buttonStyle(.borderedProminent)
//            }
//            .navigationDestination(for: Color.self) { value
//                in
//                Text("Mastering iOS Machine Learning")
//                    .font(.largeTitle)
//                    .foregroundColor(value)
//            }
            
            //Two
            
            List(DataStructure.exampleData){ course in
                NavigationLink(course.name, value: course)
                
            }
            .navigationDestination(for: DataStructure.self){ value in
                Text(value.name)
                
            }
        }
        
      
        
        
        .padding()
    }
}

struct DataStructure: Identifiable, Hashable{
    let id = UUID()
    let name: String
}

extension DataStructure {
    static var exampleData : [DataStructure]{
        return [
            .init(name: "Mastering Swiftui"),
            .init(name: "Build Disney Plus Clone in SwiftUI"),
            .init(name: "Build Video player App in SwiftUI"),
            .init(name: "Build Drawing App in SwiftUI")
        ]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
