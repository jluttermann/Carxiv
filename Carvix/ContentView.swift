//
//  ContentView.swift
//  Carvix
//
//  Created by Jan Luttermann on 12.04.23.
//

import SwiftUI


struct ContentView: View {
    enum Category: String, CaseIterable, Identifiable {
        case none, ai, cvpr, comsec, network, nec
        var id: Self { self }
        var link: String {
            switch self {
            case .none: return "NONE"
            case .ai: return "AI"
            case .cvpr: return "CV"
            case .comsec: return "CR"
            case .network: return "NI"
            case .nec: return "NE"
            }
        }
        var text: String {
            switch self {
            case .none: return "Nothing Chosen"
            case .ai: return "Artificial Intelligence"
            case .cvpr: return "Computer Vision"
            case .comsec: return "Computer Security"
            case .network: return "Networking"
            case .nec: return "Neural Computing"
            }
        }
    }

    @State private var selectedCategory: String = "ALL"
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            VStack {
                Text("ArXiv News")
                    .font(.title)
                    .foregroundColor(Color(hue: 0.664, saturation: 0.821, brightness: 0.439))
                HStack {
                        Picker("Flavor", selection: $selectedCategory) {
                            ForEach(Category.allCases) { category in
                                Text(category.text)
                                    .tag(category.link)
                            }
                        }
                    Text("0 Publications")
                        .font(.footnote)
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                    }
                
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
