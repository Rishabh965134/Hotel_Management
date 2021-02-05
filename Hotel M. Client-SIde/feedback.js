$(function () {
    var $feed = $("#form1");
    if ($feed.length) {
        $feed.validate({
            rules: {
                TextBox1: {
                    required:true               
                },
                TextBox2: {
                    required: true,
                    email:true
                },
                 TextBox3: {
                required:true               
                },
                     TextBox4: {
                required:true               
                     }                
            },
            messages: {
                TextBox1: {
                    required:'*Enter the Name'
                },
                TextBox2: {
                    required: '*Enter the Email Id'
                },
                TextBox3: {
                    required: 'Enter the Address'
                },
                TextBox4: {
                    required: 'Give the Suggetion'
                }
                 
            }
        })
    }
})