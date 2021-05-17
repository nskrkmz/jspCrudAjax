var isNew = true;
		
		function addStudent() {
			if($("#frmStudent").valid()){
				var url = "";
				var data= "";
				var method;
				
				if(isNew==true){
					url = 'Add'
					data=$("#frmStudent").serialize
					method = 'POST'
				}
				
				$.ajax({
					type:method,
					url : url,
					dataType:'JSON',
					data : data,
					
					succes:function(data){
						if(isNew == true){
							alert("Record added");
						}
						
						
						
						
					}
				});
			}
		}
	