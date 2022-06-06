//
//  MasterItemView.swift
//  PasteBoard
//
//  Created by developer on 6/3/22.
//

import SwiftUI

struct MasterItemView: View {
    
    // MARK: - PROPERTIES
//    let item: PasteboardItemModel
    
    
    
    // MARK: - VIEWS
    var body: some View {
        
        EmptyView()
    }
    
    // MARK: - FUNCTIONS
    
//    func itemType() -> NSPasteboard.PasteboardType {
//        if let urlString = item.pasteboardItem.string(forType: .fileURL) {
//            if let url = URL(string: urlString) {
//                // url.scheme
//                // url.pathExtension
//                if isImage(url: url) {
//                    return .png
//                }
//                if isVideo(url: url) {
//                    return .mp4
//                }
//                if isWebURL(url: url) {
//                    return .URL
//                }
//            }
//        } else {
//            return .string
//        }
//
//        return .string
//    }
//
//    func isImage(url: URL) -> Bool {
//        if ImageFileExtension.allCases.contains(where: { imageFileExtension in
//            imageFileExtension.rawValue == url.pathExtension
//        }) {
//            return true
//        }
//
//        return false
//    }
//
//    func isVideo(url: URL) -> Bool {
//        if VideoFileExtension.allCases.contains(where: { imageFileExtension in
//            imageFileExtension.rawValue == url.pathExtension
//        }) {
//            return true
//        }
//
//        return false
//    }
//
//    func isWebURL(url: URL) -> Bool {
//        if url.scheme != "file" {
//            return !isImage(url: url)
//        }
//        return false
//    }
//
//    func getImageModelItem() -> ImageItemModel? {
//        if let urlString = item.pasteboardItem.string(forType: .fileURL) {
//            if let url = URL(string: urlString) {
//                return ImageItemModel(title: url.lastPathComponent, fileExtension: .init(rawValue: url.pathExtension) ?? .png, url: url, date: Date())
//            }
//        }
//        return nil
//    }
}
