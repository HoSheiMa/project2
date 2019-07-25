
$(document).ready(()=> {
    


    $.ajax({
        url: 'ajax/post_edit1.php',
        type : 'post',
        data: { id: post_id_focus},
        success : (d) => {
            console.log(d);
            
            data  = JSON.parse(d);
            console.log(data);
            
            $("#myTextArea2").text(data[0]);
            $("#myTextArea").text(data[1]);
            $Spelling.SpellCheckAsYouType("myTextArea2");
            $Spelling.SpellCheckAsYouType("myTextArea");
            
        } 
    })


    $(".edit_btn").on('click', ()=>{

        title = $("#myTextArea2___livespell_proxy").text();
        body = $("#myTextArea___livespell_proxy").text();
        $.ajax({
          url: "ajax/edit.php",
          type: "post",
          data: { id: post_id_focus, title: title, body: body },
          success: d => {
            $("body").append(d);
          }
        });
    });
})
