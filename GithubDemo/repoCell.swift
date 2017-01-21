//
//  repoCell.swift
//  GithubDemo
//
//  Created by Huang Edison on 1/19/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class repoCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var starsThumb: UIImageView!
    @IBOutlet weak var forksThumb: UIImageView!
    
    
    var repo: GithubRepo! {
        didSet{
            //print("repoCell did set")
            print(repo)
            if let name = repo.name {
                nameLabel.text = name
            }
            if let owner = repo.ownerHandle {
                ownerLabel.text = "by " + owner
            }
            if let stars = repo.stars {
                starLabel.text = "\(stars)"
            }
            if let fork = repo.forks {
                forkLabel.text = "\(fork)"
            }
            if let description = repo.repoDescription {
                descriptionLabel.text = description
            }
            if let thumbImageUrl = repo.ownerAvatarURL {
                thumbImageView.setImageWith(URL(string: thumbImageUrl)!)
            }
            forksThumb.image = #imageLiteral(resourceName: "fork")
            starsThumb.image = #imageLiteral(resourceName: "star")
        }
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
