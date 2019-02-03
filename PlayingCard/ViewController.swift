//
//  ViewController.swift
//  PlayingCard
//
//  Created by spongebink on 2019/1/29.
//  Copyright © 2019 spongebink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var deck = PlayingCardDeck()
    
    
//    @IBOutlet weak var playingCardView: PlayingCardView! {
//        didSet {
//            let swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextCard))
//            swipe.direction = [.left, .right]
//            playingCardView.addGestureRecognizer(swipe)
//            let pich = UIPinchGestureRecognizer(target: playingCardView, action: #selector(PlayingCardView.adjustfFaceCardScale(byHandelingGestureReconizerBy:)))
//            playingCardView.addGestureRecognizer(pich)
//        }
//    }
//
//    @IBAction func flipCard(_ sender: UITapGestureRecognizer) {
//        switch sender.state {
//        case .ended:
//            playingCardView.isFaceup = !playingCardView.isFaceup
//        default: break
//        }
//    }
//
//    @objc func nextCard() {
//        if let card = deck.draw() {
//            playingCardView.rank = card.rank.order
//            playingCardView.suit = card.suit.rawValue
//        }
//    }
    
    
    @IBOutlet private var cardViews: [PlayingCardView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

//        for _ in 1...10 {
//            if let card = deck.draw() {
//                print("\(card)")
//            }
//        }
        var cards = [PlayingCard]()
        for _ in 1...((cardViews.count + 1) / 2) {
            let card = deck.draw()!
            cards += [card, card]
        }
        for cardView in cardViews {
            cardView.isFaceup = true
            let card = cards.remove(at: cards.count.arc4random)
            cardView.rank = card.rank.order
            cardView.suit = card.suit.rawValue
        }
    }
}

