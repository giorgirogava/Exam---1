import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var count:Int = 0
    
    @IBOutlet weak var imageAvatar: UIImageView!
    
    
    @IBAction func didTap(_ sender: Any) {
        
        imageAvatar?.layer.cornerRadius = (imageAvatar?.frame.size.width ?? 0.0) / 2
        imageAvatar?.clipsToBounds = true
        imageAvatar?.layer.borderWidth = 2
        imageAvatar?.layer.borderColor = UIColor.white.cgColor
       
        switch count {
            
        case 0:
            imageAvatar.image = UIImage(named: "Skin")
            count = count + 1
            
        case 1:
            imageAvatar.image = UIImage(named: "Swift")
            count = count + 1
            
        default:
            imageAvatar.image = UIImage(named: "Endurance")
            count = 0
            
        }
        
    }
    
    
    @IBOutlet weak var imageAvatar2: UIImageView!
    

    @IBAction func didTap2(_ sender: Any) {
        
        imageAvatar2?.layer.cornerRadius = (imageAvatar2?.frame.size.width ?? 0.0) / 2
        imageAvatar2?.clipsToBounds = true
        imageAvatar2?.layer.borderWidth = 2
        imageAvatar2?.layer.borderColor = UIColor.white.cgColor
      
        switch count {
     
        case 0:
            imageAvatar2.image = UIImage(named: "skin2")
            count = count + 1
            
        case 1:
            imageAvatar2.image = UIImage(named: "skin3")
            count = count + 1
            
        default:
            imageAvatar2.image = UIImage(named: "skin1Wick")
            count = 0
            
        }
        
    }
    
}
