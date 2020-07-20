/*************** 외부모듈 *****************/
const express = require('express');
const app = express();
const path = require('path');
require('dotenv').config();
/*************** 절대경로 *****************/
const publicPath = path.join(__dirname, './public'); // 'c:\...\public'
const jsonPath = path.join(__dirname, './json');
const viewsPath = path.join(__dirname, './views');

/*************** 라우터 *****************/
const gbookRouter = require('./router/gbook');
const boardRouter = require('./router/board');
const memberRouter = require('./router/member');


/*************** 서버실행 *****************/
app.listen(process.env.PORT, () => { console.log('http://127.0.0.1:'+process.env.PORT) });

/*************** 뷰 엔진 *****************/
app.set('view engine', 'pug');
app.set('views', viewsPath);
app.locals.pretty = true;
app.locals.headTitle = '노드 게시판';
app.locals.navis = [
	{name:'방명록.mySQL',link:'/gbook'},
	{name:'게시판.mySQL',link:'/board'},
	{name:'갤러리.Sequelize',link:'/gallery'},
	{name:'트위터.MongoDB',link:'/twitter'},
	{name:'회원가입.Passport',link:'/member/join'},
	{name:'로그인',link:'/member/login'},
	{name:'로그아웃',link:'/member/logout'}
]

/***** AJAX/POST 데이터를 json으로 변경 ******/
app.use(express.json());
app.use(express.urlencoded({extended: false}));

/*************** 라우터 세팅 *****************/
app.use('/', express.static(publicPath));
app.use('/board', boardRouter);
app.use('/member', memberRouter);
app.use('/gbook',gbookRouter);
/*************** 오류 처리 *****************/
app.use((req, res, next) => {
	const err = new Error();
	err.code = 404;
	err.msg = '요청하신 페이지를 찾을 수 없습니다.';
	next(err);
});

app.use((error, req, res, next) => {
	const code = error.code || 500;
	const msg = error.msg || '서버 내부 오류 입니다. 관리자에게 문의하세요.';
	res.render('error.pug', { code, msg });
});