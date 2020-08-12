const {	alert	} = require('../modules/util');

const isAdmin = (req,res,next) => {
	if(req.session.user && req.session.user.grade == 9) next();
	else res.send(alert('정상적인 접근이 아닙니다.' ,'/'));
}

const isUser = (req,res,next) =>{
	if(req.session.user && req.session.user.userid) next();
	else res.send(alert('회원만 사용하실 수 있습니다. 로그인 후 사용하세요.' ,'/member/login'));
}

const isUserApi = (req,res,next) =>{
	if(req.session.user && req.session.user.userid) next();
	else res.json({error:{code:500, msg:'정상적인 접근이 아닙니다.'}});
}

const isGuest = (req,res,next) =>{
	if(!req.session.user || req.session.user.userid) next();
	else res.send(alert('정상적인 접근이 아닙니다. 로그아웃 후에 이용하세요.' ,'/'));
}

const isMine = (req,res,next) =>{
	
}

module.exports = {isAdmin , isUser, isGuest, isUserApi ,isMine};