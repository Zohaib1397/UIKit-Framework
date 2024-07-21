//
//  FrameViewModel.swift
//  Framework-Grid
//
//  Created by Zohaib Ahmed on 21/07/2024.
//

import Foundation


final class FrameViewModel: ObservableObject{
    var selectedFramework: Framework? {
        didSet{
            isDetailViewActive = true
        }
    }
    @Published var isDetailViewActive: Bool = false
    
    
}
