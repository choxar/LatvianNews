//
//  WebViewController.swift
//  AppleNewsFeed
//
//  Created by elina.zambere on 12/02/2021.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var webView: WKWebView!
    
    var urlString = String()
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "WebKit"
        
        guard let url = URL(string: urlString) else {return }
        
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
        
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print("Start nav")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print("nav stopped")
    }
    
}
