
$(document).ready(()=> {

    $(".share_btn").on('click', () => {
        title = $("#myTextArea2___livespell_proxy").text();
        body     = $("#myTextArea___livespell_proxy").text();
        $.ajax({
            url : 'ajax/share.php',
            type : 'post',
            data : {title : title , body : body},
            success : (d) => {
                $('body').append(d);
                
            }
        })
    });
})