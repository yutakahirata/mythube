% rebase('layout.tpl', title=title)
% include('navi.tpl',title=title,menu=menu)
<br/>
<div>
<img src="http://accnt.hrd.sub.jp/cnt/accnt.php?cnt_id=2101034&ac_id=LAA0981516&mode=total">
<input type='checkbox' id="cp" style="margin-left:100px;">Continuous Play</input>
</div>
<br/>
<br/>
% from collections import OrderedDict
% x=flist[0]
	<div class="embed-responsive embed-responsive-16by9">
		<video id="mov"  controls poster="./{{x}}.jpg" src="./{{x}}" type="video/mp4"  onended="funend();"/>
	</div>
<br/>
	<div class="row">
	% ix=0
	% for x in flist:
	<div class="col-md-4">
	<a style="font-size: 0.7rem;" href='https://mytube.hrd.co.jp/{{x}}'>https://mytube.hrd.co.jp/{{x}}</a>
		<img id='{{ix}}' class="btn btn-primary" src="./{{x}}.jpg" height="200"/>
	<br/>
	<a  href='https://mytube.hrd.co.jp/{{x}}' download>
	<img src="./static/favicon.ico" alt="download" width="32" height="32">Download:
	</a>
	
	</div>
	% ix=ix+1
	% end 
	</div>

<script>
var flist={{!flist}},v,ix=0;
$(function(){
	$('.btn').click(function(){
		$("#mov").removeAttr("preload");
		id=$(this).attr('id');
		ix=Number(id);
		console.log(id,ix);
		var a=$(this).attr("src");
		$("#mov").attr("poster",a);
		var m=a.replace(".jpg","");
		$("#mov").attr("src",m);
		$("#mov").get(0).play();
	})
})

function funend(){
	console.log("fine",$('#cp').prop('checked'));
	if($('#cp').prop('checked')){
		if(++ix>=flist.length){
			ix=0;
			$('#cp').prop('checked',false)
		}
		var a=flist[ix];
		$("#mov").attr("poster",a);
		var m=a.replace(".jpg","");
		$("#mov").attr("src",m);
		if(ix!=0) $("#mov").get(0).play();
	}
}
function copyToClipboard(s) {
	$('#copyTarget').val(s);
    copyTarget.select();
    document.execCommand("Copy");
    alert("コピーできました！ : " + copyTarget.value);
}
</script>