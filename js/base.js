baseInit=function(){
	//Ajax Loader
	var loader = $('<div id="loader"></div>')
		.appendTo("body");
	loader.ajaxStart(function() {
		loader.show();
	}).ajaxStop(function() {
		loader.hide();
	}).ajaxError(function(a, b, e) {		
		//alert("Error requesting page: "+e.url+" ("+e.type+")");
	});
	//Ajax Loader
	
	if($.browser.msie)
		$('body').addClass('ie'+parseInt($.browser.version));
	else if($.browser.mozilla)
		$('body').addClass('mozilla');	
	else if(/chrome/.test( navigator.userAgent.toLowerCase() ))
		$('body').addClass('chrome');
	else if($.browser.safari)
		$('body').addClass('safari');
	else if($.browser.opera)
		$('body').addClass('opera');	
	
	//historyInit();
	
}

historyInit=function(){
	//Initiate jquery.history
    if(typeof window.history.pushState!=='undefined' && typeof window.history.replaceState!=='undefined'){
    	
    	$(".ajaxify").live('click',function(e){ajaxify(this);e.preventDefault();});
    	
        History.pushState({href:location.href,index:0}, document.title, location.href);

        History.Adapter.bind(window,'statechange',function(){ // Note: We are using statechange instead of popstate
            var State = History.getState();
            $("#content").load(State.data.href,function(){$(this).hide().slideDown({duration: 1000,easing:'easeOutBounce'});ajaxcallback();});
            //log('statechange:'+ State.data +' '+ State.title +' '+ State.url);			
        });   
    }
	//Initiate jquery.history
}

commonInit=function(){    
    if(typeof window.history.pushState!=='undefined' && typeof window.history.replaceState!=='undefined'){    	
    	$(".ajaxipop").live('click',ajaxipop);
    }
}

ajaxify=function(me){
	var href=$(me).attr('href');
    var index=$(".ajaxify").index(me);
    History.pushState({href:href,index:index}, $(me).attr('title'), href);
}

ajaxipop=function(){
	$('<div id="ajaxipop">').load(BASE+this.href.replace(/^.*#/, ''),ajaxcallback).dialog({
		title:this.title,
		modal: true,
		stack: true,
		position: 'top',
		width:1000,
		open: function(event, ui) {
			$(this).dialog('moveToTop');
		},
		close: function(event, ui) { 
			$(this).dialog('destroy').remove();
		}
	});
	return false;
}

log=function(txt){
	try{
		return console.log(txt);	
	}catch(e){}		
}

ajaxcallback=function(){
	//$('.tip').tipsy({gravity: 'w'});
}

confirmMe=function(cyes,cno){
	if(confirm("Do you want to continue?"))
		window.location.href=cyes;
	else
		window.location.href=cno;
}

uialert=function(msg,cmodal,callback){
	$('<div id="dg" title="Alert!"><p><span class="ui-icon ui-icon-alert" style="float:left; margin:0 7px 20px 0;"></span>'+msg+'</div>').dialog({
		resizable: false,
		modal: cmodal,
		stack: true,
		open: function(event, ui) {
				$(this).dialog( 'moveToTop' );
		},		
		buttons: {
			"Ok": function() { 
				$(this).dialog("close"); 
				if(callback) callback();
			}
		}
	});
}

uiconfirm=function(msg,cyes,cno,cmodal){
	$('<div id="dg" title="Confirm?"><p><span class="ui-icon ui-icon-help" style="float:left; margin:0 7px 20px 0;"></span>'+msg+'</div>').dialog({
		resizable: false,
		modal: cmodal,
		stack: true,
		open: function(event, ui) {
				$(this).dialog( 'moveToTop' );
		},		
		buttons: {
			Cancel: function() { 
				$(this).dialog("close"); 
				if(cno) cno();
			},
			"Yes": function() {
				$(this).dialog('close');
				if (cyes) cyes();
			}

		}
	});
}
