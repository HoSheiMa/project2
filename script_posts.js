
$(document).ready(()=> {

    $.ajax({
        url: 'ajax/get_posts.php',
        type: 'post',
        data: { req: 'get' },
        success: (d) => {
            json_post = JSON.parse( d );
            
            /* $(".post_contant").html(d); */
            for (i in json_post) {
                
                var post    = json_post[i]
                var body    = post[3];
                var head    = post[2];
                var likes   = JSON.parse(post[4]);
                var id_post = post[1];
                var own_id  = post[0];
                var _color  = "grey";
                var name    = post[6];
                var date    = post[7];
                
                /*  */
                var stt;
                if (own_id == id___) {
                    stt = `<div class='stt hide-on-med-and-down' onclick="stt(${id_post})">      
                            <i class="material-icons">more_vert</i></div>
                            </div> `;
                } else {
                    stt = ``;
                }
                post_a = () => {
                    for (i in likes) {
                        if (likes[i] == id___) {
                          _color = "red";
                        } else {
                          _color = "grey";
                        }
                    }
                        $(".post_contant").html($(".post_contant").html() + `<ul class="collapsible">
                    <li>
                        <div class="collapsible-header">
                        <span class=' cyan-text' style="margin-right:7px;" ><a href="profile.php?id=${own_id}">${name}</a></span>
                        ${head}
                        <span class="badge ${_color}-text">
                            <span>${date}</span>
                           <div style="display:inline-block;" onclick='like_as(${id_post}, this)'>
                            <i class="material-icons">favorite</i></span></div>
                            ${stt}
                            </div> 
                            
                        <div class="collapsible-body"><p>${body}</p></div>
                    </li>
                    <li>
                    </ul>`);
                        $(document).ready(function () {
                            $('.collapsible').collapsible();
                        });

                }

                post_a();

            }
            console.log(json_post.length);
            
            if (json_post.length == 8) {
                $("body").append(`<div class="container flu center"><button onclick='more_storys(this)' class="btn "    >More</button></div>`);

            } else {
                $("body").append(`<div class="container flu center"><span class='grey-text'></span></div>`)
            }
        }
    })

})

function like_as(id, el) {
    console.log($(el)
        .parent()
        .attr("class")
        .includes("grey"));
    
    if (($(el).parent().attr('class')).includes('grey') == true) {  
        var classn = ($(el).parent().attr('class')).replace('grey', 'red');
        $.ajax({
            url : 'ajax/likes.php',
            type : 'post',
            data : { id : id},
            success : (d)=>{

                console.log(d);
                $(el).parent().attr('class', classn)
            }
        })
    } else {
        var classn = ($(el).parent().attr('class')).replace('red', 'grey');
        $.ajax({
            url: 'ajax/likes.php',
            type: 'post',
            data: { id: id },
            success: (d) =>{
                console.log(d);
                
                $(el).parent().attr('class', classn)
            }
        })
    }
    
}
function more_storys(el) {
    el.remove();
    $.ajax({
        url: 'ajax/get_posts.php',
        type: 'post',
        data: { req: 'more' },
        success: (d) => {
            json_post = JSON.parse(d);

            /* $(".post_contant").html(d); */
            for (i in json_post) {

                var post = json_post[i]
                var body = post[3];
                var head = post[2];
                var likes = JSON.parse(post[4]);
                var id_post = post[1];
                var own_id = post[0];
                var _color = "grey";
                var name = post[6];
                var date = post[7];


                post_a = () => {
                    for (i in likes) {

                        if (likes[i] == own_id) {
                            _color = "red";
                        } else {
                            _color = "grey";
                        }
                    }
                    /*  */
                    var stt;
                    if (own_id == id___) {
                        stt = `<div class='stt hide-on-med-and-down' onclick="stt(${id_post})">      
                            <i class="material-icons">more_vert</i></div>
                            </div> `;
                    } else {
                        stt = ``;
                    }
                    $(".post_contant")
                      .html($(".post_contant").html() + `<ul class="collapsible">
                    <li>
                        <div class="collapsible-header">
                        <span class=' cyan-text' style="margin-right:7px;" >${name}</span>
                        ${head}
                        <span class="badge ${_color}-text">
                            <span>${date}</span>
                           <div style="display:inline-block;" onclick='like_as(${id_post}, this)'>
                            <i class="material-icons">favorite</i></span></div>
                            ${stt}
                            
                        <div class="collapsible-body"><p>${body}</p></div>
                    </li>
                    <li>
                    </ul>`);
                    $(document).ready(function () {
                        $('.collapsible').collapsible();
                    });

                }

                post_a();

            }
            if (json_post.length == 8) {
                $("body").append(`<div class="container flu center"><button onclick='more_storys(this)' class="btn "    >More</button></div>`);

            } else {
                $("body").append(`<div class="container flu center"><span class='grey-text' style="padding:8px">No more Storys!!</span></div>`)
            }
        }
    })
}
function stt(id_post) {

    $.confirm({
        closeIcon: true,
        content: 'The setting allow is [delete, edit]',
        buttons: {
            specialKey: {
                text: 'delete',
                action: function () {
                    $.confirm({
                        closeIcon: true,
                        buttons: {
                            yes : {
                                text : 'yes',
                                action : () => {
                                    $.ajax({
                                        url:'ajax/delete.php',
                                        type :'post',
                                        data : {id_post : id_post},
                                        success : (d) => {
                                            console.log('work');
                                            
                                        }
                                    })
                                    
                                }
                            },
                            no : {
                                text : 'no',
                            }
                        }
                    })
                }
            },
            alphabet: {
                text: 'edit',
                action: function () {
                    window.location.assign("post_story.php?q=" + id_post);
                }
            }
        }
    });
    
}