/*
 * VideoDetailViewController
 * This class  is used as custom loader of UIView
 * @category   Entertainment
 * @package    com.ssowri1.HOOQ-Task-Sowrirajan
 * @version    1.0
 * @author     ssowri1@gmail.com
 */
import UIKit
import WebKit
class Loader: UIView {
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var progressBar: UIView!
       
    // Programatic purposs
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    // Storyboard/Xib purposs
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        let bundle = Bundle(for: Loader.self)
        bundle.loadNibNamed("Loader", owner: self, options: nil)
        contentView.frame = CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height)
        addSubview(contentView)
    }
    func startAnimating() {
        let webview = WKWebView()
        webview.frame  = CGRect(x: 0, y: 0, width: progressBar.frame.size.width, height: progressBar.frame.size.height)
        webview.load(URLRequest(url: Bundle.main.url(forResource: "index", withExtension:"html")! as URL) as URLRequest)
        progressBar.addSubview(webview)
    }
}
