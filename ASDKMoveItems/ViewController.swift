//
//  ViewController.swift
//  ASDKMoveItems
//
//  Created by Leo Tumwattana on 4/1/2017.
//  Copyright © 2017 Stay Sorted Inc. All rights reserved.
//

import UIKit
import AsyncDisplayKit

enum Datastore {
    
    static var titles: [String] = [
        "Item Number 1",
        "Item Number 2",
        "Item Number 3",
        "Item Number 4",
        "Item Number 5",
        "Item Number 6",
        "Item Number 7",
        "Item Number 8",
        "Item Number 9",
        "Item Number 10",
    ]
    
}

class ViewController: ASViewController<ASDisplayNode> {
    
    let tap = UITapGestureRecognizer()
    
    lazy var collectionNode: ASCollectionNode = {
        
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.scrollDirection = .vertical
        
        let node = ASCollectionNode(collectionViewLayout: layout)
        node.dataSource = self
        node.delegate = self
        node.backgroundColor = .black
        return node
        
    }()
    
    init() {
        super.init(node: ASDisplayNode())
        node.backgroundColor = .black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubnode(collectionNode)
        
        tap.addTarget(self, action: #selector(tapped(_:)))
        collectionNode.view.addGestureRecognizer(tap)
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        collectionNode.frame = view.bounds
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    func tapped(_ tap: UITapGestureRecognizer) {
        
        // Update data source
        let item = Datastore.titles.removeFirst()
        Datastore.titles.append(item)
        
        // Update colletionNode
        let at = IndexPath(row: 0, section: 0)
        let to = IndexPath(row: Datastore.titles.count - 1, section: 0)
        
        collectionNode.performBatch(
            animated: true,
            updates: { [weak self] in
                self?.collectionNode.moveItem(at: at, to: to)
            }, completion: nil)
        
    }

}

extension ViewController: ASCollectionDataSource {
    
    func collectionNode(_ collectionNode: ASCollectionNode, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionNode(_ collectionNode: ASCollectionNode, nodeBlockForItemAt indexPath: IndexPath) -> ASCellNodeBlock {
        
        let title = Datastore.titles[indexPath.row]
        
        return {
            let node = ItemCellNode()
            node.configure(title: title)
            return node
        }
        
    }
    
}

extension ViewController: ASCollectionViewDelegateFlowLayout {
    
    func collectionNode(_ collectionNode: ASCollectionNode, constrainedSizeForItemAt indexPath: IndexPath) -> ASSizeRange {
        
        let width = collectionNode.bounds.width
        
        let min = CGSize(width: width, height: 50)
        let max = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        
        return ASSizeRange(min: min, max: max)
        
    }
    
}

