//
//  PostView.swift
//  Week2-Demo
//
//  Created by Andrew Zmijewski on 9/23/24.
//

import SwiftUI

struct PostView: View {
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
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .font(.title2)
            .padding(.horizontal, 8)
            Text("110 likes")
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
