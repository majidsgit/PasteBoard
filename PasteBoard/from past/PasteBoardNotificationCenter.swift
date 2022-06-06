//
//  PasteBoardNotificationCenter.swift
//  PasteBoard
//
//  Created by developer on 6/3/22.
//

import AppKit

class PasteBoardNotificationCenter: ObservableObject {

    // MARK: - PROPERTIES
    static let sharedInstance = PasteBoardNotificationCenter()
//    @Published var pasteboardItems = [PasteboardItemModel]()
    
    
    
    
    // MARK: - FUNCTIONS
    @objc func onPasteboardChanged(_ notification: Notification) {
        guard let pb = notification.object as? NSPasteboard else { return }
        guard let items = pb.pasteboardItems else { return }
        
        guard let item = items.first else { return }
        guard let itemType = item.types.first else { return }
        guard let stringValue = item.string(forType: .string) else { return }
        
//        let current = PasteboardItemModel(stringValue: stringValue, type: itemType, pasteboardItem: item, date: Date())
//        
//        pasteboardItems.append(current)
    }
}
