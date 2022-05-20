import UIKit

class AvatarView:UIView{
    
    @IBOutlet weak var imageView:UIImageView!
    
    @IBAction func buttonDidTap(){
        imageView.backgroundColor = colors[currentColorIndex]
        currentColorIndex = (currentColorIndex + 1) % colors.count
        
    }
    
    private let colors:[UIColor] = [.red, .cyan, .green]
    private var currentColorIndex:Int = .zero
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        imageView.layer.cornerRadius = imageView.frame.width / 2
        
//         imageView?.clipsToBounds = true
//         imageView?.layer.borderWidth = 2
//         imageView?.layer.borderColor = UIColor.white.cgColor
             
        
    }

    private func commonInit(){
        guard let view = loadNib() else { return }
        view.frame = self.bounds
        addSubview(view)
    }
    
    func loadNib() -> UIView? {
        let nib = UINib(nibName: "AvatarView", bundle: nil)
        let view = nib.instantiate(withOwner: self).first as? UIView
        return view
        
    }
    
}
