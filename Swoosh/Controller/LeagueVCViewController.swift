//
//  LeagueVCViewController.swift
//  Swoosh
//
//  Created by Isa on 2020/5/9.
//  Copyright © 2020 QingRong. All rights reserved.
//

import UIKit

class LeagueVCViewController: UIViewController {

    var player:Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextButton.isEnabled = false
        player = Player()
    }
    
    @IBOutlet weak var nextButton: BorderButton!
    
    @IBAction func onMensTapped(_ sender: Any) {
        enableNextAction(desiredLeague: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        enableNextAction(desiredLeague: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        enableNextAction(desiredLeague: "coed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    func enableNextAction(desiredLeague: String){
        player.desiredLeague = desiredLeague
        nextButton.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
