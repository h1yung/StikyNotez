//
//  ViewController.swift
//  StikyNotez
//
//  Created by Hyeong Kyun Park on 12/25/19.
//  Copyright © 2019 fifadaniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageViewList: [UITextView] = []

    @IBOutlet weak var TopLabel: UILabel!

    @IBAction func delButton(_ sender: UIButton) {
        print("hi")
        let alert = UIAlertController(title: "Delete All", message: "Are you sure?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title:"Cancel", style: .cancel, handler:nil))
        alert.addAction(UIAlertAction(title:"Confirm", style: .default, handler: {(alertAction) in
            
            for x in self.imageViewList {
                UIView.animate(withDuration: 0.3, animations: {
                    x.alpha = 0.0
                })
            }
            self.imageViewList = []
            var numOfNotes: Int = self.imageViewList.count
            self.TopLabel.text = "StikyNotez #: \(numOfNotes)"
            
        }))
        
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func addButton(_ sender: Any) {
        let object = UITextView()
        imageViewList.append(object)
        createImageView(object: imageViewList[imageViewList.count - 1])
        var numOfNotes: Int = imageViewList.count
        TopLabel.text = "StikyNotez #: \(numOfNotes)"
    }
    
    @IBAction func addWideButton(_ sender: Any) {
        let object = UITextView()
        imageViewList.append(object)
        createBigImageView(object: imageViewList[imageViewList.count - 1])
        var numOfNotes: Int = imageViewList.count
        TopLabel.text = "StikyNotez #: \(numOfNotes)"
    }
    
    @IBOutlet weak var deleteButton: UIImageView!
    
    @IBOutlet weak var top: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UI Customizations
        top.layer.borderColor = UIColor.black.cgColor
        top.layer.borderWidth = 1.0
        self.navigationController?.toolbar.isHidden=false
        deleteButton.layer.borderWidth = 1.0
        deleteButton.layer.borderColor = UIColor.blue.cgColor
        deleteButton.layer.cornerRadius =
        deleteButton.frame.height / 32.0
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")

        //Uncomment the line below if you want the tap not not interfere and cancel other interactions.
        //tap.cancelsTouchesInView = false

        view.addGestureRecognizer(tap)
    }
    
    @objc func handlePanGesture(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: self.view)
        let statusFrame = UIApplication.shared.statusBarFrame
        var x = CGFloat.zero
        var y = CGFloat.zero
        
        // boundary
        if let senderView = sender.view {
            if senderView.frame.origin.x < 0.0 {
                senderView.frame.origin = CGPoint(x: 0.0, y: senderView.frame.origin.y)
            }
            if senderView.frame.origin.y < statusFrame.height {
                senderView.frame.origin = CGPoint(x: senderView.frame.origin.x, y: statusFrame.height)
            }
            if senderView.frame.origin.x + senderView.frame.size.width > view.frame.width {
                senderView.frame.origin = CGPoint(x: view.frame.width - senderView.frame.size.width, y: senderView.frame.origin.y)
            }
            if senderView.frame.origin.y + senderView.frame.size.height > view.frame.height {
                senderView.frame.origin = CGPoint(x: senderView.frame.origin.x, y: view.frame.height - senderView.frame.size.height)
            }
            
        }
        
        // position changer
        switch sender.state {
        case .began, .changed:
            
            sender.view!.center = CGPoint(x: sender.view!.center.x + translation.x, y: sender.view!.center.y + translation.y)
            sender.setTranslation(CGPoint.zero, in: view)

            x = sender.location(in: self.view).x
            y = sender.location(in: self.view).y
    
            if (deleteButton.frame.intersects(sender.view!.frame)) {
            UIView.animate(withDuration: 0.3, animations: {
                sender.view!.alpha = 0.3
            })} else {
                sender.view!.alpha = 1.0
                }
        case .ended:
            
            // check if it intersects delete button
            if (deleteButton.frame.intersects(sender.view!.frame)) {
                UIView.animate(withDuration: 0.3, animations: {
                    sender.view!.alpha = 0.0
                })
                // in question
                for x in imageViewList {
                    if (sender.view! == x) {
                        imageViewList.remove(at: imageViewList.firstIndex(of: x)!)
                        TopLabel.text = "StikyNotez #: \(imageViewList.count)"
                    }
                }
            } else {
            }
        default:
            break
        }

    }
    
    func addPanGesture(view: UIView) {
        let pan = UIPanGestureRecognizer(target: self, action: #selector(ViewController.handlePanGesture(sender:)))
        view.addGestureRecognizer(pan)
    }
    
    func createImageView(object: UITextView) {
        view.addSubview(object)
        
        object.contentMode = .scaleAspectFill
        object.translatesAutoresizingMaskIntoConstraints = false
        object.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        object.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        object.heightAnchor.constraint(equalToConstant: 160).isActive = true
        object.widthAnchor.constraint(equalToConstant: 160).isActive = true
        object.clipsToBounds = true
        object.layer.cornerRadius = 20
        object.backgroundColor = UIColor(patternImage: UIImage(named: "sticky2")!)
        
        object.textAlignment = .center
        
        addPanGesture(view: object)
        object.isUserInteractionEnabled = true
    }
    
    func createBigImageView(object: UITextView) {
        view.addSubview(object)
        
        object.contentMode = .scaleAspectFill
        object.translatesAutoresizingMaskIntoConstraints = false
        object.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        object.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        object.heightAnchor.constraint(equalToConstant: 130).isActive = true
        object.widthAnchor.constraint(equalToConstant: 200).isActive = true
        object.clipsToBounds = true
        object.layer.cornerRadius = 38
        object.backgroundColor = UIColor(patternImage: UIImage(named: "notecard")!)
        object.layer.borderColor = UIColor.black.cgColor
        object.layer.borderWidth = 1.0
        
        object.textAlignment = .center
        
        addPanGesture(view: object)
        object.isUserInteractionEnabled = true
    }
    
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}
