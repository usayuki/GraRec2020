//
//  FaceItemCollectionViewCell.swift
//  PencilKitDraw
//
//  Created by 田中陽子 on 2020/01/12.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

//ドラッグするもの（＝UICollectionViewCellを継承した子クラス）
//class FaceItemCollectionViewCell: UICollectionViewCell,UIDragInteractionDelegate {
//func dragInteraction(_ interaction: UIDragInteraction, itemsForBeginning session: UIDragSession) -> [UIDragItem] {
////    <#code#>
//}

//
//    @IBOutlet weak var itemImage: UIImageView!
////
////
//    let dragInteraction = UIDragInteraction(delegate: self)
//    itemImage.addInteraction(dragInteraction)
//
//    //    let dragDelegate: UIDragInteractionDelegate = ...
//    //    let dragInteraction = UIDragInteraction(delegate: dragDelegate)
//    //    dragInteraction.isEnabled = true    // iPhoneの場合はデフォルトがfalseになっている
//    //    view.addInteraction(dragInteraction)
//
//
//    func dragInteraction(
//        _ interaction: UIDragInteraction,
//        itemsForBeginning session: UIDragSession) -> [UIDragItem] {
//
//        guard let image = imageView.image else { return [] }
//
//
//
//        let provider = NSItemProvider(object: image)
//        let item = UIDragItem(itemProvider: provider)
//        item.localObject = image
//        return [item]
//    }
    
//}
