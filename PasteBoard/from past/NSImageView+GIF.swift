//
//  iOSDevCenters+GIF.swift
//  GIF-Swift
//
//  Created by iOSDevCenters on 11/12/15.
//  Copyright © 2016 iOSDevCenters. All rights reserved.
//

import AppKit

extension NSImageView {
    static func gifImageFrom(url: URL) -> NSImageView? {
        let imageView = NSImageView()
        imageView.animates = true
        if let data = try? Data(contentsOf: url) {
            imageView.image = NSImage(data: data)
            return imageView
        }
        return nil
    }
}
