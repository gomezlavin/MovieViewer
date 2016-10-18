//
//  DetailViewController.swift
//  MovieViewer
//
//  Created by SGLMR on 15/10/16.
//  Copyright © 2016 CodePath. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var releaseDateImage: UIImageView!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var infoView: UIView!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width, height: infoView.frame.origin.y + infoView.frame.size.height)

        let title = movie["title"] as! String
        titleLabel.text = title
        
        let overview = movie["overview"] as! String
        overviewLabel.text = overview
        overviewLabel.sizeToFit()
        
        let formatter = DateFormatter()
        formatter.dateStyle = DateFormatter.Style.medium
        
        let releaseDate = movie["release_date"] as! String
        releaseDateLabel.text = releaseDate
        releaseDateImage.image = releaseDateImage.image!.withRenderingMode(.alwaysTemplate)
        releaseDateImage.tintColor = UIColor.red
        releaseDateImage.backgroundColor = .none
        
        let rating = movie["vote_average"]
        ratingLabel.text = String(describing: rating!)
        ratingImage.image = ratingImage.image!.withRenderingMode(.alwaysTemplate)
        ratingImage.tintColor = UIColor.red
        ratingImage.backgroundColor = .none
        
        let baseUrl = "http://image.tmdb.org/t/p/w500"
        if let posterPath = movie["poster_path"] as? String {
            let posterUrl = URL(string: baseUrl + posterPath)
            posterImageView.setImageWith(posterUrl!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
