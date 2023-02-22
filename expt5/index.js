function formValidation(){
    
    let lName=document.myForm.lname.value;
    let empId=document.myForm.eID.value;
    let conNum=document.myForm.num.value;
    let areaInt=document.myForm.aoi.value;
    let quali=document.myForm.qual.value;
    let exp=document.myForm.exYear.value;
    let empAge=document.myForm.age.value;
    let add=document.myForm.address.value;
    
    let reg2="^(?:(?:\+|0{0,2})91(\s*[\ -]\s*)?|[0]?)?[789]\d{9}|(\d[ -]?){10}\d$";
    // let reg3_cont=;
    console.log("out");
    if(empId == "")
    { 
        document.getElementById("req1").style.display="block";
        document.getElementById("input1").style.borderColor="brown";
    }
    if(lName == "")
    { 
      document.getElementById("req2").style.display="block";
      document.getElementById("input2").style.borderColor="brown";
    }
    if(add == "")
    { 
      document.getElementById("req3").style.display="block";
      document.getElementById("input3").style.borderColor="brown";
    }
    if(conNum == "")
    { 
      document.getElementById("req4").style.display="block";
      document.getElementById("input4").style.borderColor="brown";
    }
    if(areaInt == "")
    { 
      document.getElementById("req5").style.display="block";
      document.getElementById("input5").style.borderColor="brown";
    }
    if(quali == "")
    { 
      document.getElementById("req6").style.display="block";
      document.getElementById("input6").style.borderColor="brown";
    }
    if(exp == "")
    { 
      document.getElementById("req7").style.display="block";
      document.getElementById("input7").style.borderColor="brown";
    }
    if(empAge == "")
    { 
      document.getElementById("req8").style.display="block";
      document.getElementById("input8").style.borderColor="brown";
    }
    if(empId.match(reg2)!= true && empId !="")
    {
        document.getElementById("val1").style.display="block";
        document.getElementById("input3").style.borderColor="brown";
    }
    if(conNum.match(reg3_cont)!= true && conNum !="")
    {
        document.getElementById("val2").style.display="block";
        document.getElementById("input4").style.borderColor="brown";
    }
   
}
