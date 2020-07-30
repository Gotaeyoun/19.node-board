const express = require('express');
const router = express.Router();
const pug = {headTitle:"Node/Express 갤러리", css: "gallery", js:"gallery"};
const {	upload	} = require('../modules/multer-con');

router.get(['/','/list','/list/:page'],(req,res,next) =>{
	res.send('리스트');
});

router.get(['/wr','/wr:/id'],(req,res,next) =>{
	pug.title = '갤러리 등록'
	res.render('gallery/gallery-wr.pug',pug);
});


router.get('/view/:id',(req,res,next) =>{
	res.send({	title: "상세보기"	});
});

router.get('/rev/:id',(req,res,next) =>{
	res.send('삭제');
});

router.get('/download/:file',(req,res,next) =>{
	res.send("다운로드");
});

router.post('/save',upload.single('upfile'),(req,res,next) =>{
	res.send("저장");
})

module.exports = router;