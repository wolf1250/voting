<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>主題投票</title>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>

    <link href="<c:url value = '/resources/css/bootstrap.css' />" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <link href="<c:url value = '/resources/css/star-rating.css' />" media="all" rel="stylesheet" type="text/css"/>
    <style>
        .submit-btn {
            background-color: #4bacc6;
            color: #FFF;
            border: 2px solid #FFF;
            box-shadow: 3px 3px 5px #a0a0a0;
            position: fixed;
            padding: 6px 20px;
            right: 20px;
            top: 10px;
        }

        .submit-btn:focus {
            background-color: #4bacc6;
            color: #FFF;
            border: 2px solid #FFF;
            box-shadow: 3px 3px 5px #a0a0a0;
        }


    </style>

</head>

<body>
<div class="container" style="margin-top: 20px;">

    <button class="btn btn-default submit-btn">送 出</button>

    <div class="row">
        <div class="media">
            <div class="media-left">
                <a href="#">
                    <img class="media-object" src="./images/bt_dreamweaver.gif" alt="...">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">行動核心與擴充服務</h4>
                <span class="title">關鍵業務</span>
                <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading"
                       value="3" dir="ltr">
                <span class="title">優先性</span>
                <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading"
                       value="3" dir="ltr">
            </div>
        </div>

        <br/>
    </div>
    <div class="row">
        <div class="media">
            <div class="media-left">
                <a href="#">
                    <img class="media-object" src="./images/bt_dreamweaver.gif" alt="...">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">保險金試算服務</h4>
                <span class="title">關鍵業務</span>
                <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading"
                       value="3" dir="ltr">
                <span class="title">優先性</span>
                <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading"
                       value="3" dir="ltr">
            </div>
        </div>
        <br/>
    </div>
    <div class="row">
        <div class="media">
            <div class="media-left">
                <a href="#">
                    <img class="media-object" src="./images/bt_dreamweaver.gif" alt="...">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">行動支付</h4>
                <span class="title">關鍵業務</span>
                <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading"
                       value="3" dir="ltr">
                <span class="title">優先性</span>
                <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading"
                       value="3" dir="ltr">
            </div>
        </div>
        <br/>
    </div>
    <div class="row">
        <div class="media">
            <div class="media-left">
                <a href="#">
                    <img class="media-object" src="./images/bt_dreamweaver.gif" alt="...">
                </a>
            </div>
            <div class="media-body">
                <h4 class="media-heading">客製化行動服務</h4>
                <span class="title">關鍵業務</span>
                <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading"
                       value="3" dir="ltr">
                <span class="title">優先性</span>
                <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading"
                       value="3" dir="ltr">
            </div>
        </div>
        <br/>
    </div>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="./js/bootstrap.min.js"></script>
<script src="../js/star-rating.js" type="text/javascript"></script>
<script>
        $(function() {
            $('.kv-ltr-theme-fa-star').rating({
                size: 'sm',
                hoverOnClear: false,
                theme: 'krajee-fa',
                showCaption: false,
                showClear: false
            });


            $('.submit-btn').on('click', function() {
                var submit_data ={project_id:2, key_business:2, priority:3};
                $.ajax({
                    url: 'http://localhost:8080/voting_test',
                    contentType: 'application/json',
                    data: submit_data,
                    dataType: 'json',
                    error: function(jqXHR, textStatus, errorThrown) {

                    },
                    success: function(data, textStatus, jqXHR) {
                        $('#myModal').modal('show');
                    },
                    complete: function(jqXHR, textStatus) {

                    },

                });
            });
        });


</script>
</body>

</html>
