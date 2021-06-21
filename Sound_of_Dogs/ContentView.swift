//
//  ContentView.swift
//  Sound_of_Dogs
//
//  Created by 宮川卓也 on 2021/06/21.
//

import SwiftUI

struct ContentView: View {
    //音を鳴らすためのSoundPlayerクラスのインスタンス生成
    let soundPlayer = SoundPlayer()
    
    var body: some View {
        ZStack { //背景画像ようにZStack
            Image("back")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            VStack{//３行で処理したい
                //水平にレイアウト
                HStack{  //1行目
                    //dog1
                    Button(action:{
                        //ボタンタップしたときのアクション
                        //定数定義した中のdog1関数を発火
                        soundPlayer.dog1_Play()
                    }){
                        Image("dog1")
                            //ボタンの画像がカラー画像になるように指定している
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:190,height:190) //フレームサイズを指定
                    }  //dog1ここまで
                    
                    //dog2
                    Button(action:{
                        soundPlayer.dog2_Play()
                    }){
                        Image("dog2")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:180,height:190) //フレームサイズを指定
                    }  //dog2ここまで
                }//HStackここで終わり
                
                HStack{  //2行目
                    Button(action:{//dog3
                        soundPlayer.dog3_Play()
                    }){
                        Image("dog3")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:190,height:190)
                    }  //dog3ここまで
                    
                    //dog4
                    Button(action:{
                        soundPlayer.dog4_Play()
                    }){
                        Image("dog4")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:190,height:190)
                    }  //dog4ここまで
                }//HStack2ここで終わり
                
                HStack{  //3行目
                    Button(action:{//dog5
                        soundPlayer.dog5_Play()
                    }){
                        Image("dog5")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:190,height:190)
                    }  //dog5ここまで
                    
                    //dog6
                    Button(action:{
                        soundPlayer.dog6_Play()
                    }){
                        Image("dog6")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width:190,height:190)
                    }  //dog6ここまで
                }//HStack3 ここで終わり
                
                
            }//VStackここまで
        }//ZStackここで終わり
    } //body
} //ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
