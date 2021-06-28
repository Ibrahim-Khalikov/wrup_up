//
//  Video.swift
//  navigationLink
//
//  Created by cloud_vfx on 28/06/21.
//

import SwiftUI
import AVKit

struct Video: View {
    
    @ObservedObject var model = Contentmodel()
    
    var body: some View {
        
        let url = URL(string: Constant.videohost)
    
        VStack{
                VideoPlayer(player: AVPlayer(url: url!)
                                
                                
                    
                
            
            
            
        
                )}
    }
}

struct Video_Previews: PreviewProvider {
    static var previews: some View {
        Video()
    }
}
