//
//  ContentView.swift
//  PasteBoard
//
//  Created by developer on 6/6/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @State private var selectedView: String = "board"
    
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            
            SidebarView(selectedView: $selectedView)
            
            if selectedView == "board" {
                
                BoardView()
                    .tag("board")
            }
            else if selectedView == "settings" {
                
                BoardView()
                    .tag("settings")
            }
            
        }
        .ignoresSafeArea()
    }
    
    
    
    // MARK: - FUNCTIONS
    
    
}
