# Pager의 알고리즘

## 필요한 값
	-**pager**: 현재 페이지
	-total:모든 목록의 갯수
	-**cnt**:한 페이지에 보여질 목록 수
	-stRec: 시작 레코드 Index(LIMIT stRec, cnt)

### 페이저를 구성하기 위한 값 
	-**grp** : 페이저 세트당 페이지 수 (예: grp:3 -->1.2.3 / 4.5.6)
	-lastPage: 마지막 페이지 번호
	-grpSt: 페이저 세트에서 처음 페이지 (예: page:5, grp: 3 --> 4.5.6 이떄의 4)
	-grpEd: 페이저의 세트에서 마지막 페이지 (예: page:5, grp:3 --> 4.5.6 이때의 6)

### 값들을 찾기 위한 알고리즘
**total**
```sql
	SELECT COUNT(*) FROM 테이블명 (WHERE writer='홍길동';)
```
**stRec**:(page - 1) * cnt
```sql
SELECT * FROM 테이블명 (WHERE writer='홍길동' BY id DESC) LIMIT strec, cnt;
```
**lastPage** Math.ceil(total / cnt)

**grpSt** Math.floor((page - 1) / grp) * grp + 1;

**grpEd** 
	1. grpEd = grpSt + grp - 1; (예외처리 : 4.5.6 세트에서 lastPage가 5면 6은 안나와야 함)
	2. grpEd = (grpEd > lastPage) ? lastPage: grpEd