//
//  ContentView.swift
//  Framework-Grid
//
//  Created by Zohaib Ahmed on 21/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameViewModel()
    
    var columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns){
                    ForEach(MockData.frameworks){framework in
                        NavigationLink(value: framework){
                            FrameworkView(framework: framework)
    //                            .onTapGesture {
    //                                viewModel.selectedFramework = framework
    //                            }
                        }
                        
                    }
                }
            }
            .navigationTitle("Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
//            .sheet(isPresented: $viewModel.isDetailViewActive, content: {
//                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
//                                    isDetailViewActive: $viewModel.isDetailViewActive
//                )
//            })
            
        }
        
    }
}

#Preview {
    ContentView()
}


struct FrameworkView: View{
    var framework: Framework
    var body: some View{
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}
