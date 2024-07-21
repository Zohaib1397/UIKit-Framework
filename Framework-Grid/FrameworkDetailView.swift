//
//  FrameworkDetailView.swift
//  Framework-Grid
//
//  Created by Zohaib Ahmed on 21/07/2024.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
//    @Binding var isDetailViewActive: Bool
    @State private var isSafariViewActive: Bool = false
    var body: some View {
        VStack{
//            HStack{
//                Spacer()
//                Button{
//                    isDetailViewActive = false
//                }label: {
//                    Image(systemName: "xmark")
//                        .foregroundStyle(Color(.label))
//                        .imageScale(.large)
//                        .frame(width: 44, height: 44)
//                }
//            }.padding()
//            Spacer()
            FrameworkView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
    
            Button{
                isSafariViewActive = true
            }label: {
                Label("Learn More", systemImage: "book.fill")
//                Text("Learn More")
//                    .bold()
//                    .frame(width:300, height: 80)
//                    .background(Color.red)
//                    .foregroundStyle(.white)
//                    .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
            }
            .buttonStyle(.bordered)
            .controlSize(.extraLarge)
            .tint(.red)
            
        }.fullScreenCover(isPresented: $isSafariViewActive, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework/*, isDetailViewActive: .constant(false)*/)
}
