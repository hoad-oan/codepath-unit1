//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Hoa Doan on 9/22/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]! // why is it a : and not a =???
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sypnosisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        sypnosisLabel.text = movie["overview"] as? String
        sypnosisLabel.sizeToFit()
        
        // TODO: Getting the images
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af.setImage(withURL: posterUrl!)
        
        // getting the backdrop
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdropView.af.setImage(withURL: backdropUrl!)

        // Do any additional setup after loading the view.
    }
    
    
}
