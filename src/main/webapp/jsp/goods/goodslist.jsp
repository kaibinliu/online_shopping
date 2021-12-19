<%@ page import="onlineshopping.model.Repository" %>
<%@ page import="onlineshopping.model.Goods" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="onlineshopping.model.goodsDao.Repo" %>
<%@ page import="onlineshopping.model.Buyer" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" >
    <title>云购</title>
    <link rel="stylesheet" href="../../css/goods/yungou.css">
    <link rel="shortcut icon" type="image/x-icon" href="../../resources/img/yungouicon.png" />
    <script src="../../js/goods/yungou.js"></script>

    <script src="../../js/goods/iconfont.js"></script>
    <style>
        .icon {
            width: 1em; height: 1em;
            vertical-align: -0.15em;
            fill: currentColor;
            overflow: hidden;
            color:#9c9c9c;

        }
        .gouwuche,.gengduo{
            color: #ff6a05;
        }

    </style>
</head>
<body>
<%
    Repository repo= Repo.repo();
    ArrayList<Goods> glist=repo.getRepo();
    Iterator<Goods> giter =glist.iterator();
%>
<div class="all">
    <div class="site-nav">
        <div class="site-nav-center">
            <ul class="site-nav-center-l">
                <li>
                    <a href=""> 中国大陆</a>
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xiangxia"></use>
                    </svg>
                    <div class="site-nav-menu">
                        <ul>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                            <li>中国大陆</li>
                        </ul>
                    </div>

                </li>
                <li><a href="" style="color: #f22e00;">亲，请登录</a></li>
                <li><a href="">免费注册</a></li>
            </ul>

            <ul class="site-nav-center-r">
                <%
                    Buyer buyer = (Buyer)session.getAttribute("buyer");
                    if(null==buyer){
                %>
                <li>
                    <a href="../buyer/BuyerLogin.jsp">登录</a>
                </li>
                <li>
                    <a href="../buyer/BuyerRegister.jsp">注册</a>
                </li>
                <%}else{%>
                <li>
                    <a href="">我的云购</a>
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xiangxia"></use>
                    </svg>
                    <div class="site-nav-menu">
                        <ul>
                            <li><a href="../buyer/BuyerPurchaseHistory.jsp?id=<%=buyer.getBId()%>">已买到的宝贝</a></li>
                            <li><a href="../buyer/quit.jsp">退出登录</a></li>
                        </ul>
                    </div>
                </li>
                <li>
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-gouwuchekong" class=" gouwuche"></use>
                    </svg>
                    <a href="">购物车</a>
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xiangxia"></use>
                    </svg>
                </li>
                <li>
                    <a href="">收藏夹</a>
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-xiangxia"></use>
                    </svg>
                    <div class="site-nav-menu">
                        <ul>
                            <li>收藏的宝贝</li>
                            <li>收藏的店铺</li>
                        </ul>
                    </div>
                </li>
                <%}%>
            </ul>
        </div>
    </div>
    <div class="main">
        <div class="search">

            <img src="../../resources/img/logo.png" class="logo" alt="">

            <div class="search-btn">
                <div class="search-wrap">
                    <form action="../../Sousuo" class="search" method="post">
                        <div class="search-bd">
                            <div class="search-triggers">
                                <span>宝贝</span>
                            </div>
                            <div class="search-input-box">

                                    <input type="text" name="ss" placeholder="请输入...">
                                    <input type="submit" value="  ">

                            </div>
                        </div>
                    </form>
                    <div class="search-list">
                        <ul>
                            <li>新款连衣裙</li>
                            <li>四件套</li>
                            <li>潮流T恤</li>
                            <li>时尚女鞋</li>
                            <li>短裤</li>
                            <li>半身裙</li>
                            <li>男士外套</li>
                            <li>墙纸</li>
                            <li>行车记录仪</li>
                            <li>新款男鞋</li>
                            <li>耳机</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!--轮播图-->
        <div class="main-content">
            <div class="main-top">
                <ul>
                    <li id="ztsc"><a href="">主题市场</a> </li>
                    <li class="tm"><a href="">天猫</a> </li>
                    <li class="jhs"><a href="">聚划算</a></li>
                    <li class="tmcs"><a href="">天猫超市</a></li>
                    <li>|</li>
                    <li><a href="">司法拍卖</a></li>
                    <li><a href="">飞猪旅行</a></li>
                    <li><a href="">天天特卖</a></li>
                    <li><a href="">淘小铺</a> </li>
                    <li>|</li>
                    <li><a href="">造点新货</a></li>
                    <li><a href="">苏宁易购</a></li>
                    <li><a href="">淘宝心选</a></li>
                    <li><a href="">智能生活</a></li>
                </ul>
            </div>
            <!-- 第一部分 -->
            <div class="main-content1">
                <div class="service-list">
                    <ul>
                        <li>
                            <a href="#" class="service-list-t" onclick="window.location.href='../../Sousuocategory?goodleibie=母婴'">母婴</a>
                            <img class="xiangyou" src="../../resources/img/xiangyou.png" alt="">
                            <div class="service-detail">
                                <ul style="background-color: rebeccapurple;">
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=奶粉'">奶粉</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=纸尿裤'">纸尿裤</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=营养品'">营养品</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=辅食'">辅食</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=喂养'">喂养</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=洗护用品'">洗护用品</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=洗涤用品'">洗涤用品</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=玩具'">玩具</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="service-list-t" onclick="window.location.href='../../Sousuocategory?goodleibie=美妆'">美妆</a>
                            <img class="xiangyou" src="../../resources/img/xiangyou.png" alt="">

                            <div class="service-detail">
                                <ul style="background-color: #ff6a05;">
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=面部护理'">面部护理</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=面膜'">面膜</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=彩妆'">彩妆</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=面霜精华'">面露精华</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=个人护理'">个人护理</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=护肤套装'">护肤套装</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=香水'">香水</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=洗发护发'">洗发护发</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="service-list-t" onclick="window.location.href='../../Sousuocategory?goodleibie=数码'">数码</a>
                            <img class="xiangyou" src="../../resources/img/xiangyou.png" alt="">
                            <div class="service-detail">
                                <ul style="background-color: rosybrown;">
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=耳机'">耳机</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=手机'">手机</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=电脑'">电脑</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=数码照摄'">数码照摄</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=生活电器'">生活电器</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=音箱'">音箱</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=美容个护'">美容个护</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=剃须刀'">剃须刀</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="service-list-t" onclick="window.location.href='../../Sousuocategory?goodleibie=美食'">美食</a>
                            <img class="xiangyou" src="../../resources/img/xiangyou.png" alt="">
                            <div class="service-detail">
                                <ul style="background-color: burlywood;">
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=牛奶饮品'">牛奶饮品</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口饮用'">进口饮用</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口休食'">进口休食</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口红酒'">进口红酒</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=方便速食'">方便速食</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口咖啡'">进口咖啡</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=懒人早餐'">懒人早餐</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=饼干糕点'">饼干糕点</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="service-list-t" onclick="window.location.href='../../Sousuocategory?goodleibie=时尚'">时尚</a>
                            <img class="xiangyou" src="../../resources/img/xiangyou.png" alt="">
                            <div class="service-detail">
                                <ul>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=时尚箱包'">时尚箱包</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=轻奢腕表'">轻奢腕表</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=珠宝首饰'">珠宝首饰</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=运动装备'">运动装备</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=潮流服装'">潮流服装</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=腰带配饰'">腰带配饰</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=时尚鞋靴'">时尚鞋靴</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=精品内衣'">精品内衣</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="service-list-t" onclick="window.location.href='../../Sousuocategory?goodleibie=家居'">家居</a>
                            <img class="xiangyou" src="../../resources/img/xiangyou.png" alt="">
                            <div class="service-detail">
                                <ul>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=锅具厨具'">锅具厨具</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=生活净水'">生活净水</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=水杯水壶'">水杯水壶</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=家居家纺'">家居家纺</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=衣物洗护'">衣物洗护</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口机油'">进口机油</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=办公文具'">办公文具</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=家居清洁'">家居清洁</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="service-list-t" onclick="window.location.href='../../Sousuocategory?goodleibie=健康'">健康</a>
                            <img class="xiangyou" src="../../resources/img/xiangyou.png" alt="">
                            <div class="service-detail">
                                <ul>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=魅力女性'">魅力女性</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=男性健康'">男性健康</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=减肥运动'">减肥运动</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=关节骨骼'">关节骨骼</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=心脑血管'">心脑血管</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=孕婴儿童'">孕婴儿童</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=元素补充'">元素补充</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=传统滋补'">传统滋补</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a href="#" class="service-list-t" onclick="window.location.href='../../Sousuocategory?goodleibie=车品'">车品</a>
                            <img class="xiangyou" src="../../resources/img/xiangyou.png" alt="">
                            <div class="service-detail">
                                <ul>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=半合成机油'">半合成机油</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=全合成机油'">全合成机油</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=美版机油'">美版机油</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=欧版机油'">欧版机油</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=小容量'">小容量</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=大容量'">大容量</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=品牌专用'">品牌专用</a></li>
                                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=汽车周边'">汽车周边</a></li>

                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="core">
                    <div class="box">
                        <div class="box-1">
                            <ul>
                                <%
                                    int count=0;
                                    while(giter.hasNext() && count++<8){
                                        Goods g1=null;
                                        g1=giter.next();%>
                                <li onclick="window.location.href='../../Sousuoid?id=<%=g1.getGId()%>'">
                                    <img src=<%=g1.getGPicture().split(";")[0]%>>
                                </li><%}%>
                            </ul>
                        </div>
                        <div class="box-2">
                            <ul>

                            </ul>
                        </div>
                        <div class="box-3">
                            <span class="prev"> < </span>
                            <span class="next"> > </span>
                        </div>
                    </div>
                    <div class="Tmall">
                        <div class="Tmall-title">
                            <img src="../../resources/img/tmall.png" alt="">
                            <span>理想生活上天猫</span>
                        </div>
                        <div class="Tmall-detail">
                            <img src="../../resources/img/tm1.jpg" alt="">
                            <img src="../../resources/img/tm2.jpg" alt="">
                        </div>
                    </div>
                </div>

                <div class="sub-column">
                    <!-- 上 -->
                    <div class="tbn-focus">
                        <img class="focus-img" src="../../resources/img/tab1.png" alt="">
                    </div>
                    <!-- 下 -->
                    <div class="hb-tanx-down">
                        <h5>今日热卖</h5>
                        <div class="tanx">
                            <img src="../../resources/img/tab2.png" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-right">
                    <div class="member">
                        <div class="member-bd">
                            <div class="tx">
                                <img src="../../resources/img/touxiang.jpg" alt="">

                            </div>
                            <span>hi,你好！</span>
                            <%

                                if(null==buyer){
                            %>
                            <div class="member-bd-btnbox">
                                <a href="../buyer/BuyerLogin.jsp" class="member-bd-btn">登录</a>
                                <a href="../buyer/BuyerRegister.jsp" class="member-bd-btn">注册</a>
                                <a href="../seller/SellerLogin.jsp" class="member-bd-btn">管理店铺</a>
                            </div>
                            <%}%>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 第二部分 -->
            <div class="main-content2">
                <h3 class="goods-hd">有好货</h3>
                <span class="goods-hd2">全名口碑</span>
                <div class="goods-list">
                    <ul>
                        <li style="box-shadow: none;">
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g1.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" class="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <p class="info-text2">这款针织帽风格休闲可爱，帽口双面装饰设计，非常有层次感，带上也会更舒服，简约的外型，柔软的纯羊绒面料，既美观又保暖。</p>
                                </dix>
                            </a>
                        </li>
                        <li style="box-shadow: none;">
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g2.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" class="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <p class="info-text2">这款针织帽风格休闲可爱，帽口双面装饰设计，非常有层次感，带上也会更舒服，简约的外型，柔软的纯羊绒面料，既美观又保暖。</p>
                                </dix>
                            </a>
                        </li>
                        <li style="box-shadow: none;">
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g3.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" class="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <p class="info-text2">这款针织帽风格休闲可爱，帽口双面装饰设计，非常有层次感，带上也会更舒服，简约的外型，柔软的纯羊绒面料，既美观又保暖。</p>
                                </dix>
                            </a>
                        </li>
                        <li style="box-shadow: none;">
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g4.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" class="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <p class="info-text2">这款针织帽风格休闲可爱，帽口双面装饰设计，非常有层次感，带上也会更舒服，简约的外型，柔软的纯羊绒面料，既美观又保暖。</p>
                                </dix>
                            </a>
                        </li>
                        <li style="box-shadow: none;">
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g5.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" class="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <p class="info-text2">这款针织帽风格休闲可爱，帽口双面装饰设计，非常有层次感，带上也会更舒服，简约的外型，柔软的纯羊绒面料，既美观又保暖。</p>
                                </dix>
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
            <!-- 第四部分 -->
            <div class="main-content4">
                <h3 class="goods-hd">猜你喜欢</h3>
                <span class="goods-hd2">个性推荐</span>
                <div class="goods-list">
                    <ul>
                        <li>
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g6.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" id="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <!-- <span id="info-text2">￥</span> -->
                                    <span id="info-text3"> 81</span>
                                    <span id="info-text4">45人购买</span>
                                </dix>
                                <div class="similar">
                                    <div class="similar-detail">查找相似</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g7.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" id="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <!-- <span id="info-text2">￥</span> -->
                                    <span id="info-text3"> 44</span>
                                    <span id="info-text4">67人购买</span>
                                </dix>
                                <div class="similar">
                                    <div class="similar-detail">查找相似</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g8.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" id="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <!-- <span id="info-text2">￥</span> -->
                                    <span id="info-text3"> 5.9</span>
                                    <span id="info-text4">78人购买</span>
                                </dix>
                                <div class="similar">
                                    <div class="similar-detail">查找相似</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g9.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" id="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <!-- <span id="info-text2">￥</span> -->
                                    <span id="info-text3"> 63</span>
                                    <span id="info-text4">99人购买</span>
                                </dix>
                                <div class="similar">
                                    <div class="similar-detail">查找相似</div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="goods-img">
                                    <img src="../../resources/img/g10.jpg" alt="">
                                </div>
                                <dix class="goods-info">
                                    <a href="" id="info-text1"> Pure Cashmere保暖针织帽</a>
                                    <!-- <span id="info-text2">￥</span> -->
                                    <span id="info-text3"> 96</span>
                                    <span id="info-text4">22人购买</span>
                                </dix>
                                <div class="similar">
                                    <div class="similar-detail">查找相似</div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- end部分 -->
            <div class="main-content5">
                <img src="../../resources/img/end.png" alt="">
            </div>
        </div>
    </div>
</div>
</body>
