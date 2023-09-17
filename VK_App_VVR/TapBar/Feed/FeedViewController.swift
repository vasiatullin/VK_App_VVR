//
//  FeedViewController.swift
//  VK_App_VVR
//
//  Created by vadim vasiatullin on 09.07.2023.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    
    
    @IBOutlet weak var table: UITableView!
    var posts: [Post] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        APIManeger.shared.getPost(id: "posts1", imageID: "1") {res1 in
            self.posts.append(res1!)
            APIManeger.shared.getPost(id: "posts2", imageID: "2") {res2 in
                self.posts.append(res2!)
                APIManeger.shared.getPost(id: "posts3", imageID: "3") {res3 in
                    self.posts.append(res3!)
                    APIManeger.shared.getPost(id: "posts4", imageID: "4") {res4 in
                        self.posts.append(res4!)
                        APIManeger.shared.getPost(id: "posts5", imageID: "5") {res5 in
                            self.posts.append(res5!)
                            DispatchQueue.main.async {
                                self.table.reloadData()
                            }
                        }
                    }
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FeedTableViewCell
        cell.postName.text = posts[indexPath.row].name
        cell.postDate.text = posts[indexPath.row].date
        cell.postText.text = posts[indexPath.row].text
        cell.postImage.image = posts[indexPath.row].image
        
        return cell
    }
    
}
