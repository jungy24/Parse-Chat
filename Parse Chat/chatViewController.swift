//
//  chatViewController.swift
//  Parse Chat
//
//  Created by Arthur on 2017/2/23.
//  Copyright © 2017年 Jungyoon Yu. All rights reserved.
//

import UIKit
import Parse

class chatViewController: UIViewController {

    @IBOutlet var arthurMesg: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMesg(_ sender: Any)
    {
        var msg = PFObject(className:"Message")
        var buffer = ""
        if let buffer = arthurMesg.text
        {
            msg["text"] = arthurMesg.text
        }
        msg.saveInBackground { (result, error) in
            if let error = error
            {
                print(error.localizedDescription)
            }
            else
            {
                print(msg["text"])
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
