//
//  ChartView.swift
//  Crypto
//
//  Created by Richard Holland on 02/07/2025.
//

import SwiftUI
import Charts

struct ChartView: View {
    
    private let data: [Double]
    private let lineColor: Color
    
    
    init(coin: CoinModel) {
        data = coin.sparklineIn7D?.price ?? []
        let priceChange = (data.last ?? 0) - (data.first ?? 0)
        lineColor = priceChange > 0 ? Color.theme.green : Color.theme.red
        
    }
    
    var body: some View {
        Chart {
            ForEach(Array(data.enumerated()), id:\.element) { index, element in
                LineMark(x: .value("Index", index),
                         y: .value("Price", element))
            }
            .shadow(color: lineColor, radius: 10, x: 0.0, y: 10)
            .shadow(color: lineColor.opacity(0.2), radius: 10, x: 0.0, y: 20)
            .shadow(color: lineColor.opacity(0.1), radius: 10, x: 0.0, y: 30)
        }
        .chartYScale(domain: [(data.min()) ?? 0, data.max() ?? 0])
        .chartXAxis {
            AxisMarks { _ in
                // No labels are displayed
            }
        }
        .chartYAxis {
            AxisMarks(format: Decimal.FormatStyle.Currency(code: "USD"))
        }
        .foregroundStyle(lineColor)

    }
}



struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(coin: dev.coin)
    }
}
