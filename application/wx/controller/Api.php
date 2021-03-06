<?php
// +----------------------------------------------------------------------
// | Minishop [ Easy to handle for Micro businesses ]
// +----------------------------------------------------------------------
// | Copyright (c) 2016 http://www.qasl.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: vaey
// +----------------------------------------------------------------------

namespace app\wx\controller;

use think\Controller;
use think\Request;
use think\Db;


/**
 * 微信端首页控制器
 * @author vaey
 */
class Api extends Base
{
    protected $appid 		= "";
    protected $secret 	    = "";
    protected $token 		= "";
 

    protected function setParmeter(){
        $this->appid      = config('wechat_appid');
        $this->secret     = config('wechat_appsecret');
        $this->token      = config('wechat_token');
    }

    public function index()
    {
        //初始化配置信息
        $this->setParmeter();
    	//微信服务器发送的随机字符串
    	$echoStr = input('get.echostr');
        if($this->checkSignature()){ //验证通过
        	if($echoStr){  //验证消息
        		echo $echoStr;
        		exit;
        	}else{      //客户请求
        		$this->responseMsg();
        	}
            //自定义菜单设置
            $this->setMenu();

        }else{ //验证未通过，程序退出执行
        	exit(0);
        }
    }



    /**
     * 校验微信是否是微信端
     * @author vaey
     * @return [type] [description]
     */
    private function checkSignature()
	{
        if (!($this->token)) {
            echo "token必填";
            exit(0);
        }
        $signature = input('get.signature');
        $timestamp = input('get.timestamp');
        $nonce     = input('get.nonce');
		$token = $this->token;
		$tmpArr = array($token, $timestamp, $nonce);
        // 字典排序
		sort($tmpArr, SORT_STRING);
		$tmpStr = implode( $tmpArr );
		$tmpStr = sha1( $tmpStr );
		if( $tmpStr == $signature ){
			return true;
		}else{
			return false;
		}
	}


    /**
     * 模拟提交数据，获得返回值
     * @author vaey
     * @param  [type] $url  [description]
     * @param  [type] $data [description]
     * @return [type]       [description]
     */
    private function https_request($url,$data = null)
    {
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, FALSE);
        curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, FALSE);
        if (!empty($data)){
            curl_setopt($curl, CURLOPT_POST, 1);
            curl_setopt($curl, CURLOPT_POSTFIELDS, $data);
        }
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        $output = curl_exec($curl);
        curl_close($curl);
        return $output;
    }

    /**
     * 自定义菜单
     */
    private function setMenu()
    {
        //获取access_token
        $access_token = getAccessToken($this->appid,$this->secret); 
        //定义菜单
        $data = Db::name('WxMenu')->select();
        $tree = list_to_tree($data,'id','parent');
        //解析菜单
        $menu = tree_to_json_menu($tree);
        //将菜单发送给微信服务器
        $url = "https://api.weixin.qq.com/cgi-bin/menu/create?access_token=".$access_token;
        $result = https_request($url, $menu);
    }


    //接受用户请求
    private function responseMsg(){
        //获取返回的post数据包
        $postStr = $GLOBALS["HTTP_RAW_POST_DATA"];
        if (!empty($postStr)){
                libxml_disable_entity_loader(true);
                $postObj = simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
                $fromUsername = $postObj->FromUserName;
                $toUsername = $postObj->ToUserName;
                $msgType = $postObj->MsgType;
                $eventKey = $postObj->EventKey;
                $keyword = trim($postObj->Content);
                $time = time();

                $textTpl = "<xml>
                            <ToUserName><![CDATA[%s]]></ToUserName>
                            <FromUserName><![CDATA[%s]]></FromUserName>
                            <CreateTime>%s</CreateTime>
                            <MsgType><![CDATA[%s]]></MsgType>
                            <Content><![CDATA[%s]]></Content>
                            <FuncFlag>0</FuncFlag>
                            </xml>";
                //事件消息
                if($msgType=="event"){
                    if($postObj->Event=="subscribe"){
                        $msgType = "text";
                        $msg = Db::name('WxReply')->where('type',1)->value('msg');
                        if($msg){
                            $contentStr = $msg;
                        }else{
                            $contentStr = "欢迎您关注此公众号！";
                        }
                        $resultStr = sprintf($textTpl, $fromUsername, $toUsername, $time, $msgType, $contentStr);
                        echo $resultStr;
                    }elseif($postObj->Event=="CLICK"){
                        $msg = Db::name('WxMenu')->where('key',(string)$eventKey)->value('msg');
                        $msgType = "text";
                        $contentStr = $msg;
                        $resultStr = sprintf($textTpl, $fromUsername, $toUsername, $time, $msgType, $contentStr);
                        echo $resultStr;
                    }
                }             
                elseif($msgType=="text")
                {
                    //是否设置关键词回复
                    $data= Db::name('WxReply')->where('type',3)->select();
                    $reply = "";
                    if($data){
                        foreach ($data as $key => $value) {
                            if($value['key']==$keyword){
                                $reply = $value['msg'];
                                break ;
                            }
                        }
                    }else{
                        $reply = Db::name('WxReply')->where('type',2)->value('msg');
                        if(empty($reply)){
                            $reply = "";
                        }
                    }
                    if($reply!=""){
                        $data = $reply;
                        $msgType = "text";
                        $contentStr = $data;
                        $resultStr = sprintf($textTpl, $fromUsername, $toUsername, $time, $msgType, $contentStr);
                        echo $resultStr;
                    }
                        
                }else{
                    echo "Input something...";
                }

        }else{
            echo "something wrong...";
        }
    }





}
