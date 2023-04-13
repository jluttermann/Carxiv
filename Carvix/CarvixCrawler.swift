//
//  CarvixCrawler.swift
//  Carvix
//
//  Created by Jan Luttermann on 13.04.23.
//

import Foundation

class Crawler {
    var base_url: String = "https://arxiv.org"
    var add_url: String = "/list/cs."
    var part_url: String = "/recent"
    
    func crawl_main(){
        
    }
    
    func core(page url: URL){
        let task = URLSession.shared.dataTask(with: url) { data, response, error in defer {}
            guard
                let data = data,
                error == nil,
                let document = String(data: data, encoding: .utf8) else {return()}
            self.parse(document: document, url: url)
            
        }
    }
    
    func parse(document: String, url: URL){
        return()
    }
}
