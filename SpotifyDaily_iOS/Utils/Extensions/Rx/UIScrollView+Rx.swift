//
//  UIScrollView+Rx.swift
//  SpotifyDaily
//
//  Created by Kevin Li on 12/4/19.
//  Copyright © 2019 Kevin Li. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

public extension Reactive where Base: UIScrollView {
    /**
     Shows if the bottom of the UIScrollView is reached.
     - parameter offset: A threshhold indicating the bottom of the UIScrollView.
     - returns: ControlEvent that emits when the bottom of the base UIScrollView is reached.
     */
    func reachedBottom(offset: CGFloat = 500.0) -> ControlEvent<Bool> {
        let source = contentOffset.map { contentOffset -> Bool in
            let visibleHeight = self.base.frame.height - self.base.contentInset.top - self.base.contentInset.bottom
            let y = contentOffset.y + self.base.contentInset.top + self.base.contentInset.bottom
            let threshold = max(offset, self.base.contentSize.height - visibleHeight - offset)
            return y >= threshold
        }
        .distinctUntilChanged()

        return ControlEvent(events: source)
    }
}
