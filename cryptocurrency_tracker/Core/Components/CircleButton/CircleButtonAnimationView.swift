//
//  CircleButtonAnimationView.swift
//  cryptocurrency_tracker
//
//  Created by mohamdan on 12/07/2024.
//

import SwiftUI

struct CircleButtonAnimationView: View {
    
    @Binding var animate: Bool
    
    var body: some View {
        Circle()
            .stroke(lineWidth: 5.0)
            .scale( withAnimation(animate ? .easeOut(duration: 1.0) : .none, {
                animate ? 1.0 : 0.0
            }))
            .opacity(
                withAnimation(animate ? .easeOut(duration: 1.0) : .none, {
                    animate ? 0.0 : 1.0
                }))
    }
}

#Preview {
    CircleButtonAnimationView(animate: .constant(false))
}