//
//  ViewController.swift
//  Tairi XCode Assessment
//
//  Created by Tairi on 3/24/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var headerWords: UILabel!
    
    @IBOutlet weak var headerImage: UIImageView!
    var headings: [String] = ["African American History", "Kevin Hart", "Lebron James", "Jay-Z", "Barrack Obama", "Michael Jordan"]
    var images: [UIImage] = [#imageLiteral(resourceName: "bLM"), #imageLiteral(resourceName: "kevHart"), #imageLiteral(resourceName: "lebJames"), #imageLiteral(resourceName: "jayZ"), #imageLiteral(resourceName: "barObama"), #imageLiteral(resourceName: "micJordan")]
    var captions: [String] = ["Black History Month means a lot to me, and since I couldn't honor myself on this project, I shall at least honor five of my brethren.", "Kevin Hart was born July 6, 1979, in Philadelphia, PA and is 41 years old. He currently stands at 5′ 4 as a comic who is usually the receiver of short jokes. He stars in shows like “Die Hart”, “Modern Family”, “Real Husbands of Hollywood”, etc.", "Lebron James was born December 30, 1984, in Akron, OH and is 36 years old. He currently stands at 6′9” as one of the greatest basketball players to ever lace ‘em up. Annually, he makes 39.22 million off of basketball alone. Including endorsements and investments, that number is pushed to around 500 million.", "Shawn Carter was born December 4, 1969, in Brooklyn, NY and is 51 years old. He is currently married to Beyonce Knowles, you might know her. Time and time again, he has pushed the boundaries of what a rapper could do other than just rap. He has his hands in multiple business and even record labels such as Roc Nation & Roc-A-Fella Records.", "Barack Obama was born August 4, 1961, in Honolulu, HI and is 59 years old. He currently stands at 6′1” and is America’s first black president. He served his term from January 20, 2009 to January 20, 2017 with Joe Biden as his vice president.", "Michael Jordan was born February 17, 1963, in Brookly, Ny and is 58 years old. He currently stands at 6′6” as is widely accepted as the greatest basketball player of all-time. Due to not only his Jordan brand, but his legacy, his current net worth is 1.6 billion, and increasing by the day."]
    var position = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPress(_ sender: Any) {
        if(position < images.count){
            header.text = headings[position]
            headerWords.text = captions[position]
            headerImage.image = images[position]
            position += 1
        }
        else{
            position = 0
            
        }

    }
    

}

