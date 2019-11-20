% rebase('layout.tpl', title=title)
% include('navi.tpl',title=title,menu=menu)
<br/>
<img src="http://accnt.hrd.sub.jp/cnt/accnt.php?cnt_id=2101034&ac_id=LAA0981516&mode=total">

<br/>
<div></div>
<br/>
% from collections import OrderedDict
% x=flist[0]
	<div class="embed-responsive embed-responsive-16by9">
		<video id="mov" autoplay controls src="./{{x}}" type="video/mp4" onended="funend();"/>
	</div>

<script>
var flist={{!flist}},v,ix=0;
function funend(){
		if(++ix>=flist.length)ix=0;
		var a=flist[ix];
		$("#mov").attr("poster",a);
		var m=a.replace(".jpg","");
		$("#mov").attr("src",m);
		if(ix!=0) $("#mov").get(0).play();
}
</script>