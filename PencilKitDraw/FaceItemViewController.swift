    //
    //  FaceItemViewController.swift
    //  PencilKitDraw
    //
    //  Created by 田中陽子 on 2020/01/02.
    //  Copyright © 2020 Apple. All rights reserved.
    //
    
    import UIKit
    
//    protocol UIDragInteractionDelegate: class {
//
//        func dragInteraction()
//    }
    
    class FaceItemViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{
        
        //        /// Data model for the drawing displayed by this view controller.
        //          var dataModelController: DataModelController!
        
        private let faces = ["face0", "face1", "face2", "face3", "face4", "face5","face6", "face7", "face8", "face9", "face10", "face11","face12", "face13", "face14"]
        
        @IBOutlet weak var collectionView: UICollectionView!
        
        @IBOutlet weak var imageView: UIImageView!
        
        //        @IBOutlet weak var imageView: UIImageView!
        
        //        var dragInteraction : UIDragInteractionDelegate?
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // レイアウトを調整
            let layout = UICollectionViewFlowLayout()
            layout.sectionInset = UIEdgeInsets(top: 15, left: 15, bottom: 15, right: 15)
            collectionView.collectionViewLayout = layout
            
            //ドラッグする
            //            collectionView.delegate = self
            //            var dragInteraction = UIDragInteraction(delegate: self)
            //            UIImageView.addInteraction(dragInteraction)
            //            dragInteraction.isEnabled = true
            //
        }
        //ドラッグのデリゲート
        //        func dragInteraction() {
        //            dragInteraction()
        //        }
        //
        
        //セルの表示数
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return faces.count;
        }
        
        // セル（要素）に表示する内容
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            let cell : UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier:"FaceCell",for: indexPath )
            
            //Tag番号を使ってインスタンスをつくる
            let imageView = cell.contentView.viewWithTag(1) as! UIImageView
            //画像配列の番号で指定された要素の名前の画像をUIimageとする
            let cellImage = UIImage(named: faces[indexPath.row])
            //UIimageをUIimageViewのimageとして設定
            imageView.image = cellImage
            
            cell.backgroundColor = .white
            
            return cell
            
        }
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let horizontalSpace : CGFloat = 20
            let cellSize : CGFloat = self.view.bounds.width / 3 - horizontalSpace
            return CGSize(width: cellSize, height: cellSize)
        }
        
        
    }
    
    
    //    extension FaceItemViewController : UIDragInteractionDelegate{
    //
    //        func dragInteraction(
    //            _ interaction: UIDragInteraction,
    //            itemsForBeginning session: UIDragSession) -> [UIDragItem] {
    //
    //            guard let image = imageView.image else { return [] }
    //
    //            let provider = NSItemProvider(object: image)
    //            let item = UIDragItem(itemProvider: provider)
    //            item.localObject = image
    //            return [item]
    //        }
    
    //    }
    
    
