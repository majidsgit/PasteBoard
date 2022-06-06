//
//  BoardNotificationCenter.swift
//  PasteBoard
//
//  Created by developer on 6/3/22.
//

import AppKit

class BoardNotificationCenter: ObservableObject {

    // MARK: - PROPERTIES
    static let sharedInstance = BoardNotificationCenter()
    @Published var pasteboardItems = [BoardNotificationItemModel]()
    
    
    
    
    // MARK: - FUNCTIONS
    @objc func onPasteboardChanged(_ notification: Notification) {
        guard let pb = notification.object as? NSPasteboard else { return }
        guard let items = pb.pasteboardItems else { return }
        
        guard let item = items.first else { return }
        guard let itemType = item.types.first else { return }
        guard let stringValue = item.string(forType: .string) else { return }
        
        let current = BoardNotificationItemModel(title: stringValue, type: itemType, item: item, date: Date())
        
        pasteboardItems.append(current)
    }
}
