//
//  VideoView.swift
//  DisneyPlusClone
//
//  Created by Oncu Can on 28.09.2022.
//

import SwiftUI
import AVKit

struct VideoView: View {
    let player: AVPlayer
    
    init(videoUrl: String) {
        self.player = AVPlayer(url: URL(string: videoUrl)!)
    }
    
    var body: some View {
        VideoPlayer(player: player)
            .onAppear{
                player.play()
            }
    }
}
