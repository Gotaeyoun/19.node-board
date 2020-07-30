const multer = require('multer');
const moment = require('moment');
const path = require('path');
const fs = require('fs');
const {	v4:	uuid4	} = require('uuid');

//req, file: 사용자가 업로드한 파일, cb: 함수(err, folder명/file명)
const storage = multer.diskStorage({
	destination: (req,file,cb)=>{
		const result = makeFolder();
		result.err ? cb(err) : cb(result.folder)
	},
	filename: (req,file,cb) =>{
		cb(null, '파일명');
	}
});

const upload = multer({storage});

function makeFolder(){
	const result = {};
	//let name = moment().format('YYMMDD'); //200730
	let folder = path.join(__dirname, '../storage', moment().format('YYMMDD'));
	if(fs.existsSync(folder)){
		return result.folder = folder;
	}
	else{
		fs.mkdir(folder, (err) => {

		});
	}
}



module.exports = {	upload	};