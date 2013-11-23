<?php

/**
 * FB static wrapper
 *
 * @package    Septu
 * @author     Ariful Islam <gplus.to/ariful>
 * @version    1.0
 * @license    http://mit-license.org/ MIT License  
 * This is a Facebook wrapper class to access the Facbook functions statically
 *
 * Contains some common functions
 * 
 */

class FB{	
	public static $appId;
	public static $appSecret;
	public static $inst=NULL;
	
	public static function profile($username){		
		try{
			$data = static::inst()->api('/'.$username);
		}
		catch(Exception $e){
			return 0;
		}			
		$ret['first_name']=$data['first_name'];
		$ret['last_name']=$data['last_name'];
		$ret['fb']=$data['username'];
		$ret['gender']=$data['gender'];
		$data['picture']=$ret['picture']='https://graph.facebook.com/'.$data['id'].'/picture';
		return $data;
	}
	
	public static function retrieve_user_token(){
		if(empty($_GET['code'])) return false;
		$code = $_GET['code'];
		$redirect_url = urlencode(URL::to('/'));
		$url = 'https://graph.facebook.com/oauth/access_token?client_id=' . static::$appId . '&client_secret=' . static::$appSecret . '&code=' . $code . '&redirect_uri=' . $redirect_url . '';
		$token = @file_get_contents($url);
		if ($token) {
			$access_token = str_replace('access_token=', '', $token);
			if ($access_token) {
				try {
					$attachment = array(
						'access_token' => $access_token,
					);
					$data = static::inst()->api('/me/accounts', 'GET', $attachment);
					Session::put('access_token',$access_token);
					return $access_token;
				} catch (Exception $ex) {
					
				}
			}
		}
	}
	
	public static function search_user($username){
		$ret=array();
		try{
			$access_token=static::inst()->getAccessToken();
			$ret = static::inst()->api('/search?q='.$username.'&type=user','GET',array('access_token'=>$access_token));
		}
		catch(Exception $e){
			return null;
		}
		return $ret['data'];
	}
	
	public static function search_story($username,$keyword){
		$ret=array();	
		try{
			$ret = static::inst()->api('/'.$username.'/feed');//?q='.$keyword);
		}
		catch(Exception $e){
			return 0;
		}
		return $ret['data'];
	}
	
	function __construct()
	{
		echo 'No need to create instance of this class, static functions only class.';
	}
	
	public static function inst(){
		if(static::$inst==NULL){
			static::$appId=Config::get('fb.app_id');
			static::$appSecret=Config::get('fb.app_secret');
			static::$inst=new Facebook(array(
							'appId' => static::$appId,
							'secret' => static::$appSecret,
							'cookie' => true,
						));
		}
		return static::$inst;
	}
	
	public static function logged(){
		return static::inst()->getUser();
	}
	
	public static function login_url(){
		$param['response_type']='code';
		return static::inst()->getLoginUrl($param);		
	}
	
	public function __toString()
	{
		return 'Facebook wrapper class for static access. Dont create instance, use static access.';
	}
	
	public function __call($method, $parameters)
	{
		return call_user_func_array(array(static::inst(), $method), $parameters);
	}
	
	public static function __callStatic($method, $parameters)
	{
		return call_user_func_array(array(static::inst(), $method), $parameters);
	}	
}