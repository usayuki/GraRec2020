    //
    //  FaceItemViewController.swift
    //  PencilKitDraw
    //
    //  Created by 田中陽子 on 2020/01/02.
    //  Copyright © 2020 Apple. All rights reserved.
    //
    
    import UIKit
    
    class FaceItemViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
        
        
        @IBOutlet weak var collectionView: UICollectionView!
        
        private let faces = ["face0", "face1", "face2", "face3", "face4", "face5"]
        
//        var DragItem = DragItem()
        
        //ドラッグするもの（＝UICollectionViewCellを継承した子クラス）
        
//        func dragInteraction(_ interaction: UIDragInteraction, itemsForBeginning session: UIDragSession) -> [UIDragItem] {
//
//            guard let image = faces.image else { return [] }
//
//            let provider = NSItemProvider(object: image)
//            let item = UIDragItem(itemProvider: provider)
//            item.localObject = image
//            return [image]
////
//        }
        
        
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // レイアウトを調整
            let layout = UICollectionViewFlowLayout()
            layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
            collectionView.collectionViewLayout = layout
            
        }
        
        
        //セルの表示数
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return 18
        }
        // セル（要素）に表示する内容
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"FaceCell",for: indexPath )
            
            // Tag番号を使ってインスタンスをつくる
            //            let faceImageView = cell.contentView.viewWithTag(1)  as! UIImageView
            //            let faceImage = UIImage(named: faces[indexPath.row])
            //            faceImageView.image = faceImage
            
            cell.backgroundColor = .red
            
            return cell
            
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let horizontalSpace : CGFloat = 20
            let cellSize : CGFloat = self.view.bounds.width / 3 - horizontalSpace
            return CGSize(width: cellSize, height: cellSize)
        }
        
        
    }
