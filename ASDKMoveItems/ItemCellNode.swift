//
//  ItemCellNode.swift
//  ASDKMoveItems
//
//  Created by Leo Tumwattana on 4/1/2017.
//  Copyright © 2017 Stay Sorted Inc. All rights reserved.
//

import AsyncDisplayKit

class ItemCellNode: ASCellNode {
    
    var title: String = "" {
        didSet {
            guard title != oldValue else { return }
            titleNode.attributedText = NSAttributedString(
                string: title,
                attributes: [
                    NSForegroundColorAttributeName: UIColor.white,
                    NSFontAttributeName: UIFont.boldSystemFont(ofSize: 15)
                ])
            setNeedsLayout()
        }
    }
    
    lazy var titleNode: ASTextNode = {
        let node = ASTextNode()
        return node
    }()
    
    override func didLoad() {
        super.didLoad()
        backgroundColor = .purple
        automaticallyManagesSubnodes = true
    }
    
    override func layoutSpecThatFits(_ constrainedSize: ASSizeRange) -> ASLayoutSpec {
        return ASInsetLayoutSpec(
            insets: UIEdgeInsets.init(top: 8, left: 8, bottom: 8, right: 8),
            child: titleNode)
    }
    
    func configure(title: String) {
        self.title = title
    }
    
}
