//
//  ViewController.swift
//  my3DViewer
//
//  Created by Liana Harris on 4/14/22.
//

import UIKit
import SceneKit

class ViewController: UIViewController {

    @IBOutlet weak var my3DViewer: SCNView!
    var scnScene: SCNScene!
    var cameraNode: SCNNode!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 1 set up view
        my3DViewer.allowsCameraControl = true
        my3DViewer.autoenablesDefaultLighting = true
        
        // 2 set up scene
        scnScene = SCNScene()
        scnScene.background.contents = "Background_Diffuse.png"
        my3DViewer.scene = scnScene
        
        // 3 setup camera
        cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 2)
        scnScene?.rootNode.addChildNode(cameraNode)
        
        // 4 construct your 3d world
        var geometry = SCNGeometry()
        //geometry = SCNBox(width: 1.0, height: 1.0, length: 1.0, chamferRadius: 0.05)
        geometry = SCNSphere(radius: 0.5)
        geometry.firstMaterial!.diffuse.contents = "world2700x1350.jpg"
        
        let mySCNNode = SCNNode(geometry: geometry)
        mySCNNode.position = SCNVector3(x:0,y:0,z:0)
        
        scnScene?.rootNode.addChildNode(mySCNNode)
    }


    
}

