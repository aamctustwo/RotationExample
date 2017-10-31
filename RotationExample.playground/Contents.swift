//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    let blueView = UIView()
  
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.text = "Hello World!"
        label.textColor = .white
        
        self.view = view
      
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        view.addConstraints([
            blueView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            blueView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            blueView.widthAnchor.constraint(equalToConstant: 120),
            blueView.heightAnchor.constraint(equalToConstant: 120)
        ])
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        blueView.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        blueView.addConstraints([
            label.centerXAnchor.constraint(equalTo: blueView.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: blueView.centerYAnchor)
        ])
        
        var transform = CATransform3DIdentity
        let angle = CGFloat(45 * (M_PI / 180))
        
        transform.m34 = -1 / 500
        transform = CATransform3DRotate(transform, angle, 0, 1, 0)
        
        blueView.layer.transform = transform
    }
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
