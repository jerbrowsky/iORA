//
//  ReactionView.swift
//  iORA
//
//  Created by Jared Rossberg on 1/12/22.
//

import SwiftUI
import UIKit

struct ReactionView: View {
    let reactionFile: ReactionFile
    
    var body: some View {
        Text(reactionFile.name)
            .font(.system(size: 20))
            .bold()
        ReactionStoryboardViewController(filename: reactionFile.filename)
    }
}

var globalReaction = ""

struct ReactionStoryboardViewController: UIViewControllerRepresentable {
    let filename: String
    let fileLoader = FileLoader()
    
    init(filename: String) {
        self.filename = filename
        globalReaction = filename
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let storyboard = UIStoryboard(name: "View", bundle: Bundle.main)
        let controller = storyboard.instantiateInitialViewController()
        return controller!
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
    
}

