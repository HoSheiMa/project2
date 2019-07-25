

$(".Sing_Up").on('click', () => {
    
    $.confirm({
      title: "Sing Up",
        columnClass: 'small',
        closeIcon: function () {
            return false; // to prevent close the modal.
            // or
            return 'close'; // set a button handler, 'aRandomButton' prevents close.
        },
        closeIcon: 'close', // set a button handler
      content:
        "" +
        '<form action="" class="formSing">' +
        '<div class="form-group">' +
        "<label>Enter Your Info here</label>" +
          "<label>Should name & username biger than 6 letters</label>" +
          "<label>Should password biger than or equal 8 letters</label>" +
        '<input type="text" placeholder="Username" class="user form-control" required />' +
        '<input type="password" placeholder="password" class="pass form-control" required />' +
        '<input type="password" placeholder="re-password" class="pass2 form-control" required />' +
        '<input type="text" placeholder="name" class="name form-control" required />' +
        "</div>" +
        "</form>",
      buttons: {
        formSubmit: {
          text: "Sing Up",
          btnClass: "btn-blue",
          action: function() {

              var user = this.$content.find(".user").val();
              var pass = this.$content.find(".pass").val();
              var pass2 = this.$content.find(".pass2").val();
              var name = this.$content.find(".name").val();
              if (pass != pass2) {
                  $.alert("password not equal re-passwrod");
                  return false;
              }
              
              if (user.length <= 6) {
                  $.alert("username Should big then 6 letters");return false;
              }
              if (name.length <= 6) {
                  $.alert("name Should big then 6 letters"); return false;
              }
              if (pass.length <= 6) {
                  $.alert("password Should big then 8 letters"); return false;
              }
              if (pass2.length <= 6) {
                  $.alert("re-password Should big then 8 letters"); return false;
              }
            if (!user | !pass | !pass2 | !name) {
              $.alert("complete a information");
              return false;
            }
            
            $.ajax({
                url : 'ajax/singUp.php',
                type : 'post',
                data : {data : [user, pass, name]},
                success : (d) => {
                    $.alert(d);
                    return false;
                },
                error : (d) => {
                    $.alert("Bad Work!");
                    return false;
                }
            })

          }
        },
        cancel: function() {
          //close
        }
      },
      onContentReady: function() {
        // bind to events
        var jc = this;
        this.$content.find("form").on("submit", function(e) {
          // if the user submits the form by pressing enter in the field.
          e.preventDefault();
          jc.$$formSubmit.trigger("click"); // reference the button and click it
        });
      }
    });
});