
import SwiftUI


struct ContentView: View {
    @ObservedObject  var networkManager = NavigationManager()
    
    var body: some View {
        NavigationView
            {
              
   List(networkManager.posts){ post in
                HStack
                      {
                 Text(String(post.points))
                Text(post.title)
               
                        }
                        
                        
            }
   .navigationBarTitle("hackernews")
        }
        .onAppear{
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//struct Post:Identifiable
//{
//    let id:String
//    let title:String
//    
//}
//let posts = [Post(id: "1", title: "hello"),Post(id: "2", title: "hii")]
