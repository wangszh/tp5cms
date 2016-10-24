<?php
// +----------------------------------------------------------------------
// | Minishop [ Easy to handle for Micro businesses ]
// +----------------------------------------------------------------------
// | Copyright (c) 2016 http://www.qasl.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: wangjingjing<1064868847@qq.com> <http://www.ixiaoquan.com>
// +----------------------------------------------------------------------

namespace app\wx\controller;

use think\Db;
use think\Log;

/**
* 微信支付
* @author tangtanglove
*/
class Wxpay extends Base
{

	/**
	* 微信支付
	* @author tangtanglove
	*/
	public function pay()
	{
		$uid = session('wap_user_auth.uid');
		if (empty($uid)) {
			$this->error('未登录！');
		}
		$order_no = input('get.order_no');
		$ordersInfo = Db::name('Orders')->where(['order_no'=>$order_no,'uid'=>$uid])->find();

		if(empty($ordersInfo)){
			$this->error('参数错误');
		}

		// 使用jsapi接口
		import('org.util.pay.WxPayPubHelper.WxPayPubHelper');	
		$jsApi    = new \JsApi_pub();	
		    
		// 通过code获得openid
		if (!isset($_GET['code'])) {
			// 触发微信返回code码
			$enterUrl = config('enter_url').'/wxpay/pay.html';
			$url="https:open.weixin.qq.com/connect/oauth2/authorize?appid=".config('wechat_appid')."&redirect_uri=".$enterUrl."?order_no=".$order_no."&response_type=code&scope=snsapi_base&state=STATE#wechat_redirect";
			Header("Location:$url");
			exit();
		} else {		
			// 获取code码，以获取openid
		    $code    = $_GET['code'];	    
			$jsApi->setCode($code);
			$openid  = $jsApi->getOpenId();
		}				  		
		// 使用统一支付接口
		$unifiedOrder = new \UnifiedOrder_pub();
		$Notify_url   = config('enter_url').'/wxpay/notify_url.html';		
		// 设置统一支付接口参数		
		$unifiedOrder->setParameter("openid",$openid); 			// opid
		$unifiedOrder->setParameter("body",'商品订单号'+$order_no); 		// 商品描术		
		$unifiedOrder->setParameter("out_trade_no",$order_no);  // 商户订单号
		$unifiedOrder->setParameter("total_fee",$ordersInfo['amount']*100);    // 总金额 		
		$unifiedOrder->setParameter("notify_url",$Notify_url);  // 通知地址 
		$unifiedOrder->setParameter("trade_type","JSAPI");      // 交易类型
		$prepay_id   = $unifiedOrder->getPrepayId();
		// 使用jsapi调起支付		
		$jsApi->setPrepayId($prepay_id);
		$jsApiParameters = $jsApi->getParameters();		
		$this->assign('money',$money);
		$this->assign('order_no',$order_no);
		$this->assign("jsApiParameters" ,$jsApiParameters);
		$this->assign('openid',$openid);
		return $this->themeFetch('jspay');
	}
	
	/**
	* 微信同步通知
	* @author tangtanglove
	*/
	public function getOrderStatus() {

		$uid = session('wap_user_auth.uid');
		if (empty($uid)) {
			$this->error('未登录！');
		}

		$order_no = input('get.order_no');
		$ordersInfo = Db::name('Orders')->where(['order_no'=>$order_no,'uid'=>$uid])->find();

		if(empty($ordersInfo)){
			$this->error('参数错误');
		}

		$this->success($ordersInfo['status']);
	}

	/**
	* 微信同步通知
	* @author tangtanglove
	*/
	public function return_url() {

		$uid = session('wap_user_auth.uid');
		if (empty($uid)) {
			$this->error('未登录！');
		}

		$order_no = input('get.order_no');
		$ordersInfo = Db::name('Orders')->where(['order_no'=>$order_no,'uid'=>$uid])->find();

		if(empty($ordersInfo)){
			$this->error('参数错误');
		}

		$content = "您已成功支付".$ordersInfo['amount']."元，订单号：".$order_no;
		$this->assign('content',$content);
		$this->assign('ordersInfo',$ordersInfo);
		return $this->themeFetch('return_url');
	}

	/**
	* 微信异步通知
	* @author tangtanglove
	*/
	public function notify_url()
	{
		// 获取返回的post数据包
		$postStr = $GLOBALS["HTTP_RAW_POST_DATA"] ;
		$out_trade_no = "";
		if (!empty($postStr)){
			libxml_disable_entity_loader(true);
			$postObj = (array)simplexml_load_string($postStr, 'SimpleXMLElement', LIBXML_NOCDATA);
			$out_trade_no = $postObj['out_trade_no'];
			// 订单状态处理
			Db::startTrans();

			// 修改订单 状态
			$ordersData['status'] = 'paid';
			$ordersData['is_pay'] = 1;
			$ordersResult = Db::name('Orders')->where(array('order_no'=>$out_trade_no))->update($ordersData);
			$ordersInfo = Db::name('Orders')->where(['order_no'=>$out_trade_no])->find();
			$data['order_id'] 		= $ordersInfo['id'];
			$data['status']   		= 'paid';
			$data['createtime'] 	= time();
			$data['trade_no'] 		= $postObj['transaction_id'];
			$data['trade_status'] 	= 'SUCCESS';
			$ordersStatusResult = Db::name('OrdersStatus')->insert($data);

			if($ordersResult && $ordersStatusResult){
				// 更改购物车状态
				$goodsList = Db::name('OrdersGoods')->where('order_id',$ordersInfo['id'])->select();
				foreach ($goodsList as $key => $value) {
					Db::name('Cart')->where('goods_id',$value['goods_id'])->where(['status'=>1])->update(['status'=>2]);
				}
				Db::commit();
				$result = "<xml>
				<return_code><![CDATA[SUCCESS]]></return_code>
				<return_msg><![CDATA[OK]]></return_msg>
				</xml>";
			}else{
				Db::rollback();
				$result = "<xml>
				<return_code><![CDATA[FAIL]]></return_code>
				<return_msg><![CDATA[未接收到post数据]]></return_msg>
				</xml>";
			}
				
		}else {	
			$result = "<xml>
			<return_code><![CDATA[FAIL]]></return_code>
			<return_msg><![CDATA[未接收到post数据]]></return_msg>
			</xml>";
		}
		echo $result;	
	}
}