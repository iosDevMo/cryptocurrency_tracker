//
//  ContentView.swift
//  cryptocurrency_tracker
//
//  Created by mohamdan on 11/07/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            //background layer
            Color.theme.background
                .ignoresSafeArea()
            
            //content layer
            VStack {
                HStack{
                    CircleButtonView(iconName: "info")
                    Spacer()
                    Text("Hello, world!")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.theme.accent)
                    Spacer()
                    CircleButtonView(iconName: "chevron.right")
                }
                .padding(.horizontal)
                Spacer(minLength: 0)
            }
            .padding()
        }
    }
}

#Preview {
    NavigationStack{
        HomeView()
            .navigationBarHidden(true)
    }
}
