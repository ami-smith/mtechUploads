//
//  ViewController.swift
//  PokemonApp
//
//  Created by Ami Smith on 9/21/22.
//

import UIKit
import RyansPokemonPackage

class ViewController: UIViewController {

    @IBOutlet var PikachuLabel: UILabel!
    @IBOutlet var IChooseYou: UIButton!
    @IBOutlet var typesStackView: UIStackView!
    @IBOutlet var PokemonImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        IChooseYou.layer.cornerRadius = IChooseYou.frame.height / 2
        
        
    }

    @IBAction func NewPokemonButtonTapped(_ sender: Any) {
        Task {
            let pokemon = await getRandomPokemon(gen: .original)
            
            PikachuLabel.text = pokemon.name
            PokemonImage.setPokemon(pokemon: pokemon)
            //create a label for each type that the pokemon has. Add those labels to the stack view
            for view in typesStackView.arrangedSubviews {
                view.removeFromSuperview()
            }
            for pType in pokemon.types {
                let label = UILabel()
                label.text = pType
                label.textColor = .blue
                label.textAlignment = .center
                typesStackView.addArrangedSubview(label)
            }
                    
                    
    }
    }
}

