//
//  SafariView.swift
//  Framework-Grid
//
//  Created by Zohaib Ahmed on 21/07/2024.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable{
    
    var url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>){
        
    }
}
