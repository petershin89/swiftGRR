//
//  NewsFeedViewController.swift
//  InstaSearchView
//
//  Created by 신 동군 on 2022/09/26.
//

import UIKit

class NewsFeedViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let feedList: [Feed] = Feed.list
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        
//        if let flowlayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
//            flowlayout.estimatedItemSize = .zero
    }
}

extension NewsFeedViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return feedList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as? FeedCell else {
            return UICollectionViewCell()
        }
        
        let feed = feedList[indexPath.item]
        cell.configure(feed)
        return cell
    }
}



//
//extension NewsFeedViewController: UICollectionViewDataSource {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 12
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//
//        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FeedCell", for: indexPath) as? FeedCell else {
//            return UICollectionViewCell()
//        }
//        let imageName = "dgun\(indexPath.item + 1)"
//        cell.configure(imageName)
//        return cell
//    }
//}
//
//extension NewsFeedViewController: UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        let width = collectionView.bounds.width
//        let height = width * 3/4 + 60
//        return CGSize(width: width, height: height)
//    }
//}
