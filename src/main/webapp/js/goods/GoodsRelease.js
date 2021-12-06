tinymce.init({
    selector: '#textarea',
    //skin:'oxide-dark',
    language:'zh_CN',
    plugins: 'print preview searchreplace autolink directionality visualblocks visualchars fullscreen image link media template code codesample table charmap hr pagebreak nonbreaking anchor insertdatetime advlist lists wordcount imagetools textpattern help emoticons autosave bdmap indent2em autoresize formatpainter axupimgs',
    toolbar: 'code undo redo restoredraft | cut copy paste pastetext | forecolor backcolor bold italic underline strikethrough link anchor | alignleft aligncenter alignright alignjustify outdent indent | \
    styleselect formatselect fontselect fontsizeselect | bullist numlist | blockquote subscript superscript removeformat | \
    table image media charmap emoticons hr pagebreak insertdatetime print preview | fullscreen | bdmap indent2em lineheight formatpainter axupimgs',
    height: 650, //编辑器高度
    min_height: 400,
    /*content_css: [ //可设置编辑区内容展示的css，谨慎使用
        '/static/reset.css',
        '/static/ax.css',
        '/static/css.css',
    ],*/
    fontsize_formats: '12px 14px 16px 18px 24px 36px 48px 56px 72px',
    font_formats: '微软雅黑=Microsoft YaHei,Helvetica Neue,PingFang SC,sans-serif;苹果苹方=PingFang SC,Microsoft YaHei,sans-serif;宋体=simsun,serif;仿宋体=FangSong,serif;黑体=SimHei,sans-serif;Arial=arial,helvetica,sans-serif;Arial Black=arial black,avant garde;Book Antiqua=book antiqua,palatino;',
    images_upload_url: '/onlineshopping_war_exploded/PublicController',
    images_upload_base_path: 'http://localhost:8080/',
});
var list=[
    ["奶粉","纸尿裤","营养品","辅食","喂养","洗护用品","洗涤用品","玩具"],
    ["面部护理","面膜","彩妆","面露精华","个人护理","护肤套装","香水","洗发护发"],
    ["耳机","手机","电脑","数码照摄","生活电器","音箱","美容个护","剃须刀"],
    ["牛奶饮品","进口饮用","进口休食","进口红酒","方便速食","进口咖啡","懒人早餐","饼干糕点"],
    ["时尚箱包","轻奢腕表","珠宝首饰","运动装备","潮流服装","腰带配饰","时尚鞋靴","精品内衣"],
    ["锅具厨具","生活净水","水杯水壶","家居家纺","衣物洗护","进口机油","办公文具","家居清洁"],
    ["魅力女性","男性健康","减肥运动","关节骨骼","心脑血管","孕婴儿童","元素补充","传统滋补"],
    ["半合成机油","全合成机油","美版机油","欧版机油","小容量","大容量","品牌专用","汽车周边"]
];
function getCategory(){
    var Categoryone=document.form.categoryone;
    var Categorytwo=document.form.categorytwo;
    var sonlist=list[Categoryone.selectedIndex];
    if(Categoryone.options.length==9){
        var sonlist=list[Categoryone.selectedIndex-1];
        Categoryone.removeChild(Categoryone.options[0]);}
    for(var i=0;i<sonlist.length;i++){
        Categorytwo[i]=new Option(sonlist[i],sonlist[i]);
    }
}