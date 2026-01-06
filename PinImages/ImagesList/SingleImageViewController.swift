//
//  SingleImageViewController.swift
//  PinImages
//

import UIKit

final class SingleImageViewController: UIViewController {
    
    // MARK: - Attributes
    
    var image: UIImage? {
        didSet {
            guard isViewLoaded else { return }
            imageView.image = image
        }
    }
    
    // MARK: - Outlets
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
    }
    
    // MARK: - Actions
    
    @IBAction private func navigationBackButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
}
