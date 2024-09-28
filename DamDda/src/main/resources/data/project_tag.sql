INSERT INTO project_tag (project_id, tags_id)
VALUES 
((SELECT id FROM projects WHERE title = '한국 전통 게임 개발'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = '한국 전통 게임 개발'), (SELECT id FROM tags WHERE name = '전통 게임')),
((SELECT id FROM projects WHERE title = '한국 전통 게임 개발'), (SELECT id FROM tags WHERE name = '제작')),
((SELECT id FROM projects WHERE title = '한국 전통 게임 개발'), (SELECT id FROM tags WHERE name = '지속 가능')),
((SELECT id FROM projects WHERE title = '한국 전통 게임 개발'), (SELECT id FROM tags WHERE name = 'VR')),
((SELECT id FROM projects WHERE title = 'K-게임 대회 개최'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = 'K-게임 대회 개최'), (SELECT id FROM tags WHERE name = '대회')),
((SELECT id FROM projects WHERE title = 'K-게임 대회 개최'), (SELECT id FROM tags WHERE name = '팝업 스토어')),
((SELECT id FROM projects WHERE title = 'K-게임 대회 개최'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = 'K-게임 대회 개최'), (SELECT id FROM tags WHERE name = '인플루언서')),
((SELECT id FROM projects WHERE title = '전통 게임 VR 체험'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = '전통 게임 VR 체험'), (SELECT id FROM tags WHERE name = '전통 게임')),
((SELECT id FROM projects WHERE title = '전통 게임 VR 체험'), (SELECT id FROM tags WHERE name = 'VR')),
((SELECT id FROM projects WHERE title = '전통 게임 VR 체험'), (SELECT id FROM tags WHERE name = '체험')),
((SELECT id FROM projects WHERE title = '전통 게임 VR 체험'), (SELECT id FROM tags WHERE name = '예능')),
((SELECT id FROM projects WHERE title = 'K-게임 캐릭터 디자인 공모전'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = 'K-게임 캐릭터 디자인 공모전'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = 'K-게임 캐릭터 디자인 공모전'), (SELECT id FROM tags WHERE name = '리메이크')),
((SELECT id FROM projects WHERE title = 'K-게임 캐릭터 디자인 공모전'), (SELECT id FROM tags WHERE name = '웹툰')),
((SELECT id FROM projects WHERE title = 'K-게임 캐릭터 디자인 공모전'), (SELECT id FROM tags WHERE name = '제작')),
((SELECT id FROM projects WHERE title = 'K-게임 스토리 공모전'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = 'K-게임 스토리 공모전'), (SELECT id FROM tags WHERE name = '스토리')),
((SELECT id FROM projects WHERE title = 'K-게임 스토리 공모전'), (SELECT id FROM tags WHERE name = '제작')),
((SELECT id FROM projects WHERE title = 'K-게임 스토리 공모전'), (SELECT id FROM tags WHERE name = '지속 가능')),
((SELECT id FROM projects WHERE title = 'K-게임 스토리 공모전'), (SELECT id FROM tags WHERE name = '온라인 축제')),
((SELECT id FROM projects WHERE title = 'K-게임 팝업 스토어'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = 'K-게임 팝업 스토어'), (SELECT id FROM tags WHERE name = '팝업 스토어')),
((SELECT id FROM projects WHERE title = 'K-게임 팝업 스토어'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = 'K-게임 팝업 스토어'), (SELECT id FROM tags WHERE name = '전통 게임')),
((SELECT id FROM projects WHERE title = 'K-게임 팝업 스토어'), (SELECT id FROM tags WHERE name = '제작')),
((SELECT id FROM projects WHERE title = 'K-게임 OST 앨범 제작'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = 'K-게임 OST 앨범 제작'), (SELECT id FROM tags WHERE name = 'OST')),
((SELECT id FROM projects WHERE title = 'K-게임 OST 앨범 제작'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-게임 OST 앨범 제작'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = 'K-게임 OST 앨범 제작'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = 'K-게임 커뮤니티 구축'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = 'K-게임 커뮤니티 구축'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = 'K-게임 커뮤니티 구축'), (SELECT id FROM tags WHERE name = '온라인 축제')),
((SELECT id FROM projects WHERE title = 'K-게임 커뮤니티 구축'), (SELECT id FROM tags WHERE name = '전통 게임')),
((SELECT id FROM projects WHERE title = 'K-게임 커뮤니티 구축'), (SELECT id FROM tags WHERE name = 'VR')),
((SELECT id FROM projects WHERE title = 'K-게임 컨퍼런스 개최'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = 'K-게임 컨퍼런스 개최'), (SELECT id FROM tags WHERE name = '컨퍼런스')),
((SELECT id FROM projects WHERE title = 'K-게임 컨퍼런스 개최'), (SELECT id FROM tags WHERE name = '전시회')),
((SELECT id FROM projects WHERE title = 'K-게임 컨퍼런스 개최'), (SELECT id FROM tags WHERE name = '박람회')),
((SELECT id FROM projects WHERE title = 'K-게임 컨퍼런스 개최'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = '전통 게임 교육 클래스'), (SELECT id FROM tags WHERE name = '게임')),
((SELECT id FROM projects WHERE title = '전통 게임 교육 클래스'), (SELECT id FROM tags WHERE name = '전통 게임')),
((SELECT id FROM projects WHERE title = '전통 게임 교육 클래스'), (SELECT id FROM tags WHERE name = '교육')),
((SELECT id FROM projects WHERE title = '전통 게임 교육 클래스'), (SELECT id FROM tags WHERE name = '클래스')),
((SELECT id FROM projects WHERE title = '전통 게임 교육 클래스'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = '한복 패션쇼 개최'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = '한복 패션쇼 개최'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = '한복 패션쇼 개최'), (SELECT id FROM tags WHERE name = '전통 의상')),
((SELECT id FROM projects WHERE title = '한복 패션쇼 개최'), (SELECT id FROM tags WHERE name = '전시회')),
((SELECT id FROM projects WHERE title = '한복 패션쇼 개최'), (SELECT id FROM tags WHERE name = '전통 패션')),
((SELECT id FROM projects WHERE title = 'K-패션 브랜드 런칭'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = 'K-패션 브랜드 런칭'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = 'K-패션 브랜드 런칭'), (SELECT id FROM tags WHERE name = '브랜드')),
((SELECT id FROM projects WHERE title = 'K-패션 브랜드 런칭'), (SELECT id FROM tags WHERE name = '전시회')),
((SELECT id FROM projects WHERE title = 'K-패션 브랜드 런칭'), (SELECT id FROM tags WHERE name = '전통 패션')),
((SELECT id FROM projects WHERE title = '전통 의상 디자인 공모전'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = '전통 의상 디자인 공모전'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = '전통 의상 디자인 공모전'), (SELECT id FROM tags WHERE name = '전통 의상')),
((SELECT id FROM projects WHERE title = '전통 의상 디자인 공모전'), (SELECT id FROM tags WHERE name = '전시회')),
((SELECT id FROM projects WHERE title = '전통 의상 디자인 공모전'), (SELECT id FROM tags WHERE name = '전통 패션')),
((SELECT id FROM projects WHERE title = 'K-뷰티와 패션 콜라보'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = 'K-뷰티와 패션 콜라보'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = 'K-뷰티와 패션 콜라보'), (SELECT id FROM tags WHERE name = '브랜드')),
((SELECT id FROM projects WHERE title = 'K-뷰티와 패션 콜라보'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = 'K-뷰티와 패션 콜라보'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '지속 가능한 패션 캠페인'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = '지속 가능한 패션 캠페인'), (SELECT id FROM tags WHERE name = '지속 가능')),
((SELECT id FROM projects WHERE title = '지속 가능한 패션 캠페인'), (SELECT id FROM tags WHERE name = '캠페인')),
((SELECT id FROM projects WHERE title = '지속 가능한 패션 캠페인'), (SELECT id FROM tags WHERE name = '전통 패션')),
((SELECT id FROM projects WHERE title = 'K-패션 팝업 스토어'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = 'K-패션 팝업 스토어'), (SELECT id FROM tags WHERE name = '팝업 스토어')),
((SELECT id FROM projects WHERE title = 'K-패션 팝업 스토어'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = 'K-패션 팝업 스토어'), (SELECT id FROM tags WHERE name = '전통 패션')),
((SELECT id FROM projects WHERE title = '전통 패션 교육 클래스'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = '전통 패션 교육 클래스'), (SELECT id FROM tags WHERE name = '전통 의상')),
((SELECT id FROM projects WHERE title = '전통 패션 교육 클래스'), (SELECT id FROM tags WHERE name = '클래스')),
((SELECT id FROM projects WHERE title = '전통 패션 교육 클래스'), (SELECT id FROM tags WHERE name = '교육')),
((SELECT id FROM projects WHERE title = '전통 패션 교육 클래스'), (SELECT id FROM tags WHERE name = '클래스')),
((SELECT id FROM projects WHERE title = 'K-패션 전시회'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = 'K-패션 전시회'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = 'K-패션 전시회'), (SELECT id FROM tags WHERE name = '박람회')),
((SELECT id FROM projects WHERE title = 'K-패션 전시회'), (SELECT id FROM tags WHERE name = '전시회')),
((SELECT id FROM projects WHERE title = 'K-패션 전시회'), (SELECT id FROM tags WHERE name = '컨퍼런스')),
((SELECT id FROM projects WHERE title = '패션 인플루언서 프로젝트'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = '패션 인플루언서 프로젝트'), (SELECT id FROM tags WHERE name = '인플루언서')),
((SELECT id FROM projects WHERE title = '패션 인플루언서 프로젝트'), (SELECT id FROM tags WHERE name = '전통 의상')),
((SELECT id FROM projects WHERE title = '패션 인플루언서 프로젝트'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = '패션 인플루언서 프로젝트'), (SELECT id FROM tags WHERE name = '컨퍼런스')),
((SELECT id FROM projects WHERE title = '한복 리메이크 프로젝트'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = '한복 리메이크 프로젝트'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = '한복 리메이크 프로젝트'), (SELECT id FROM tags WHERE name = '전통 의상')),
((SELECT id FROM projects WHERE title = '한복 리메이크 프로젝트'), (SELECT id FROM tags WHERE name = '리메이크')),
((SELECT id FROM projects WHERE title = '한복 리메이크 프로젝트'), (SELECT id FROM tags WHERE name = '컨퍼런스')),
((SELECT id FROM projects WHERE title = '전통 한옥 복원 프로젝트'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '전통 한옥 복원 프로젝트'), (SELECT id FROM tags WHERE name = '문화유산')),
((SELECT id FROM projects WHERE title = '전통 한옥 복원 프로젝트'), (SELECT id FROM tags WHERE name = '지속 가능')),
((SELECT id FROM projects WHERE title = '전통 한옥 복원 프로젝트'), (SELECT id FROM tags WHERE name = '보호')),
((SELECT id FROM projects WHERE title = '전통 한옥 복원 프로젝트'), (SELECT id FROM tags WHERE name = '전통 건축')),
((SELECT id FROM projects WHERE title = '문화재 교육 프로그램'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '문화재 교육 프로그램'), (SELECT id FROM tags WHERE name = '문화유산')),
((SELECT id FROM projects WHERE title = '문화재 교육 프로그램'), (SELECT id FROM tags WHERE name = '교육')),
((SELECT id FROM projects WHERE title = '문화재 교육 프로그램'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = '문화재 교육 프로그램'), (SELECT id FROM tags WHERE name = '보호')),
((SELECT id FROM projects WHERE title = '전통 음악 앨범 제작'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '전통 음악 앨범 제작'), (SELECT id FROM tags WHERE name = '체험')),
((SELECT id FROM projects WHERE title = '전통 음악 앨범 제작'), (SELECT id FROM tags WHERE name = '전통 무용')),
((SELECT id FROM projects WHERE title = '전통 음악 앨범 제작'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = '전통 음악 앨범 제작'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = '문화재 보호 캠페인'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '문화재 보호 캠페인'), (SELECT id FROM tags WHERE name = '문화유산')),
((SELECT id FROM projects WHERE title = '문화재 보호 캠페인'), (SELECT id FROM tags WHERE name = '캠페인')),
((SELECT id FROM projects WHERE title = '문화재 보호 캠페인'), (SELECT id FROM tags WHERE name = '보호')),
((SELECT id FROM projects WHERE title = '문화재 보호 캠페인'), (SELECT id FROM tags WHERE name = '지속 가능')),
((SELECT id FROM projects WHERE title = '한국 전통 공예 전시회'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '한국 전통 공예 전시회'), (SELECT id FROM tags WHERE name = '공예')),
((SELECT id FROM projects WHERE title = '한국 전통 공예 전시회'), (SELECT id FROM tags WHERE name = '전시회')),
((SELECT id FROM projects WHERE title = '한국 전통 공예 전시회'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = '한국 전통 공예 전시회'), (SELECT id FROM tags WHERE name = '박람회')),
((SELECT id FROM projects WHERE title = '문화재 VR 체험'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '문화재 VR 체험'), (SELECT id FROM tags WHERE name = '문화유산')),
((SELECT id FROM projects WHERE title = '문화재 VR 체험'), (SELECT id FROM tags WHERE name = 'VR')),
((SELECT id FROM projects WHERE title = '문화재 VR 체험'), (SELECT id FROM tags WHERE name = '체험')),
((SELECT id FROM projects WHERE title = '문화재 VR 체험'), (SELECT id FROM tags WHERE name = '보호')),
((SELECT id FROM projects WHERE title = '전통 의상 제작 클래스'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '전통 의상 제작 클래스'), (SELECT id FROM tags WHERE name = '전통 의상')),
((SELECT id FROM projects WHERE title = '전통 의상 제작 클래스'), (SELECT id FROM tags WHERE name = '전통 패션')),
((SELECT id FROM projects WHERE title = '전통 의상 제작 클래스'), (SELECT id FROM tags WHERE name = '체험')),
((SELECT id FROM projects WHERE title = '전통 의상 제작 클래스'), (SELECT id FROM tags WHERE name = '클래스')),
((SELECT id FROM projects WHERE title = '전통 음식 복원 프로젝트'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '전통 음식 복원 프로젝트'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '전통 음식 복원 프로젝트'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = '전통 음식 복원 프로젝트'), (SELECT id FROM tags WHERE name = '보호')),
((SELECT id FROM projects WHERE title = '전통 음식 복원 프로젝트'), (SELECT id FROM tags WHERE name = '요리')),
((SELECT id FROM projects WHERE title = '한국 문화유산 다큐멘터리 제작'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '한국 문화유산 다큐멘터리 제작'), (SELECT id FROM tags WHERE name = '문화유산')),
((SELECT id FROM projects WHERE title = '한국 문화유산 다큐멘터리 제작'), (SELECT id FROM tags WHERE name = '다큐멘터리')),
((SELECT id FROM projects WHERE title = '한국 문화유산 다큐멘터리 제작'), (SELECT id FROM tags WHERE name = '체험')),
((SELECT id FROM projects WHERE title = '한국 문화유산 다큐멘터리 제작'), (SELECT id FROM tags WHERE name = '제작')),
((SELECT id FROM projects WHERE title = '문화재 수호자 양성 프로그램'), (SELECT id FROM tags WHERE name = '문화재')),
((SELECT id FROM projects WHERE title = '문화재 수호자 양성 프로그램'), (SELECT id FROM tags WHERE name = '문화유산')),
((SELECT id FROM projects WHERE title = '문화재 수호자 양성 프로그램'), (SELECT id FROM tags WHERE name = '체험')),
((SELECT id FROM projects WHERE title = '문화재 수호자 양성 프로그램'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = '문화재 수호자 양성 프로그램'), (SELECT id FROM tags WHERE name = '보호')),
((SELECT id FROM projects WHERE title = '한국 전통 김치 만들기'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '한국 전통 김치 만들기'), (SELECT id FROM tags WHERE name = '김치')),
((SELECT id FROM projects WHERE title = '한국 전통 김치 만들기'), (SELECT id FROM tags WHERE name = '장류')),
((SELECT id FROM projects WHERE title = '한국 전통 김치 만들기'), (SELECT id FROM tags WHERE name = '한식')),
((SELECT id FROM projects WHERE title = '한국 전통 김치 만들기'), (SELECT id FROM tags WHERE name = '클래스')),
((SELECT id FROM projects WHERE title = '한식 요리 클래스'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '한식 요리 클래스'), (SELECT id FROM tags WHERE name = '김치')),
((SELECT id FROM projects WHERE title = '한식 요리 클래스'), (SELECT id FROM tags WHERE name = '레시피')),
((SELECT id FROM projects WHERE title = '한식 요리 클래스'), (SELECT id FROM tags WHERE name = '한식')),
((SELECT id FROM projects WHERE title = '한식 요리 클래스'), (SELECT id FROM tags WHERE name = '차')),
((SELECT id FROM projects WHERE title = 'K-푸드 박람회'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = 'K-푸드 박람회'), (SELECT id FROM tags WHERE name = '김치')),
((SELECT id FROM projects WHERE title = 'K-푸드 박람회'), (SELECT id FROM tags WHERE name = '레시피')),
((SELECT id FROM projects WHERE title = 'K-푸드 박람회'), (SELECT id FROM tags WHERE name = '장류')),
((SELECT id FROM projects WHERE title = 'K-푸드 박람회'), (SELECT id FROM tags WHERE name = '박람회')),
((SELECT id FROM projects WHERE title = '한국 전통 떡 만들기'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '한국 전통 떡 만들기'), (SELECT id FROM tags WHERE name = '떡')),
((SELECT id FROM projects WHERE title = '한국 전통 떡 만들기'), (SELECT id FROM tags WHERE name = '레시피')),
((SELECT id FROM projects WHERE title = '한국 전통 떡 만들기'), (SELECT id FROM tags WHERE name = '한식')),
((SELECT id FROM projects WHERE title = '한국 전통 떡 만들기'), (SELECT id FROM tags WHERE name = '차')),
((SELECT id FROM projects WHERE title = '한식 디저트 개발'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '한식 디저트 개발'), (SELECT id FROM tags WHERE name = '디저트')),
((SELECT id FROM projects WHERE title = '한식 디저트 개발'), (SELECT id FROM tags WHERE name = '레시피')),
((SELECT id FROM projects WHERE title = '한식 디저트 개발'), (SELECT id FROM tags WHERE name = '한식')),
((SELECT id FROM projects WHERE title = '한식 디저트 개발'), (SELECT id FROM tags WHERE name = '차')),
((SELECT id FROM projects WHERE title = '한식 요리법 연구'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '한식 요리법 연구'), (SELECT id FROM tags WHERE name = '김치')),
((SELECT id FROM projects WHERE title = '한식 요리법 연구'), (SELECT id FROM tags WHERE name = '레시피')),
((SELECT id FROM projects WHERE title = '한식 요리법 연구'), (SELECT id FROM tags WHERE name = '장류')),
((SELECT id FROM projects WHERE title = '한식 요리법 연구'), (SELECT id FROM tags WHERE name = '한식')),
((SELECT id FROM projects WHERE title = '한국 전통 음료 개발'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '한국 전통 음료 개발'), (SELECT id FROM tags WHERE name = '레시피')),
((SELECT id FROM projects WHERE title = '한국 전통 음료 개발'), (SELECT id FROM tags WHERE name = '한식')),
((SELECT id FROM projects WHERE title = '한국 전통 음료 개발'), (SELECT id FROM tags WHERE name = '차')),
((SELECT id FROM projects WHERE title = '한국 전통 음료 개발'), (SELECT id FROM tags WHERE name = '제작')),
((SELECT id FROM projects WHERE title = '한식 배달 서비스 런칭'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '한식 배달 서비스 런칭'), (SELECT id FROM tags WHERE name = '디저트')),
((SELECT id FROM projects WHERE title = '한식 배달 서비스 런칭'), (SELECT id FROM tags WHERE name = '한식')),
((SELECT id FROM projects WHERE title = '한식 배달 서비스 런칭'), (SELECT id FROM tags WHERE name = '지속 가능')),
((SELECT id FROM projects WHERE title = '한식 배달 서비스 런칭'), (SELECT id FROM tags WHERE name = '요리')),
((SELECT id FROM projects WHERE title = '한식 셰프 클래스'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '한식 셰프 클래스'), (SELECT id FROM tags WHERE name = '김치')),
((SELECT id FROM projects WHERE title = '한식 셰프 클래스'), (SELECT id FROM tags WHERE name = '디저트')),
((SELECT id FROM projects WHERE title = '한식 셰프 클래스'), (SELECT id FROM tags WHERE name = '레시피')),
((SELECT id FROM projects WHERE title = '한식 셰프 클래스'), (SELECT id FROM tags WHERE name = '클래스')),
((SELECT id FROM projects WHERE title = '한식 조리 도구 개발'), (SELECT id FROM tags WHERE name = '전통 음식')),
((SELECT id FROM projects WHERE title = '한식 조리 도구 개발'), (SELECT id FROM tags WHERE name = '디저트')),
((SELECT id FROM projects WHERE title = '한식 조리 도구 개발'), (SELECT id FROM tags WHERE name = '식기')),
((SELECT id FROM projects WHERE title = '한식 조리 도구 개발'), (SELECT id FROM tags WHERE name = '장류')),
((SELECT id FROM projects WHERE title = '한식 조리 도구 개발'), (SELECT id FROM tags WHERE name = '한식')),
((SELECT id FROM projects WHERE title = '한국 드라마 OST 제작'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = '한국 드라마 OST 제작'), (SELECT id FROM tags WHERE name = 'K-드라마')),
((SELECT id FROM projects WHERE title = '한국 드라마 OST 제작'), (SELECT id FROM tags WHERE name = 'OST')),
((SELECT id FROM projects WHERE title = '한국 드라마 OST 제작'), (SELECT id FROM tags WHERE name = '리메이크')),
((SELECT id FROM projects WHERE title = '한국 드라마 OST 제작'), (SELECT id FROM tags WHERE name = '스토리')),
((SELECT id FROM projects WHERE title = '한류 웹툰 제작'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = '한류 웹툰 제작'), (SELECT id FROM tags WHERE name = '웹툰')),
((SELECT id FROM projects WHERE title = '한류 웹툰 제작'), (SELECT id FROM tags WHERE name = '팝업 스토어')),
((SELECT id FROM projects WHERE title = '한류 웹툰 제작'), (SELECT id FROM tags WHERE name = '애니메이션')),
((SELECT id FROM projects WHERE title = '한류 웹툰 제작'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = 'K-드라마 제작 지원'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-드라마 제작 지원'), (SELECT id FROM tags WHERE name = 'K-드라마')),
((SELECT id FROM projects WHERE title = 'K-드라마 제작 지원'), (SELECT id FROM tags WHERE name = 'OST')),
((SELECT id FROM projects WHERE title = 'K-드라마 제작 지원'), (SELECT id FROM tags WHERE name = '리메이크')),
((SELECT id FROM projects WHERE title = 'K-드라마 제작 지원'), (SELECT id FROM tags WHERE name = '스토리')),
((SELECT id FROM projects WHERE title = 'K-영화 프로모션'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-영화 프로모션'), (SELECT id FROM tags WHERE name = 'K-영화')),
((SELECT id FROM projects WHERE title = 'K-영화 프로모션'), (SELECT id FROM tags WHERE name = 'OST')),
((SELECT id FROM projects WHERE title = 'K-영화 프로모션'), (SELECT id FROM tags WHERE name = '팝업 스토어')),
((SELECT id FROM projects WHERE title = 'K-영화 프로모션'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = 'K-드라마 팬미팅 개최'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-드라마 팬미팅 개최'), (SELECT id FROM tags WHERE name = 'K-드라마')),
((SELECT id FROM projects WHERE title = 'K-드라마 팬미팅 개최'), (SELECT id FROM tags WHERE name = '팝업 스토어')),
((SELECT id FROM projects WHERE title = 'K-드라마 팬미팅 개최'), (SELECT id FROM tags WHERE name = '공연')),
((SELECT id FROM projects WHERE title = 'K-드라마 팬미팅 개최'), (SELECT id FROM tags WHERE name = '브랜드')),
((SELECT id FROM projects WHERE title = 'K-드라마 메이킹 필름 제작'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-드라마 메이킹 필름 제작'), (SELECT id FROM tags WHERE name = 'K-드라마')),
((SELECT id FROM projects WHERE title = 'K-드라마 메이킹 필름 제작'), (SELECT id FROM tags WHERE name = '다큐멘터리')),
((SELECT id FROM projects WHERE title = 'K-드라마 메이킹 필름 제작'), (SELECT id FROM tags WHERE name = '스토리')),
((SELECT id FROM projects WHERE title = 'K-드라마 메이킹 필름 제작'), (SELECT id FROM tags WHERE name = '브랜드')),
((SELECT id FROM projects WHERE title = 'K-드라마 굿즈 제작'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-드라마 굿즈 제작'), (SELECT id FROM tags WHERE name = 'K-드라마')),
((SELECT id FROM projects WHERE title = 'K-드라마 굿즈 제작'), (SELECT id FROM tags WHERE name = '다큐멘터리')),
((SELECT id FROM projects WHERE title = 'K-드라마 굿즈 제작'), (SELECT id FROM tags WHERE name = '디자인')),
((SELECT id FROM projects WHERE title = 'K-드라마 굿즈 제작'), (SELECT id FROM tags WHERE name = '브랜드')),
((SELECT id FROM projects WHERE title = 'K-드라마 리뷰 채널 운영'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-드라마 리뷰 채널 운영'), (SELECT id FROM tags WHERE name = 'K-드라마')),
((SELECT id FROM projects WHERE title = 'K-드라마 리뷰 채널 운영'), (SELECT id FROM tags WHERE name = '다큐멘터리')),
((SELECT id FROM projects WHERE title = 'K-드라마 리뷰 채널 운영'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = 'K-드라마 리뷰 채널 운영'), (SELECT id FROM tags WHERE name = 'OST')),
((SELECT id FROM projects WHERE title = 'K-콘텐츠 박람회 개최'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-콘텐츠 박람회 개최'), (SELECT id FROM tags WHERE name = 'K-드라마')),
((SELECT id FROM projects WHERE title = 'K-콘텐츠 박람회 개최'), (SELECT id FROM tags WHERE name = 'K-영화')),
((SELECT id FROM projects WHERE title = 'K-콘텐츠 박람회 개최'), (SELECT id FROM tags WHERE name = '웹툰')),
((SELECT id FROM projects WHERE title = 'K-콘텐츠 박람회 개최'), (SELECT id FROM tags WHERE name = '박람회')),
((SELECT id FROM projects WHERE title = 'K-영화 해외 상영회 개최'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-영화 해외 상영회 개최'), (SELECT id FROM tags WHERE name = 'K-영화')),
((SELECT id FROM projects WHERE title = 'K-영화 해외 상영회 개최'), (SELECT id FROM tags WHERE name = '전시회')),
((SELECT id FROM projects WHERE title = 'K-영화 해외 상영회 개최'), (SELECT id FROM tags WHERE name = '팝업 스토어')),
((SELECT id FROM projects WHERE title = 'K-영화 해외 상영회 개최'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = '아이돌 춤 배우기'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = '아이돌 춤 배우기'), (SELECT id FROM tags WHERE name = '아이돌')),
((SELECT id FROM projects WHERE title = '아이돌 춤 배우기'), (SELECT id FROM tags WHERE name = '아이돌댄스')),
((SELECT id FROM projects WHERE title = '아이돌 춤 배우기'), (SELECT id FROM tags WHERE name = '댄스')),
((SELECT id FROM projects WHERE title = '아이돌 춤 배우기'), (SELECT id FROM tags WHERE name = '공연')),
((SELECT id FROM projects WHERE title = '아이돌 메이크업 스타일'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = '아이돌 메이크업 스타일'), (SELECT id FROM tags WHERE name = '아이돌')),
((SELECT id FROM projects WHERE title = '아이돌 메이크업 스타일'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '아이돌 메이크업 스타일'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = '아이돌 메이크업 스타일'), (SELECT id FROM tags WHERE name = '패션')),
((SELECT id FROM projects WHERE title = 'K-POP 댄스 워크샵'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = 'K-POP 댄스 워크샵'), (SELECT id FROM tags WHERE name = '아이돌댄스')),
((SELECT id FROM projects WHERE title = 'K-POP 댄스 워크샵'), (SELECT id FROM tags WHERE name = '댄스')),
((SELECT id FROM projects WHERE title = 'K-POP 댄스 워크샵'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = 'K-POP 댄스 워크샵'), (SELECT id FROM tags WHERE name = '공연')),
((SELECT id FROM projects WHERE title = '아이돌 스타일 패션'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = '아이돌 스타일 패션'), (SELECT id FROM tags WHERE name = '아이돌')),
((SELECT id FROM projects WHERE title = '아이돌 스타일 패션'), (SELECT id FROM tags WHERE name = '스트릿 패션')),
((SELECT id FROM projects WHERE title = '아이돌 스타일 패션'), (SELECT id FROM tags WHERE name = 'K-패션')),
((SELECT id FROM projects WHERE title = '아이돌 스타일 패션'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = 'K-POP 역사 탐구'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = 'K-POP 역사 탐구'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-POP 역사 탐구'), (SELECT id FROM tags WHERE name = '아이돌')),
((SELECT id FROM projects WHERE title = 'K-POP 역사 탐구'), (SELECT id FROM tags WHERE name = '역사')),
((SELECT id FROM projects WHERE title = 'K-POP 역사 탐구'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = '아이돌 팬미팅 이벤트'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = '아이돌 팬미팅 이벤트'), (SELECT id FROM tags WHERE name = '아이돌')),
((SELECT id FROM projects WHERE title = '아이돌 팬미팅 이벤트'), (SELECT id FROM tags WHERE name = '댄스')),
((SELECT id FROM projects WHERE title = '아이돌 팬미팅 이벤트'), (SELECT id FROM tags WHERE name = '공연')),
((SELECT id FROM projects WHERE title = '아이돌 팬미팅 이벤트'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = 'K-POP 콘텐츠 제작'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = 'K-POP 콘텐츠 제작'), (SELECT id FROM tags WHERE name = 'OST')),
((SELECT id FROM projects WHERE title = 'K-POP 콘텐츠 제작'), (SELECT id FROM tags WHERE name = '공연')),
((SELECT id FROM projects WHERE title = 'K-POP 콘텐츠 제작'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = 'K-POP 콘텐츠 제작'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-POP 음반 제작'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = 'K-POP 음반 제작'), (SELECT id FROM tags WHERE name = 'OST')),
((SELECT id FROM projects WHERE title = 'K-POP 음반 제작'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = 'K-POP 음반 제작'), (SELECT id FROM tags WHERE name = '공연')),
((SELECT id FROM projects WHERE title = 'K-POP 음반 제작'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = 'K-POP 안무 제작'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = 'K-POP 안무 제작'), (SELECT id FROM tags WHERE name = '아이돌댄스')),
((SELECT id FROM projects WHERE title = 'K-POP 안무 제작'), (SELECT id FROM tags WHERE name = '댄스')),
((SELECT id FROM projects WHERE title = 'K-POP 안무 제작'), (SELECT id FROM tags WHERE name = '공연')),
((SELECT id FROM projects WHERE title = 'K-POP 안무 제작'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = '아이돌 팬아트 전시'), (SELECT id FROM tags WHERE name = 'K-팝')),
((SELECT id FROM projects WHERE title = '아이돌 팬아트 전시'), (SELECT id FROM tags WHERE name = '아이돌')),
((SELECT id FROM projects WHERE title = '아이돌 팬아트 전시'), (SELECT id FROM tags WHERE name = '음악')),
((SELECT id FROM projects WHERE title = '아이돌 팬아트 전시'), (SELECT id FROM tags WHERE name = '팝업 스토어')),
((SELECT id FROM projects WHERE title = '메이크업의 모든 것'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '메이크업의 모든 것'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = '메이크업의 모든 것'), (SELECT id FROM tags WHERE name = '인플루언서')),
((SELECT id FROM projects WHERE title = '메이크업의 모든 것'), (SELECT id FROM tags WHERE name = '피부 관리')),
((SELECT id FROM projects WHERE title = '메이크업의 모든 것'), (SELECT id FROM tags WHERE name = '교육')),
((SELECT id FROM projects WHERE title = '피부 관리 비법'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '피부 관리 비법'), (SELECT id FROM tags WHERE name = '피부 관리')),
((SELECT id FROM projects WHERE title = '피부 관리 비법'), (SELECT id FROM tags WHERE name = '클래스')),
((SELECT id FROM projects WHERE title = '피부 관리 비법'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = '피부 관리 비법'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = '뷰티 트렌드 분석'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '뷰티 트렌드 분석'), (SELECT id FROM tags WHERE name = '피부 관리')),
((SELECT id FROM projects WHERE title = '뷰티 트렌드 분석'), (SELECT id FROM tags WHERE name = '인플루언서')),
((SELECT id FROM projects WHERE title = '뷰티 트렌드 분석'), (SELECT id FROM tags WHERE name = '헤어')),
((SELECT id FROM projects WHERE title = '뷰티 트렌드 분석'), (SELECT id FROM tags WHERE name = '클래스')),
((SELECT id FROM projects WHERE title = '메이크업 도구 혁신'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '메이크업 도구 혁신'), (SELECT id FROM tags WHERE name = '피부 관리')),
((SELECT id FROM projects WHERE title = '메이크업 도구 혁신'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = '메이크업 도구 혁신'), (SELECT id FROM tags WHERE name = '트렌드')),
((SELECT id FROM projects WHERE title = '메이크업 도구 혁신'), (SELECT id FROM tags WHERE name = '화장품')),
((SELECT id FROM projects WHERE title = '헤어스타일링 트렌드'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '헤어스타일링 트렌드'), (SELECT id FROM tags WHERE name = '인플루언서')),
((SELECT id FROM projects WHERE title = '헤어스타일링 트렌드'), (SELECT id FROM tags WHERE name = '헤어')),
((SELECT id FROM projects WHERE title = '헤어스타일링 트렌드'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = '헤어스타일링 트렌드'), (SELECT id FROM tags WHERE name = '트렌드')),
((SELECT id FROM projects WHERE title = '스킨케어 제품 개발'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '스킨케어 제품 개발'), (SELECT id FROM tags WHERE name = '피부 관리')),
((SELECT id FROM projects WHERE title = '스킨케어 제품 개발'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = '스킨케어 제품 개발'), (SELECT id FROM tags WHERE name = '개발')),
((SELECT id FROM projects WHERE title = '뷰티 산업의 미래'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '뷰티 산업의 미래'), (SELECT id FROM tags WHERE name = '헤어')),
((SELECT id FROM projects WHERE title = '뷰티 산업의 미래'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = '뷰티 산업의 미래'), (SELECT id FROM tags WHERE name = '산업')),
((SELECT id FROM projects WHERE title = '뷰티 산업의 미래'), (SELECT id FROM tags WHERE name = '트렌드')),
((SELECT id FROM projects WHERE title = '뷰티 컨텐츠 제작'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '뷰티 컨텐츠 제작'), (SELECT id FROM tags WHERE name = '인플루언서')),
((SELECT id FROM projects WHERE title = '뷰티 컨텐츠 제작'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = '뷰티 컨텐츠 제작'), (SELECT id FROM tags WHERE name = 'K-콘텐츠')),
((SELECT id FROM projects WHERE title = '뷰티 컨텐츠 제작'), (SELECT id FROM tags WHERE name = '트렌드')),
((SELECT id FROM projects WHERE title = '글로벌 뷰티 트렌드'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '글로벌 뷰티 트렌드'), (SELECT id FROM tags WHERE name = '인플루언서')),
((SELECT id FROM projects WHERE title = '글로벌 뷰티 트렌드'), (SELECT id FROM tags WHERE name = '커뮤니티')),
((SELECT id FROM projects WHERE title = '글로벌 뷰티 트렌드'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = '글로벌 뷰티 트렌드'), (SELECT id FROM tags WHERE name = '트렌드')),
((SELECT id FROM projects WHERE title = '셀프 메이크업 클래스'), (SELECT id FROM tags WHERE name = '메이크업')),
((SELECT id FROM projects WHERE title = '셀프 메이크업 클래스'), (SELECT id FROM tags WHERE name = '피부 관리')),
((SELECT id FROM projects WHERE title = '셀프 메이크업 클래스'), (SELECT id FROM tags WHERE name = '클래스')),
((SELECT id FROM projects WHERE title = '셀프 메이크업 클래스'), (SELECT id FROM tags WHERE name = '뷰티')),
((SELECT id FROM projects WHERE title = '셀프 메이크업 클래스'), (SELECT id FROM tags WHERE name = '교육'));