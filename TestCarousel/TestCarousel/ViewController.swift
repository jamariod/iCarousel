//
//  ViewController.swift
//  TestCarousel
//
//  Created by Jamario Davis on 6/1/20.
//  Copyright © 2020 KAYCAM. All rights reserved.
//

import iCarousel 
import UIKit


class ViewController: UIViewController, iCarouselDataSource {

    let myCarousel: iCarousel = {
        let view = iCarousel()
        view.type = .rotary
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        view.addSubview(myCarousel)
        myCarousel.dataSource = self
        myCarousel.autoscroll = -0.5
        myCarousel.frame = CGRect(x: 0, y: 200, width: view.frame.size.width, height: 400)
    }
    func numberOfItems(in carousel: iCarousel) -> Int {
        return 3
    }
    func carousel(_ carousel: iCarousel, viewForItemAt index: Int, reusing view: UIView?) -> UIView {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width/1.4, height: 300))
        view.backgroundColor = .clear
        let imageview = UIImageView(frame: view.bounds)
        view.addSubview(imageview)
        imageview.contentMode = .scaleAspectFit
        imageview.image = UIImage(named: "pic\(index+1)")
        return view
    }
}

