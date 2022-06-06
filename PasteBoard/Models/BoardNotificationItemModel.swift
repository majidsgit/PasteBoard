//
//  BoardNotificationItemModel.swift
//  PasteBoard
//
//  Created by developer on 6/6/22.
//

import AppKit

struct BoardNotificationItemModel: Hashable {
    var id = UUID().uuidString
    var title: String
    var type: NSPasteboard.PasteboardType
    var item: NSPasteboardItem
    var date: Date
}
