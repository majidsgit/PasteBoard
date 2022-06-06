//
//  BoardView.swift
//  PasteBoard
//
//  Created by developer on 6/6/22.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        ZStack(alignment: .trailing) {
            RoundedRectangle(cornerRadius: 60)
                .foregroundColor(.contentBG)
            
            Rectangle()
                .frame(width: 120)
                .foregroundColor(.contentBG)
        }
        .background(
            Color.background
                .ignoresSafeArea()
        )
    }
}
