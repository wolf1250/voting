<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<<!DOCTYPE html>
 <html>

 <head>
     <meta charset="UTF-8">
     <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
     <title>主題說明</title>
     <meta name="viewport" content="width=device-width,initial-scale=1">

     <title>飛肯設計學苑</title>
     <link href="./resources/css/index.css" rel="stylesheet" type="text/css" />
     <link href="./resources/css/layout.css" rel="stylesheet" type="text/css">

     <link href="./resources/css/bootstrap.css" rel="stylesheet" type="text/css" />
     <link href="<c:url value = '/resources/css/star-rating.css' />" media="all" rel="stylesheet" type="text/css" />
     <style>
         body {
             background-image: url(./resources/images/bg.png);
             overflow-x: hidden;
             width:1024px;
             height: 662px;
         }

         .voting-btn {
             background-color: #4bacc6;
             color: #FFF;
             border: 2px solid #FFF;
             box-shadow: 3px 3px 5px #a0a0a0;
             position: fixed;
             top: 20px;
             right: 20px
         }

         .voting-btn:focus {
             background-color: #4bacc6;
             color: #FFF;
             border: 2px solid #FFF;
             box-shadow: 3px 3px 5px #a0a0a0;
         }

         .title {
             font-size: 20px;
         }

         .spec-frame {
             background-color: #FFF;
             display: inline-block;
             border-radius: 10px;
             padding: 10px;
             position: relative;
             display: none;
         }

         .detail {
             position: absolute;
             display: inline-block;
             margin-left: -161px;
             width: 40%;
             padding-left: 180px;
             border-bottom: 1px solid #fff;
             padding-bottom: 5px;
             visibility: hidden;
         }

         .score {
             position: absolute;
             background-color: #fff;
             width: 160px;
             height: 30px;
             margin-top: 5px;
             color: black;
             text-align: center;
             font-size: 20px;
             display: none;
         }

     </style>

 </head>

 <body>
     <div class="container-fluid">

         <button class="btn btn-default voting-btn"> 開 始 投 票 </button>

         <div id="BOX" style="position:fixed">
             <ul>
                 <li id="AA"><a href="#" style="left: -5px;" data="1"><span>行動應用</span></a></li>
                 <li id="BB"><a href="#" data="2"><span>主題是數位服務</span></a></li>
                 <li id="CC"><a href="#" data="3"><span>一站式服務</span></a></li>
                 <li id="DD"><a href="#" data="4"><span>資料監控與策展</span></a></li>
             </ul>
         </div>

         <div class="row">
             <div id="menu1" class="menu">
                 <ul>
                     <li class="p1 item index1">
                         <a href="#" data="1">css </a>
                         <div class="score id-1"> 50 </div>
                         <div class="detail index1">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要程度 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p2 item index2">
                         <a href="#" data="2">dreamweaver</a>
                         <div class="score id-2"> 50 </div>
                         <div class="detail index2">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p3 item index1">
                         <a href="#" data="3">flash </a>
                         <div class="score id-3"> 50 </div>
                         <div class="detail index1">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p4 item index2">
                         <a href="#" data="4">flash game </a>
                         <div class="score id-4"> 50 </div>
                         <div class="detail index2">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                 </ul>
                 <h1 style="margin-top: 0px; visibility: hidden;">底部</h1>
             </div>

             <div id="menu2" class="menu" style="display:none;">
                 <ul>
                     <li class="p5 item index1">
                         <a href="#" data="5">css </a>
                         <div class="score id-5"> 50 </div>
                         <div class="detail index1">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p6 item index2"><a href="#" data="6">dreamweaver</a>
                         <div class="score id-6"> 50 </div>
                         <div class="detail index2">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p7 item index1"><a href="#" data="7">flash </a>
                         <div class="score id-7"> 50 </div>
                         <div class="detail index1">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p8 item index2">
                         <a href="#" data="8">flash game </a>
                         <div class="score id-8"> 50 </div>
                         <div class="detail index2">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                 </ul>
                 <h1 style="margin-top: 0px; visibility: hidden;">底部</h1>
             </div>

             <div id="menu3" class="menu" style="display:none">
                 <ul>
                     <li class="p9 item index1">
                         <a href="#" data="9">css </a>
                         <div class="score id-9"> 50 </div>
                         <div class="detail index1">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p10 item index2">
                         <a href="#" data="10">dreamweaver</a>
                         <div class="score id-10"> 50 </div>
                         <div class="detail index2">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p11 item index1"><a href="#" data="11">flash </a>
                         <div class="score id-11"> 50 </div>
                         <div class="detail index1">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p12 item index2"><a href="#" data="12">flash game </a>
                         <div class="score id-12"> 50 </div>
                         <div class="detail index2">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                 </ul>
                 <h1 style="margin-top: 0px; visibility: hidden;">底部</h1>
             </div>

             <div id="menu4" class="menu" style="display:none">
                 <ul>
                     <li class="p13 item index1">
                         <a href="#" data="13">css </a>
                         <div class="score id-13"> 50 </div>
                         <div class="detail index1">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p14 item index2">
                         <a href="#" data="14">dreamweaver</a>
                         <div class="score id-14"> 50 </div>
                         <div class="detail index2">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p15 item index1">
                         <a href="#" data="15">flash </a>
                         <div class="score id-15"> 50 </div>
                         <div class="detail index1">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                     <li class="p16 item index2">
                         <a href="#" data="16">flash game </a>
                         <div class="score id-16"> 50 </div>
                         <div class="detail index2">
                             <div><span class="title"> 經費時程</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"> </div>
                             <div><span class="title"> 現行環境 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 關鍵業務 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 重要性 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="0" dir="ltr"></div>
                             <div><span class="title"> 技術能量 </span><input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                             <div><span class="title"> 跨機關合作</span> <input id="input-3-ltr-star-md" name="input-3-ltr-star-md" class="kv-ltr-theme-fa-star rating-loading" value="3" dir="ltr"></div>
                         </div>
                     </li>
                 </ul>
                 <h1 style="margin-top: 0px; visibility: hidden;">底部</h1>
             </div>
         </div>

         <div class="row text-center spec">
             <div class="spec-frame spec1">
                 <img src="./resources/images/spec/p1.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec2">
                 <img src="./resources/images/spec/p2.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarousel2" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec3" style="background-color:#FFF;display: inline-block;border-radius: 10px;padding: 10px; position:relative;display:none;">
                 <img src="./resources/images/spec/p4.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse3" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec4">
                 <img src="./resources/images/spec/p3.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse4" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec5">
                 <img src="./resources/images/spec/p5.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse5" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec6">
                 <img src="./resources/images/spec/p6.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse6" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec7">
                 <img src="./resources/images/spec/p7.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse7" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec8">
                 <img src="./resources/images/spec/p8.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse8" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec9">
                 <img src="./resources/images/spec/p9.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse9" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec10">
                 <img src="./resources/images/spec/p10.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse10" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec11">
                 <img src="./resources/images/spec/p11.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse11" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec12">
                 <img src="./resources/images/spec/p12.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse12" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec13">
                 <img src="./resources/images/spec/p13.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse13" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec14">
                 <img src="./resources/images/spec/p14.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse14" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec15">
                 <img src="./resources/images/spec/p15.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse15" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>

             <div class="spec-frame spec16">
                 <img src="./resources/images/spec/p16.png" style="max-height:420px; box-shadow: 3px 3px 5px #a0a0a0;">
                 <div id="myCarouse16" class="carousel slide" data-ride="carousel" style="width: 266px;height: 133px;position:absolute;top: 57px;right: 25px;" data-interval="2000">

                     <!-- Wrapper for slides -->
                     <div class="carousel-inner">
                         <div class="item active">
                             <img src="./resources/images/test_1.png" alt="Los Angeles" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_2.png" alt="Chicago" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>

                         <div class="item">
                             <img src="./resources/images/test_3.png" alt="New York" style="max-height:120px; box-shadow: 3px 3px 5px #a0a0a0;">
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
     <script type="text/javascript" src="./resources/js/bootstrap.min.js"></script>
     <script type="text/javascript" src="./resources/js/jquery-ui.min.js"></script>
     <script src="./resources/js/star-rating.js" type="text/javascript"></script>
     <script type="text/javascript" src="./resources/js/TweenMax.min.js"></script>
     <script type="text/javascript" src="./resources/js/sockjs.min.js"></script>
     <script type="text/javascript" src="./resources/js/stomp.min.js"></script>
     <script type="text/javascript" src="./resources/js/my_socket.js"></script>
     <script>
         $(function() {

             var selected_menu = "1";
             var MENU = $("#BOX li a");

             MENU.on('click', function() {
                 $("#BOX li a").stop(true, false).animate({
                     left: -110
                 }, 1000, "easeOutBack");
                 $(this).stop(true, false).animate({
                     left: -5
                 }, 800, "easeOutBounce");
             });

             $('#BOX li a').on('click', function() {
                 console.log('a click event');
                 console.log($(this).attr('data'));
                 var index = $(this).attr('data');
                 selected_menu = index;
                 console.log('#menu' + index);
                 $('.spec-frame').hide();
                 $('.menu').hide();
                 $('#menu' + index).show();
                 $('.spec').show();
                 menu_recovery();
             });

             $('.menu li a').on('click', function() {
                 console.log('b click event');
                 console.log($(this).attr('data'));

                 var index = $(this).attr('data');
                 console.log('#spec' + index);
                 $('.spec-frame').hide();
                 $('.spec' + index).css('display', 'inline-block');
             });

             var menu_recovery = function() {
                 $('.menu li').css('float', 'left');
                 $('.menu li a').css('height', '160px');
                 $('.menu li a').css('display', 'block');
                 $('.menu li a').css('margin-top', '0px');
                 $('.menu li').css('color', '#fff');
                 $('.menu ul').css('overflow', 'hidden');
                 $('.detail').css('visibility', 'hidden');
                 $('.menu li').css('width', 'auto');
                 $('.menu li').css('margin-top', '56px');
                 $('.menu li').css('margin-left', '0px');
                 $('.score').hide();
                 menu_animate();
             }

             var menu1_display = function() {
                 $('.p2').stop(true, false).animate({
                     marginLeft: -167
                 }, 500, "linear", function() {
                     console.log('a finish');
                     $('.p3').stop(true, false).animate({
                         marginLeft: -167
                     }, 500, "linear", function() {
                         console.log('b finish');
                         $('.p4').stop(true, false).animate({
                             marginLeft: -167
                         }, 500, "linear", function() {
                             console.log('c finish');
                             $('.menu li').css('width', '420px');
                             $('.menu li').css('margin-left', '0px');
                             $('.menu li').css('margin-top', '50px');
                             $('.menu li.index2').css('margin-top', '-60px');
                             $('.menu li.index2').css('margin-left', '420px');
                             $('.menu li a').css('height', '123px');
                             $('.menu li a').css('display', 'inline-block');
                             $('.menu li a').css('margin-top', '6px');
                             $('.menu li').css('float', 'none');
                             $('.menu li').css('color', '#fff');
                             $('.menu ul').css('overflow', 'initial');
                             $('.detail').css('visibility', 'visible');
                             $('.score').show();
                         });
                     });

                 });
             }

             var menu2_display = function() {
                 $('.p6').stop(true, false).animate({
                     marginLeft: -167
                 }, 500, "linear", function() {
                     console.log('a finish');
                     $('.p7').stop(true, false).animate({
                         marginLeft: -167
                     }, 500, "linear", function() {
                         console.log('b finish');
                         $('.p8').stop(true, false).animate({
                             marginLeft: -167
                         }, 500, "linear", function() {
                             console.log('c finish');
                             $('.menu li').css('width', '420px');
                             $('.menu li').css('margin-left', '0px');
                             $('.menu li').css('margin-top', '50px');
                             $('.menu li.index2').css('margin-top', '-60px');
                             $('.menu li.index2').css('margin-left', '420px');
                             $('.menu h1').css('background-image', 'none');
                             $('.menu li a').css('height', '123px');
                             $('.menu li a').css('display', 'inline-block');
                             $('.menu li a').css('margin-top', '6px');
                             $('.menu li').css('float', 'none');
                             $('.menu li').css('color', '#fff');
                             $('.menu ul').css('overflow', 'initial');
                             $('.detail').css('visibility', 'visible');
                             $('.score').show();
                         });
                     });

                 });
             }

             var menu3_display = function() {
                 $('.p10').stop(true, false).animate({
                     marginLeft: -167
                 }, 500, "linear", function() {
                     console.log('a finish');
                     $('.p11').stop(true, false).animate({
                         marginLeft: -167
                     }, 500, "linear", function() {
                         console.log('b finish');
                         $('.p12').stop(true, false).animate({
                             marginLeft: -167
                         }, 500, "linear", function() {
                             console.log('c finish');
                             $('.menu li').css('width', '420px');
                             $('.menu li').css('margin-left', '0px');
                             $('.menu li').css('margin-top', '50px');
                             $('.menu h1').css('background-image', 'none');
                             $('.menu li.index2').css('margin-top', '-60px');
                             $('.menu li.index2').css('margin-left', '420px');
                             $('.menu li a').css('height', '123px');
                             $('.menu li a').css('display', 'inline-block');
                             $('.menu li a').css('margin-top', '6px');
                             $('.menu li').css('float', 'none');
                             $('.menu li').css('color', '#fff');
                             $('.menu ul').css('overflow', 'initial');
                             $('.detail').css('visibility', 'visible');
                         });
                     });

                 });
             }

             var menu4_display = function() {
                 $('.p14').stop(true, false).animate({
                     marginLeft: -167
                 }, 500, "linear", function() {
                     console.log('a finish');
                     $('.p15').stop(true, false).animate({
                         marginLeft: -167
                     }, 500, "linear", function() {
                         console.log('b finish');
                         $('.p16').stop(true, false).animate({
                             marginLeft: -167
                         }, 500, "linear", function() {
                             console.log('c finish');
                             $('.menu li').css('width', '420px');
                             $('.menu li').css('margin-left', '0px');
                             $('.menu li').css('margin-top', '50px');
                             $('.menu h1').css('background-image', 'none');
                             $('.menu li.index2').css('margin-top', '-60px');
                             $('.menu li.index2').css('margin-left', '420px');
                             $('.menu li a').css('height', '123px');
                             $('.menu li a').css('display', 'inline-block');
                             $('.menu li a').css('margin-top', '6px');
                             $('.menu li').css('float', 'none');
                             $('.menu li').css('color', '#fff');
                             $('.menu ul').css('overflow', 'initial');
                             $('.detail').css('visibility', 'visible');
                         });
                     });

                 });
             }

             $('.voting-btn').on('click', function() {
                 console.log('start voting');
                 $('.spec').hide();

                 if (selected_menu == "1") {
                     menu1_display();
                 } else if (selected_menu == "2") {
                     menu2_display();
                 } else if (selected_menu == "3") {
                     menu3_display();
                 } else {
                     menu4_display();
                 }


                 //$('#MENU').css('display', 'block');
                 //$('#MENU').css('margin-left', '0px');
                 //var tl = new TimelineMax()
                 //tl.staggerFrom(".item", 1, {
                 //    cycle: {
                 //        backgroundColor: ["red", "white", "#00f"],
                 //        x: [500]
                 //    }
                 //}, 0.5);
                 $('.menu li').unbind('mouseenter').unbind('mouseleave');

             });

             //在 HTML DOM 內 li 才有兄弟
             var menu_animate = function() {
                 $(".menu li").hover(function() {
                     $(this).stop(true, false).animate({
                         marginTop: 0
                     }, 800, "easeOutBounce");
                     $(this).next().stop(true, false).animate({
                         marginTop: 40
                     }, 900, "easeOutBack");
                     $(this).prev().stop(true, false).animate({
                         marginTop: 40
                     }, 900, "easeOutBack");
                 }, function() {
                     $(this).stop(true, false).animate({
                         marginTop: 56
                     }, 800, "easeOutBounce");
                     $(this).next().stop(true, false).animate({
                         marginTop: 56
                     }, 700, "easeOutBounce");
                     $(this).prev().stop(true, false).animate({
                         marginTop: 56
                     }, 700, "easeOutBounce");
                 });
             }

             menu_animate();
             connect();

             $('.kv-ltr-theme-fa-star').rating({
                 size: 'xs',
                 hoverOnClear: false,
                 theme: 'krajee-fa',
                 showCaption: false,
                 showClear: false
             });
         });

     </script>
 </body>

 </html>
