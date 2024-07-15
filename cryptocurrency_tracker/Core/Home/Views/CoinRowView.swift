//
//  CoinRowView.swift
//  cryptocurrency_tracker
//
//  Created by mohamdan on 15/07/2024.
//

import SwiftUI

struct CoinRowView: View {
    
    let coin: CoinModel
    
    var body: some View {
        HStack(spacing: 0) {
            Text("\(coin.rank)")
                .font(.caption)
                .foregroundStyle(Color.theme.secondaryText)
                .frame(width: 30)
            Circle()
                .frame(width: 30, height: 30)
            Text("\(coin.symbol.uppercased())")
                .font(.headline)
                .padding(.leading, 6)
                .foregroundStyle(Color.theme.accent)
            Spacer()
            VStack(alignment: .trailing) {
                Text("\(coin.currentPrice)")
                    .bold()
                    .foregroundStyle(Color.theme.accent)
                Text("\(coin.priceChangePercentage24H ?? 0)")
                    .foregroundStyle((coin.priceChangePercentage24H ?? 0) >= 0 ? Color.theme.green : Color.theme.red)
            }
        }
    }
}

#Preview {
    CoinRowView(coin: DeveloperPreview.instance.coin)
}
