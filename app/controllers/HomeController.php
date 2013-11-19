<?php

class HomeController extends BaseController {

	protected $layout = 'layouts/main';	
	
	public function getCapture()
	{
		if(!fb::logged()){
			$url= fb::login_url();
			return Redirect::to($url);
		}		
		$this->layout->content = View::make('home/capture');		
	}	
	
	public function postCapture()
	{
		if(fb::logged()){
			$access_token=fb::retrieve_user_token();					
		}
		$data=array();
		$data['profile']=Capture::profile('fb',$_POST['user_id']);
		$data['keyword']=$_POST['keyword'];
		$this->layout->content = View::make('home/capture',$data);
	}	

	public function postSearchUser()
	{
		$result=array();
		$username=$_POST['q'];
		$result=fb::search_user($username);
		return json_encode($result);
	}
	
	public function getIndex()
	{
		$this->layout->content = View::make('home/index');
	}
	
}