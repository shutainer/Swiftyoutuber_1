//
//  ViewController.swift
//  Swiftyoutuber_1
//
//  Created by 須藤英隼 on 2020/07/07.
//  Copyright © 2020 Eishun Sudo. All rights reserved.
//

import UIKit
import SegementSlide

class ViewController: SegementSlideDefaultViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        reloadData()
        defaultSelectedIndex = 0
        
        
    }
    
    override func segementSlideHeaderView() -> UIView? {
        let headerView = UIImageView()
        
        headerView.isUserInteractionEnabled = true
        headerView.contentMode = .scaleToFill
        headerView.image = UIImage(named: "header")
        headerView.translatesAutoresizingMaskIntoConstraints = false
        let headerHeight:CGFloat
        if #available(iOS 11.0, *) {
            headerHeight = view.bounds.height/4 + view.safeAreaInsets.top
        }else{
            headerHeight = view.bounds.height/4 + topLayoutGuide.length
        }
        
        headerView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true
        
        return headerView
        
    }
    
    override var titlesInSwitcher: [String] {
        return ["那須川天心", "おもしろ", "犬", "ニュース", "ヒカキン",
        "猫"]
    }
    
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        switch index {
            case 0:
                return Page1ViewController()
            case 1:
                return Page2ViewController()
            case 2:
                return Page3ViewController()
            case 3:
                return Page4ViewController()
            case 4:
                return Page5ViewController()
            case 5:
                return Page6ViewController()
        default:
            return Page1ViewController()
        }
    }
    
    


}

