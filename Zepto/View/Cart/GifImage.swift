

import SwiftUI
import UIKit

struct GifImage: UIViewRepresentable {
    let name: String
    

    func makeUIView(context: Context) -> UIImageView {
        let imageView = UIImageView()
        imageView.loadGif(name: name)
        return imageView
    }

    func updateUIView(_ uiView: UIImageView, context: Context) {}
    

    
}

extension UIImageView {
    func loadGif(name: String) {
        DispatchQueue.global().async {
            if let path = Bundle.main.path(forResource: name, ofType: "gif"),
               let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
               let source = CGImageSourceCreateWithData(data as CFData, nil) {
                
                var images: [UIImage] = []
                let count = CGImageSourceGetCount(source)
                
                for i in 0..<count {
                    if let cgImage = CGImageSourceCreateImageAtIndex(source, i, nil) {
                        images.append(UIImage(cgImage: cgImage))
                    }
                }
                
                DispatchQueue.main.async {
                    self.animationImages = images
                    self.animationDuration = Double(count) * 0.1
                    self.startAnimating()
                }
            }
        }
        
    }
    
}


#Preview {
    GifImage(name: "order_placed_successfull")
}
