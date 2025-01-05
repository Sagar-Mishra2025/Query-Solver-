<%@include file="C1.jsp" %>
<style>
     .glowing-border2 {
    border: 2px solid #dadada;
    border-radius: 7px;
    }

    .glowing-border2:focus { 
    outline: none;
    border-color: deeppink;
    box-shadow: 0 0 10px deeppink;
}
    
    .glowing-border {
    border: 2px solid #dadada;
    border-radius: 7px;
    }

    .glowing-border:focus { 
    outline: none;
    border-color: springgreen;
    box-shadow: 0 0 10px springgreen;
}
</style>

<div>
    
    <h1 style="color: black; margin-left: 10px; width: 960px;"><marquee  direction="right" behavior="scroll" scrolldelay="50ms">Login Form</marquee></h1>
<div style="float: left; width: 500px;  ">
    <h5 class="form-label mt-4" style="color: red; margin-left: 20px ; font-family: initial;">Login User & Admin</h5>
    
   <form onsubmit="return A()" method="post" action="CheckLogin.jsp" style="margin-left: 10px;">
       
     <div class="form-floating mb-3">
      <input type="text" name="txt1" class="form-control glowing-border2" id="floatingInput T1" style=" margin-left: 10px;" placeholder="name@example.com" fdprocessedid="4wlt5">
    <label for="floatingInput">Email address<span id="sp1"></span></label>
     
    <div>
        <p class="col-form-label mt-2" style="margin-left: 10px; margin-bottom: -10px; color: springgreen;">Password</p>
        <input type="password"  name="txt2" class="form-control glowing-border" placeholder="Password" id="T2" style=" margin-left: 10px;" fdprocessedid="9vilc">

      <img id="img1" onClick="B()" src="navbar/popper/closeeye.png" width="24" height="20" style="margin-top: -35px; margin-left: 510px;"><span id="sp5"></span></p>
    </div>
     </div> 
    <label>
        <button type="submit" name="A1" id="A1" value="Login" style="margin-left: 10px;" class="btn btn-outline-danger" fdprocessedid="uu2b5h">Login</button>
        
    </label>
   </form>
</div>
</div>
   
    
    <div style="float: right">
        <img src="navbar/popper/la.jpg" width="500px;" height="340px;" style="margin-top: -7px; border: 3px solid black; margin-right: 50px; border: 5px solid #2a9fd6;"/>
    </div>
    </div>



<script>
     function B()
	 {
		 var mg,tv;
		 mg=document.getElementById("img1");
                 tv=document.getElementById("T2");
		 console.log("hello");
		 if(tv.type=="password")
		 {
			 console.log("hello1");
			 tv.type="text";
			 mg.src="navbar/popper/openeye.png";
		 }
		 else
		 {
			 console.log("hello2");
			 tv.type="password";
			 mg.src="navbar/popper/closeeye.png";
		 }
	 }
    

    
    function A()
                {
                    var t1=document.getElementById("T1");
                    var t2=document.getElementById("T2");
                    
                    var s1=document.getElementById("sp1");
                    var s2=document.getElementById("sp2");
                    
                    var v1=t1.value;
                    var v2=t2.value;
                  

                    s1.innerHTML="";
                    s2.innerHTML="";
                   
                    if(v1==""||v1==null)
                            {
                                    s1.innerHTML="Enter the Email Id";
                                    t1.focus();
                                    return false;
                            }
                    else if(v2==""||v2==null)
                            {
                                    s2.innerHTML="Enter Password";
                                    t2.focus();
                                    return false;
                            }
                    }
</script>
<%@include file="C2.jsp" %>
