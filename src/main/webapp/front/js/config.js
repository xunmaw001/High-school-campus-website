
/**
 * 轮播图配置
 */
var swiper = {
	// 设定轮播容器宽度，支持像素和百分比
	width: '100%',
	height: '400px',
	// hover（悬停显示）
	// always（始终显示）
	// none（始终不显示）
	arrow: 'none',
	// default（左右切换）
	// updown（上下切换）
	// fade（渐隐渐显切换）
	anim: 'default',
	// 自动切换的时间间隔
	// 默认3000
	interval: 2000,
	// 指示器位置
	// inside（容器内部）
	// outside（容器外部）
	// none（不显示）
	indicator: 'outside'
}

/**
 * 个人中心菜单
 */
var centerMenu = [{
	name: '个人中心',
	url: '../' + localStorage.getItem('userTable') + '/center.jsp'
}, 
{
	name: '我的发布',
	url: '../forum/list-my.jsp'
},

{
	name: '考试记录',
	url: '../examrecord/list.jsp'
}, 
{
	name: '错题本',
	url: '../examrecord/wrong.jsp'
},
]


var indexNav = [

{
	name: '校园概况',
	url: './pages/xiaoyuangaikuang/list.jsp'
}, 
{
	name: '名师风采',
	url: './pages/mingshifengcai/list.jsp'
}, 
{
	name: '校园公告',
	url: './pages/xiaoyuangonggao/list.jsp'
}, 

{
	name: '论坛信息',
	url: './pages/forum/list.jsp'
}, 
{
	name: '试卷列表',
	url: './pages/exampaper/list.jsp'
}, 
{
	name: '新闻资讯',
	url: './pages/news/list.jsp'
},
]

var adminurl =  "http://localhost:8080/jspmrp05j/index.jsp";

var cartFlag = false

var chatFlag = false




var menu = [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"教师","menuJump":"列表","tableName":"jiaoshi"}],"menu":"教师管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"学生","menuJump":"列表","tableName":"xuesheng"}],"menu":"学生管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"校园概况","menuJump":"列表","tableName":"xiaoyuangaikuang"}],"menu":"校园概况管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"名师风采","menuJump":"列表","tableName":"mingshifengcai"}],"menu":"名师风采管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"校园公告","menuJump":"列表","tableName":"xiaoyuangonggao"}],"menu":"校园公告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试卷管理","tableName":"exampaper"}],"menu":"试卷管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"试题管理","tableName":"examquestion"}],"menu":"试题管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"校园论坛","tableName":"forum"}],"menu":"校园论坛"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"校园资讯","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"},{"buttons":["查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"试卷列表","tableName":"exampaperlist"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"校园概况列表","menuJump":"列表","tableName":"xiaoyuangaikuang"}],"menu":"校园概况模块"},{"child":[{"buttons":["查看"],"menu":"名师风采列表","menuJump":"列表","tableName":"mingshifengcai"}],"menu":"名师风采模块"},{"child":[{"buttons":["查看"],"menu":"校园公告列表","menuJump":"列表","tableName":"xiaoyuangonggao"}],"menu":"校园公告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"校园概况","menuJump":"列表","tableName":"xiaoyuangaikuang"}],"menu":"校园概况管理"},{"child":[{"buttons":["查看"],"menu":"名师风采","menuJump":"列表","tableName":"mingshifengcai"}],"menu":"名师风采管理"},{"child":[{"buttons":["查看"],"menu":"校园公告","menuJump":"列表","tableName":"xiaoyuangonggao"}],"menu":"校园公告管理"},{"child":[{"buttons":["查看","新增","修改","删除"],"menu":"试题管理","tableName":"examquestion"}],"menu":"试题管理"},{"child":[{"buttons":["查看","新增","修改","删除"],"menu":"试卷管理","tableName":"exampaper"}],"menu":"试卷管理"},{"child":[{"buttons":["查看"],"menu":"校园资讯","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"},{"buttons":["新增","查看","修改","删除"],"menu":"试卷列表","tableName":"exampaperlist"},{"buttons":["查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"校园概况列表","menuJump":"列表","tableName":"xiaoyuangaikuang"}],"menu":"校园概况模块"},{"child":[{"buttons":["查看"],"menu":"名师风采列表","menuJump":"列表","tableName":"mingshifengcai"}],"menu":"名师风采模块"},{"child":[{"buttons":["查看"],"menu":"校园公告列表","menuJump":"列表","tableName":"xiaoyuangonggao"}],"menu":"校园公告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"否","roleName":"教师","tableName":"jiaoshi"},{"backMenu":[{"child":[{"buttons":["查看"],"menu":"校园概况","menuJump":"列表","tableName":"xiaoyuangaikuang"}],"menu":"校园概况管理"},{"child":[{"buttons":["查看"],"menu":"名师风采","menuJump":"列表","tableName":"mingshifengcai"}],"menu":"名师风采管理"},{"child":[{"buttons":["查看"],"menu":"校园公告","menuJump":"列表","tableName":"xiaoyuangonggao"}],"menu":"校园公告管理"},{"child":[{"buttons":["查看"],"menu":"校园资讯","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"考试记录","tableName":"examrecord"},{"buttons":["查看","修改","删除"],"menu":"错题本","tableName":"examfailrecord"},{"buttons":["查看"],"menu":"试卷列表","tableName":"exampaperlist"}],"menu":"考试管理"}],"frontMenu":[{"child":[{"buttons":["查看"],"menu":"校园概况列表","menuJump":"列表","tableName":"xiaoyuangaikuang"}],"menu":"校园概况模块"},{"child":[{"buttons":["查看"],"menu":"名师风采列表","menuJump":"列表","tableName":"mingshifengcai"}],"menu":"名师风采模块"},{"child":[{"buttons":["查看"],"menu":"校园公告列表","menuJump":"列表","tableName":"xiaoyuangonggao"}],"menu":"校园公告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"否","roleName":"学生","tableName":"xuesheng"}]


var isAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].backMenu.length;j++){
                for(let k=0;k<menus[i].backMenu[j].child.length;k++){
                    if(tableName==menus[i].backMenu[j].child[k].tableName){
                        let buttons = menus[i].backMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}

var isFrontAuth = function (tableName,key) {
    let role = localStorage.getItem("userTable");
    let menus = menu;
    for(let i=0;i<menus.length;i++){
        if(menus[i].tableName==role){
            for(let j=0;j<menus[i].frontMenu.length;j++){
                for(let k=0;k<menus[i].frontMenu[j].child.length;k++){
                    if(tableName==menus[i].frontMenu[j].child[k].tableName){
                        let buttons = menus[i].frontMenu[j].child[k].buttons.join(',');
                        return buttons.indexOf(key) !== -1 || false
                    }
                }
            }
        }
    }
    return false;
}
