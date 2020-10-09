//
//  TableViewCell.swift
//  Intro à CoreML
//
//  Created by Rodolphe DUPUY on 09/10/2020.
//  Copyright © 2020 Matthieu PASSEREL. All rights reserved.
//

import UIKit
import Vision

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var confidenceLbl: UILabel!
    
    var resultat: VNClassificationObservation!
    
    func setupCell(_ resultat: VNClassificationObservation) {
        self.resultat = resultat
        nameLbl.text = self.resultat.identifier
        confidenceLbl.text = "OK à \(Int(self.resultat.confidence * 100)) %"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
