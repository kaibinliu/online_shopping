<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/12/7
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../../css/goods/soft.css">
</head>
<body>
<div class="background">
    <form action="../../Sousuo" class="search" method="post">
        <input type="text" name="ss" placeholder="请输入...">
        <input type="submit" value="搜索">
    </form>
    <div class="nav">
        <ul>
            <li class="dropdown-nav"><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=母婴'">母婴</a>
                <ul class="sec-nav">
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=奶粉'">奶粉</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=纸尿裤'">纸尿裤</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=营养品'">营养品</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=辅食'">辅食</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=喂养'">喂养</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=洗护用品'">洗护用品</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=洗涤用品'">洗涤用品</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=玩具'">玩具</a></li>
                </ul>
            </li>
            <li class="dropdown-nav"><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=美妆'">美妆</a>
                <ul class="sec-nav">
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=面部护理'">面部护理</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=面膜'">面膜</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=彩妆'">彩妆</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=面霜精华'">面露精华</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=个人护理'">个人护理</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=护肤套装'">护肤套装</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=香水'">香水</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=洗发护发'">洗发护发</a></li>
                </ul>
            </li>
            <li class="dropdown-nav"><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=数码'">数码</a>
                <ul class="sec-nav">
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=耳机'">耳机</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=手机'">手机</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=电脑'">电脑</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=数码照摄'">数码照摄</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=生活电器'">生活电器</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=音箱'">音箱</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=美容个护'">美容个护</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=剃须刀'">剃须刀</a></li>
                </ul>
            </li>
            <li class="dropdown-nav"><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=美食'">美食</a>
                <ul class="sec-nav">
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=牛奶饮品'">牛奶饮品</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口饮用'">进口饮用</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口休食'">进口休食</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口红酒'">进口红酒</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=方便速食'">方便速食</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口咖啡'">进口咖啡</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=懒人早餐'">懒人早餐</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=饼干糕点'">饼干糕点</a></li>
                </ul>
            </li>
            <li class="dropdown-nav"><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=时尚'">时尚</a>
                <ul class="sec-nav">
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=时尚箱包'">时尚箱包</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=轻奢腕表'">轻奢腕表</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=珠宝首饰'">珠宝首饰</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=运动装备'">运动装备</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=潮流服装'">潮流服装</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=腰带配饰'">腰带配饰</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=时尚鞋靴'">时尚鞋靴</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=精品内衣'">精品内衣</a></li>
                </ul>
            </li>
            <li class="dropdown-nav"><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=家居'">家居</a>
                <ul class="sec-nav">
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=锅具厨具'">锅具厨具</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=生活净水'">生活净水</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=水杯水壶'">水杯水壶</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=家居家纺'">家居家纺</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=衣物洗护'">衣物洗护</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=进口机油'">进口机油</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=办公文具'">办公文具</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=家居清洁'">家居清洁</a></li>
                </ul>
            </li>
            <li class="dropdown-nav"><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=健康'">健康</a>
                <ul class="sec-nav">
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=魅力女性'">魅力女性</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=男性健康'">男性健康</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=减肥运动'">减肥运动</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=关节骨骼'">关节骨骼</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=心脑血管'">心脑血管</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=孕婴儿童'">孕婴儿童</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=元素补充'">元素补充</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=传统滋补'">传统滋补</a></li>
                </ul>
            </li>
            <li class="dropdown-nav"><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=车品'">车品</a>
                <ul class="sec-nav">
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=半合成机油'">半合成机油</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=全合成机油'">全合成机油</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=美版机油'">美版机油</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=欧版机油'">欧版机油</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=小容量'">小容量</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=大容量'">大容量</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=品牌专用'">品牌专用</a></li>
                    <li><a href="#" onclick="window.location.href='../../Sousuocategory?goodleibie=汽车周边'">汽车周边</a></li>
                </ul>
            </li>

        </ul>
    </div>
</div>
</body>
</html>
