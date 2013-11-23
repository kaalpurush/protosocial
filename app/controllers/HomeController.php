<?php

class HomeController extends BaseController {

	protected $layout = 'layouts/main';	
	
	public function getCapture()
	{
		if(!FB::logged()){
			$url= FB::login_url();
			return Redirect::to($url);
		}		
		$this->layout->content = View::make('home/capture');		
	}	
	
	public function postCapture()
	{
		$data=array();
		$data['profile']=Capture::profile('FB',$_POST['user_id']);
		$data['keyword']=$_POST['keyword'];
		$this->layout->content = View::make('home/capture',$data);
	}	

	public function postSearchUser()
	{
		$result=array();
		$username=$_POST['q'];
		$result=FB::search_user($username);
		return json_encode($result);
	}
	
	public function getIndex()
	{
		$this->layout->content = View::make('home/index');
	}
	
}