//
//  DragButton.swift
//  DragButton
//
//  Created by RAVI on 10/09/18.
//  Copyright © 2018 ravi. All rights reserved.
//

import UIKit

public class DragButton: UIButton {

    // MARK:- Initializers
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    // MARK:- Helper Methods
    func setup() {
        backgroundColor = UIColor.red
        layer.cornerRadius = self.frame.width / 2
        layer.masksToBounds = true

        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(btnLaunchDragAction))
        addGestureRecognizer(panGesture)

    }

    @objc func btnLaunchDragAction(recognizer: UIPanGestureRecognizer) {
        if (recognizer.state != UIGestureRecognizerState.ended) && (recognizer.state != UIGestureRecognizerState.failed) {
            recognizer.view?.center = recognizer.location(in: recognizer.view?.superview)
        }
    }

}
