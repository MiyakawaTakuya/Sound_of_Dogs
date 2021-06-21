//
//  SoundPlayer.swift
//  Sound_of_Dogs
//
//  Created by 宮川卓也 on 2021/06/21.
//

import UIKit
import AVFoundation //音を扱うためのフレームワーク

class SoundPlayer: NSObject {  //SoundPlayerクラス
    //音源データの読み込み
    //NSDataAseetがAssets内のファイルや画像を管理してくれるクラス
    //取り込んだファイル名を指名し、ファイルの内容を取得する
    //!は強制アンラップを意味する
    let dog1m = NSDataAsset(name:"dog1m")!.data  //letは一度宣言したら変更できない”定数”
    //音源のプレイヤー変数
    //AVAudioPlayerを用いて音を鳴らすインスタンス(実体)変数を用意している.音源ファイルを再生できるようにする機能
    var dog1_Player : AVAudioPlayer!
    
    func dog1_Play(){
        do {
            //音声プレイヤーに音源データを指定   try　でめっソドを呼び出し
            dog1_Player = try AVAudioPlayer(data: dog1m)
            //音源の再生
            dog1_Player.play()
        } catch { //ここにエラーの際の処理を記載する
            print("犬の音声でエラーが発生しました")
        }
    }
    
    
    
}
