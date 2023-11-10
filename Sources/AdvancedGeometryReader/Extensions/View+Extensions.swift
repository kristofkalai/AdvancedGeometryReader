//
//  View+Extensions.swift
//
//
//  Created by Kristóf Kálai on 10/11/2023.
//

import SwiftUI

extension View {
    public func geometryReader(proxy: Binding<GeometryProxy?>) -> some View {
        readProxy {
            proxy.wrappedValue = $0
        }
    }
}
