

import Foundation
import UIKit

class NavigationManager:ObservableObject
{
    @Published var posts = [Post]()
    func fetchData()
    {
       if let url = URL(string:"https://hn.algolia.com/api/v1/search?tags=front_page")
       {
        let session = URLSession(configuration: .default)
        let tast = session.dataTask(with: url) { (data, response, error) in
            if error == nil
            {
                let decoder = JSONDecoder()
                if let safedata = data
                {
                    do{
                        let result = try decoder.decode(PostData.self, from: safedata)
                        DispatchQueue.main.async {
                            self.posts = result.hits
                        }
                     
                    }
                    catch{
                        print(error)
                    }
                    
                }
                
            }
        }
        tast.resume()
        }
        
    }
}
