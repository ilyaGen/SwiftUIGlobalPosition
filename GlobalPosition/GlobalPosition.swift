//
//  GlobalPosition.swift
//  SelectedImagePopover
//
//  Created by Илья Амбражевич on 12.01.2021.
//

import SwiftUI

struct GlobalPosition: ViewModifier {

    var point: CGPoint
    
    func body(content: Content) -> some View {
        GeometryReader { proxy in
            content
                .position(x: proxy.size.width / 2 + (point.x - proxy.frame(in: CoordinateSpace.global).midX),
                          y: proxy.size.height / 2 + (point.y - proxy.frame(in: CoordinateSpace.global).midY))
        }
    }
    
    init(point: CGPoint) {
        self.point = point
    }
}

extension View {
    func globalPosition (_ point: CGPoint) -> some View {
        self.modifier(GlobalPosition(point: point))
    }
}
