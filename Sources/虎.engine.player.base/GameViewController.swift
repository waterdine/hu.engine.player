//
//  GameViewController.swift
//  虎_engine_player_base iOS
//
//  Created by ito.antonia on 11/02/2021.
//

#if !os(macOS) && !os(tvOS)
import UIKit
import SpriteKit
import 虎_engine_base

class GameViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
#endif
