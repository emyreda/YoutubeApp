//
//  VideoModel.swift
//  YouTubeApp
//
//  Created by Mac on 7/4/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
class VideoModel: NSObject {
    
    
    
    
   let id =  "PLMRqhzcHGw1Z3CAIFp8_a5VyAeJstYvH9"
   let ApiKey = "AIzaSyBTE2ADYYul2iN31hUlAgfl7nfmljOxe7U"
   let url = "https://www.googleapis.com/youtube/v3/playlistItems"
    
    
    func getFeedVideo(){
        
        // Fetch video dynamically through the youtube data API (synchronous downloading )
        // this make application more synchronous to prevent frozen app
        
      
        
        
        Alamofire.request( url ,  method: .get , parameters:  ["part":"snippet" , "playlistId": id , "key": ApiKey ], encoding: JSONEncoding.default, headers: nil).responseJSON{ (response) -> Void in
            
            if let JSON = response.result.value as? [String:Any]  {//as? [String:Any] {
                
                for video in JSON["items"] as! NSArray {
                    
                    print(video)
                
                }
                
             print("json \(JSON)")
           }
            
            
            
        }
 
        
        
    }//End function getFeedVideo
    
    
    
    func getVideo()-> [video]{
        
        var  videos = [video]()
        
        //video1
        //make an object
        let video1 = video()
        
        //Assign properties
        video1.videoId = "ojbb6nGvIi8"
        video1.videoTitle = "How To Make an App - Ep 1 - Tools and Materials (Xcode 7, iOS 9)"
        
        
        video1.videoDes = "Lesson 1: Tools and Materials This lesson is an orientation of what you need to start making apps  and the tools and resources that Apple provides. This video series uses the latest and greatest from Apple (Xcode 7, Swift 2, iOS 9) and will teach a beginner with no programming experience how to make iPhone apps. I'm creating these videos with the assumption that the student has no prior knowledge and is starting from scratch."
        
        
        
        //Append it into array video
        
        videos.append(video1)
        
        
        //video2
        
        //make an object
        let video2 = video()
        
        //Assign properties
        video2.videoId = "Oeb4VtuCc8c"
        video2.videoTitle = "How To Make an App - Ep 2 - Xcode 7 and Playgrounds (Xcode 7, iOS 9)"
        
        
        video2.videoDes = "Lesson 2: Xcode 7 and Playgrounds This lesson will help you get your feet wet with Xcode 7 and experimenting with some basic Swift code. Follow along and if you've never programmed before, you'll see that it's not hard! This video series uses the latest and greatest from Apple (Xcode 7, Swift 2, iOS 9) and will teach a beginner with no programming experience how to make iPhone apps. I'm creating these videos with the assumption that the student has no prior knowledge and is starting from scratch."
        
        
        //Append it into array video
        
        videos.append(video2)
        
        //video3
        
        //make an object
        let video3 = video()
        
        //Assign properties
        video3.videoId = "CYZYcEi8Ll4"
        video3.videoTitle = "How To Make an App - Ep 3 - Xcode 7 Tutorial (Xcode 7, iOS 9)"
        
        
        
        video3.videoDes = "Lesson 3: Xcode 7 Tutorial In this lesson, we walk through the main components and areas of Xcode 7. Take a tour of the app where you'll spend most of your time in! This video series uses the latest and greatest from Apple (Xcode 7, Swift 2, iOS 9) and will teach a beginner with no programming experience how to make iPhone apps. I'm creating these videos with the assumption that the student has no prior knowledge and is starting from scratch."
        
        
        //Append it into array video
        
        videos.append(video3)
        
        
        //video4
        
        //make an object
        let video4 = video()
        
        //Assign properties
        video4.videoId = "N9IoWM9pcOg"
        video4.videoTitle = "How To Make an App - Ep 4 - App Anatomy (Xcode 7, iOS 9)"
        
        
        video4.videoDes = "Lesson 4: App Anatomy This lesson goes through the common components of all iPhone apps.This video series uses the latest and greatest from Apple (Xcode 7, Swift 2, iOS 9) and will teach a beginner with no programming experience how to make iPhone apps. I'm creating these videos with the assumption that the student has no prior knowledge and is starting from scratch."
        
        
        //Append it into array video
        
        videos.append(video4)
        
        
        //video5
        
        //make an object
        let video5 = video()
        
        //Assign properties
        video5.videoId = "wkVZuNQyJzA"
        video5.videoTitle = "How To Make an App - Ep 5 - Your First Swift App (Xcode 7, iOS 9)"
        
        
        
        video5.videoDes = "Lesson 5: Your First Swift App Go through the files in an Xcode 7 project and build your first Swift app! This video series uses the latest and greatest from Apple (Xcode 7, Swift 2, iOS 9) and will teach a beginner with no programming experience how to make iPhone apps. I'm creating these videos with the assumption that the student has no prior knowledge and is starting from scratch."
        
        
        //Append it into array video
        
        videos.append(video5)
        
        return videos
    }
    
}
