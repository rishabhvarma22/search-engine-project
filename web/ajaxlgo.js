var a,b,c,d,e,f,g,h,p,t;
var t1;
function init()
{
   a=document.getElementById("a1").text;
   b=document.getElementById("a2").text;
   c=document.getElementById("a3").text;
   d=document.getElementById("a4").text;
   e=document.getElementById("a5").text;
   f=document.getElementById("a6").text;
   g=document.getElementById("a7").text;
   h=document.getElementById("a8").text;
   p=document.getElementById("a9").text;
   t=document.getElementById("a10").text;
   t1=document.getElementById("p").value;
}

function vl1()
{
   window.location.href="logic.jsp?T1="+a; 
}
function vl2()
{
   window.location.href="logic.jsp?T1="+b; 
}
function vl3()
{
   window.location.href="logic.jsp?T1="+c; 
}
function vl4()
{
   window.location.href="logic.jsp?T1="+d; 
}
function vl5()
{
   window.location.href="logic.jsp?T1="+e; 
}
function vl6()
{
   window.location.href="logic.jsp?T1="+f; 
}
function vl7()
{
   window.location.href="logic.jsp?T1="+g; 
}
function vl8()
{
   window.location.href="logic.jsp?T1="+h; 
}
function vl9()
{
   window.location.href="logic.jsp?T1="+p; 
}
function vl10()
{
   window.location.href="logic.jsp?T1="+t; 
}

window.onload=init;


