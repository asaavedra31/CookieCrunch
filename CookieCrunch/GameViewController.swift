//
//  GameViewController.swift
//  CookieCrunch
//
//  Created by Armando Saavedra on 8/19/16.
//  Copyright (c) 2016 31Arms. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {

    var scene : GameScene!
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return [UIInterfaceOrientationMask.Portrait, UIInterfaceOrientationMask.PortraitUpsideDown]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let skView = view as! SKView
        skView.multipleTouchEnabled = false
        
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
        
    }
}
