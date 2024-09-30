//
//  PostView.swift
//  Week2-Demo
//
//  Created by Andrew Zmijewski on 9/23/24.
//

import SwiftUI

struct PostView: View {
    
    @State var likes = 99
    @State var isRed = false
    @State var isBookmarked = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image("WCU Money")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                Text("andrew_______z")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 8)
            Image("Standhope")
                .resizable()
                .scaledToFit()
            HStack(spacing: 16) {
                Button {
                    if(isRed) {
                        likes -= 1
                        isRed.toggle()
                    }
                    else {
                        likes += 1
                        isRed.toggle()
                    }
                } label: {
                    if(isRed) {
                        Image(systemName: "heart.fill")
                            .foregroundStyle(.red)
                    }
                    else {
                        Image(systemName: "heart")
                            .foregroundStyle(.black)
                    }
                }
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Button {
                    isBookmarked.toggle()
                } label: {
                    if(isBookmarked) {
                        Image(systemName: "bookmark.fill")
                            .foregroundStyle(.black)
                    }
                    else {
                        Image(systemName: "bookmark")
                            .foregroundStyle(.black)
                    }
                }
            }
            .font(.title2)
            .padding(.horizontal, 8)
            Text("\(likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .padding(.horizontal, 8)
            HStack {
                Text("andrew_______z")
                    .font(.footnote)
                    .fontWeight(.bold)
                Text("Idaho")
                    .font(.footnote)
            }
            .padding(.horizontal, 8)
            Text("September 24th")
                .font(.caption)
                .padding(.horizontal, 8)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    PostView()
}
