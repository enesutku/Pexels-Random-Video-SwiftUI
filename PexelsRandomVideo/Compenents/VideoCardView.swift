// Created by Enes UTKU

import SwiftUI

struct VideoCardView: View {
    
    var video: Video
    
    var body: some View {
        ZStack {
            
            ZStack(alignment: .bottomLeading) {
                AsyncImage(url: URL(string: video.image)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 160, height: 250)
                        .clipShape(.rect(cornerRadius: 30))
                } placeholder: {
                    Rectangle()
                        .foregroundStyle(.gray).opacity(0.3)
                        .frame(width: 160, height: 250)
                        .clipShape(.rect(cornerRadius: 30))
                }
                
                VStack(alignment: .leading, content: {
                    Text("\(video.duration) Seconds")
                        .font(.caption)
                        .bold()
                    
                    Text("By \(video.user.name)")
                        .font(.caption)
                        .bold()
                        .multilineTextAlignment(.leading)
                })
                .foregroundStyle(.white)
                .shadow(radius: 20)
                .padding()
                
            }
            
            Image(systemName: "play.fill")
                .foregroundStyle(.white)
                .font(.title)
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(Circle())
            
        }
    }
}

#Preview {
    VideoCardView(video: previewVideo)
}
