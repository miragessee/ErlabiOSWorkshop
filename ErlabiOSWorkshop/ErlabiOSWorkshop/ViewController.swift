//
//  ViewController.swift
//  ErlabiOSWorkshop
//
//  Created by Hakan UNAL on 2.03.2021.
//

import UIKit
import BMPlayer

class ViewController: UIViewController {

    @IBOutlet weak var player: BMCustomPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player.backBlock = { [unowned self] (isFullScreen) in
            if isFullScreen == true {
                return
            }
            let _ = self.navigationController?.popViewController(animated: true)
        }
        
        let asset = BMPlayerResource(url: URL(string: "http://sample.vodobox.com/planete_interdite/planete_interdite_alternate.m3u8")!,
                                     name: "Yasak Gezegen (Planete Interdite) (Forbidden Planet)",
                                     cover: URL(string: "https://erlab.tech/wp-content/uploads/2021/02/ErlabTechnology_lightLogo.png"),
                                     subtitle: URL(string: "http://sample.vodobox.com/planete_interdite/planete_interdite_alternate.m3u8"))
        player.setVideo(resource: asset)
    }


}

