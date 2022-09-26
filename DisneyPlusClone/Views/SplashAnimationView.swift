//
//  SplashAnimationView.swift
//  DisneyPlusClone
//
//  Created by Oncu Can on 26.09.2022.
//

import SwiftUI
import SwiftyGif

final class SplashAnimationView: UIViewRepresentable {
    
    var name = "disneyPlusAnimated.gif"
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        
        do {
            let gif = try UIImage(gifName: name)
            let imageView = UIImageView(gifImage: gif, loopCount: 1)
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.frame = view.bounds
            
            view.addSubview(imageView)
            
            NSLayoutConstraint.activate([
                imageView.widthAnchor.constraint(equalTo: view.widthAnchor),
                imageView.heightAnchor.constraint(equalTo: view.heightAnchor)
                
            ])
        }
        catch {
            print(error)
        }
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
    
    
}
