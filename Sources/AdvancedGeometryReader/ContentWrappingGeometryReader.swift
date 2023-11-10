//
//  ContentWrappingGeometryReader.swift
//
//
//  Created by Kristóf Kálai on 10/11/2023.
//

import SwiftUI
import SizePreferenceKey

public struct ContentWrappingGeometryReader<Content: View> {
    @State private var size: CGSize?
    @ViewBuilder private let content: (GeometryProxy) -> Content

    public init(@ViewBuilder content: @escaping (GeometryProxy) -> Content) {
        self.content = content
    }
}

extension ContentWrappingGeometryReader {
    public init(@ViewBuilder content: @escaping () -> Content) {
        self.init { _ in content() }
    }

    public init(content: Content) {
        self.init { content }
    }
}

extension ContentWrappingGeometryReader: View {
    public var body: some View {
        GeometryReader {
            content($0)
                .storeSize(in: $size)
        }
        .frame(width: size?.width, height: size?.height)
    }
}
