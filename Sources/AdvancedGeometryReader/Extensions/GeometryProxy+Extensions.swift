//
//  GeometryProxy+Extensions.swift
//
//
//  Created by Kristóf Kálai on 10/11/2023.
//

import SwiftUI

extension GeometryProxy {
    public var renderedSize: CGSize {
        frame(in: .global).size
    }
}
