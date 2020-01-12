//
//  FaceItemCollectionViewCell.swift
//  PencilKitDraw
//
//  Created by 田中陽子 on 2020/01/12.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIKit

//ドラッグするもの（＝UICollectionViewCellを継承した子クラス）
class FaceItemCollectionViewCell: UICollectionViewCell,UIDragInteractionDelegate {
    
    @IBOutlet weak var itemImage: UIImageView!
    
//    let dragDelegate: UIDragInteractionDelegate = ...
//    let dragInteraction = UIDragInteraction(delegate: dragDelegate)
//    dragInteraction.isEnabled = true    // iPhoneの場合はデフォルトがfalseになっている
//    view.addInteraction(dragInteraction)
    
    func dragInteraction(
      _ interaction: UIDragInteraction,
      itemsForBeginning session: UIDragSession) -> [UIDragItem] {

      guard let image = imageView.image else { return [] }

      let provider = NSItemProvider(object: image)
      let item = UIDragItem(itemProvider: provider)
      item.localObject = image
      return [item]
    }
    
}
