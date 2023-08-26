//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class StoryViewController: UIViewController {
    
    var viewModel = StoryViewModel()
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var choice: Int = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = viewModel.stories[0].title
        choice1Button.setTitle(viewModel.stories[0].choice1, for: .normal)
        choice2Button.setTitle(viewModel.stories[0].choice2, for: .normal)
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        choice = sender.tag
        updateUI()
    }
    
    private func updateUI() {
        viewModel.updateStoryCounter(choice: choice)
        storyLabel.text = viewModel.stories[viewModel.storyCounter].title
        choice1Button.setTitle(viewModel.stories[viewModel.storyCounter].choice1, for: .normal)
        choice2Button.setTitle(viewModel.stories[viewModel.storyCounter].choice2, for: .normal)
    }
}

