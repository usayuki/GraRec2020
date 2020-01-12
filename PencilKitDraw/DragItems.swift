//
//  Dra.swift
//  PencilKitDraw
//
//  Created by 田中陽子 on 2020/01/11.
//  Copyright © 2020 Apple. All rights reserved.
//

import UIkit

//ドラッグするもの（＝UICollectionViewCellを継承した子クラス）
class DragItems : FaceItemViewController,UIDragInteractionDelegate {
    
    
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
