//
//  SidebarView.swift
//  PasteBoard
//
//  Created by developer on 6/6/22.
//

import SwiftUI

struct SidebarView: View {
    
    // MARK: - PROPERTIES
    @Binding var selectedView: String
    @State private var showCloseTitle = false
    
    // MARK: - BODY
    var body: some View {
        
        VStack(alignment: .trailing, spacing: 63) {
            
            closeButtonView()
                
            sideItemsView()
            
            Spacer()
        }
        .frame(width: 218)
    }
    
    
    // MARK: - FUNCTIONS
    
    func closeButtonView() -> some View {
        HStack {
            ZStack(alignment: .center) {
                Circle()
                    .frame(width: 17, height: 17)
                    .foregroundColor(.closeButton)
                    .onTapGesture {
                        
                        // close window, not whole app.
                        // app should go to background.
                    }
                
                if showCloseTitle {
                    Image(systemName: "xmark")
                        .font(.sidebarClose)
                }
            }
            
            Spacer()
        }
        .onHover { isHovered in
            withAnimation(.easeInOut(duration: 0.1)) {
                showCloseTitle.toggle()
            }
        }
        .padding(.all, 16)
    }
    
    
    func sideItemsView() -> some View {
        VStack(alignment: .leading, spacing: 23) {
            itemView(title: "Board", image: "board") {
                selectedView = "board"
            }
            itemView(title: "Settings", image: "settings") {
                selectedView = "settings"
            }
        }
    }
    
    func itemView(title: String, image: String, onSelect: @escaping ()->Void) -> some View {
        HStack(alignment: .center, spacing: 0) {
            
            RoundedRectangle(cornerRadius: 13)
                .frame(width: 13, height: 69)
                .padding(.leading, -10)
                .opacity(selectedView == image ? 1 : 0)
                .padding(.trailing, 36)
            
            Image(image)
                .resizable()
                .renderingMode(.template)
                .frame(width: 42, height: 42)
                .padding(.trailing, 7)
            
            Text(title)
                .font(.sidebarItem)
            
            Spacer()
        }
        .foregroundColor(selectedView == image ? .activeSidebarItem : .inactiveSidebarItem)
        .onTapGesture {
            onSelect()
        }
    }
    
}
