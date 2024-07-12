//
//  ContentView.swift
//  cryptocurrency_tracker
//
//  Created by mohamdan on 11/07/2024.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showPortfolio: Bool = false
    
    var body: some View {
        ZStack {
            //background layer
            Color.theme.background
                .ignoresSafeArea()
            
            //content layer
            VStack {
                homeHeader
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

extension HomeView {
    private var homeHeader: some View {
        HStack{
            CircleButtonView(
                iconName: withAnimation(.none, {
                    showPortfolio ? "plus" : "info"
                }))                        .background(CircleButtonAnimationView(animate: $showPortfolio))
            Spacer()
            Text("Hello, world!")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundStyle(Color.theme.accent)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(.degrees(showPortfolio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring) {
                        showPortfolio.toggle()
                    }
                }
        }
        .padding(.horizontal)
    }
}
