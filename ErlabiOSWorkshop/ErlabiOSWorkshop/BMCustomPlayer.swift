//
//  BMCustomPlayer.swift
//  ErlabiOSWorkshop
//
//  Created by Hakan UNAL on 2.03.2021.
//

import UIKit
import BMPlayer

class BMCustomPlayer: BMPlayer {
    override func storyBoardCustomControl() -> BMPlayerControlView? {
        return BMPlayerCustomControlView()
    }
}
