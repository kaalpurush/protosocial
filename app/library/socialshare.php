<?php
/**
 * Social Share Count Class
 *
 * @package    Social
 * @category   Library
 * @author     Md. Ariful Islam <gplus.to/ariful>
 * @version    1.0
 * @license    http://mit-license.org/ MIT License
 */

class SocialShare
{
	public static function facebook($url) {
		$json_string = file_get_contents('http://graph.facebook.com/?id='.$url);
		$json = json_decode($json_string, true);
			
		return intval($json['shares']);
	}	
	
	public static function gplus($url){	
		// G+ DATA
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, "https://clients6.google.com/rpc?key=AIzaSyCKSbrvQasunBoV16zDH9R33D88CeLr9gQ");
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($ch, CURLOPT_POSTFIELDS, '[{"method":"pos.plusones.get","id":"p",
				"params":{"nolog":true,"id":"' . $url . '","source":"widget","userId":"@viewer","groupId":"@self"},
				"jsonrpc":"2.0","key":"p","apiVersion":"v1"}]');
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-type: application/json'));
	
		$result = curl_exec ($ch);
		curl_close ($ch);
	
		$json = json_decode($result, true);
		return intval($json[0]['result']['metadata']['globalCounts']['count']);	
	}	
	
	public static function twitter($url) {
		$json_string = file_get_contents('http://cdn.api.twitter.com/1/urls/count.json?url='.$url);
		$json = json_decode($json_string, true);
			
		return intval($json['count']);
	}
	
	public static function linkedin($url) { 
		$json_string = file_get_contents('http://www.linkedin.com/countserv/count/share?url='.$url.'&format=json');
		$json = json_decode($json_string, true);
		 
		return intval($json['count']);		 
	}

	public static function stumbledupon($url) {	 
		$json_string = file_get_contents('http://www.stumbleupon.com/services/1.01/badge.getinfo?url='.$url);
		$json = json_decode($json_string, true);
		 
		return intval($json['result']['views']); 
	}
 
	public static function delicious($url) { 
		$json_string = file_get_contents('http://feeds.delicious.com/v2/json/urlinfo/data?url='.$url);
		$json = json_decode($json_string, true);
		 
		return intval($json[0]['total_posts']); 
	}	
	
}