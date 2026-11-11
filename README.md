# 가계부

### 👉 [가계부 바로 열기](https://moonsookchoi.github.io/gagyebu/)

회원 기능 없이 쓰는 간단한 가계부예요. 내역은 Supabase에 저장돼요.

- 수입/지출 내역 추가 (아이콘 카테고리)
- 월별 잔액, 주별 통계, 카테고리별 지출
- 데이터는 Supabase `entries` 테이블에 저장 (JSON 백업/불러오기, CSV 내보내기)
- 테이블 생성 SQL: [supabase/schema.sql](supabase/schema.sql)

## 사용법

위의 **가계부 바로 열기** 링크를 누르면 바로 쓸 수 있어요.
로그인이 없어서 사이트 주소를 아는 누구나 내역을 보고 지울 수 있어요.

## 함께 만든 프로젝트

- 🍠 [고구마마켓](https://github.com/moonsookchoi/goguma-market) — 우리 동네 중고거래 사이트 (Next.js + Supabase). 이 가계부와 같은 Supabase 프로젝트를 써요.
