<%--
  Created by IntelliJ IDEA.
  User: liqiang
  Date: 2019/2/15
  Time: 16:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function runSlots() {
            var slotOne;
            var slotTwo;
            var slotThree;

            var images = ["https://www.w3cschool.cn/statics/codecamp/images/9H17QFk.png", "https://www.w3cschool.cn/statics/codecamp/images/9RmpXTy.png", "https://www.w3cschool.cn/statics/codecamp/images/VJnmtt5.png"];

            slotOne = Math.floor(Math.random() * (3 - 1 + 1)) + 1;
            slotTwo = Math.floor(Math.random() * (3 - 1 + 1)) + 1;
            slotThree = Math.floor(Math.random() * (3 - 1 + 1)) + 1;


// Only change code below this line.
/*

            $($('.slot')[0]).html('<img src = "' + images[slotOne-1] + '">')
            $($('.slot')[1]).html('<img src = "' + images[slotTwo-1] + '">')
            $($('.slot')[2]).html('<img src = "' + images[slotThree-1] + '">')
*/


            slotOne = Math.floor(Math.random() * (3 - 1 + 1)) + 1;
            slotTwo = Math.floor(Math.random() * (3 - 1 + 1)) + 1;
            slotThree = Math.floor(Math.random() * (3 - 1 + 1)) + 1;
// Only change code above this line.

            if (slotOne === slotTwo && slotTwo === slotThree) {
                $('.logger').html("It's A Win");
                return null;
            }

            if (slotOne !== undefined && slotTwo !== undefined && slotThree !== undefined){
                $(".logger").html(slotOne + " " + slotTwo + " " + slotThree);
            }

            $('.logger').append(" Not A Win");

            return [slotOne, slotTwo, slotThree];
        }

        $(document).ready(function() {
            $('.go').click(function() {
                runSlots();
            });
        });
    </script>



    <style>
        .slot > img {
            margin: 0!important;
            height: 71px;
            width: 50px;
        }
        .container {
            background-color: #4a2b0f;
            height: 400px;
            width: 260px;
            margin: 50px auto;
            border-radius: 4px;
        }
        .header {
            border: 2px solid #fff;
            border-radius: 4px;
            height: 55px;
            margin: 14px auto;
            background-color: #457f86
        }
        .header h2 {
            height: 30px;
            margin: auto;
        }
        .header h2 {
            font-size: 14px;
            margin: 0 0;
            padding: 0;
            color: #fff;
            text-align: center;
        }
        .slots{
            display: flex;
            background-color: #457f86;
            border-radius: 6px;
            border: 2px solid #fff;
        }
        .slot{
            flex: 1 0 auto;
            background: white;
            height: 75px;
            width: 50px;
            margin: 8px;
            border: 2px solid #215f1e;
            border-radius: 4px;
            text-align: center;
        }
        .go {
            width: 100%;
            color: #fff;
            background-color: #457f86;
            border: 2px solid #fff;
            border-radius: 2px;
            box-sizing: none;
            outline: none!important;
        }
        .foot {
            height: 150px;
            background-color: 457f86;
            border: 2px solid #fff;
        }

        .logger {
            color: white;
            margin: 10px;
        }

        .outset {
            -webkit-box-shadow: 0px 0px 15px -2px rgba(0,0,0,0.75);
            -moz-box-shadow: 0px 0px 15px -2px rgba(0,0,0,0.75);
            box-shadow: 0px 0px 15px -2px rgba(0,0,0,0.75);
        }

        .inset {
            -webkit-box-shadow: inset 0px 0px 15px -2px rgba(0,0,0,0.75);
            -moz-box-shadow: inset 0px 0px 15px -2px rgba(0,0,0,0.75);
            box-shadow: inset 0px 0px 15px -2px rgba(0,0,0,0.75);
        }
    </style>

</head>
<body>
<div>
    <div class = 'container inset'>
        <div class = 'header inset'>
            <img src='/statics/codecamp/images/freecodecamp_logo.svg' alt='learn to code JavaScript at Free Code Camp logo' class='img-responsive nav-logo'>
            <h2>FCC Slot Machine</h2>
        </div>
        <div class = 'slots inset'>
            <div class = 'slot inset'>

            </div>
            <div class = 'slot inset'>

            </div>
            <div class = 'slot inset'>

            </div>
        </div>
        <br/>
        <div class = 'outset'>
            <button class = 'go inset'>
                Go
            </button>
        </div>
        <br/>
        <div class = 'foot inset'>
            <span class = 'logger'></span>
        </div>
    </div>
</div>
</body>
</html>
