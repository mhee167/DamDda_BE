-- Insert rewards
INSERT INTO project_rewards (id, option_list, option_type, reward_name)
VALUES (1, '["기본", "프리미엄"]', 'level', '메이크업 키트'),
       (2, '["스킨", "로션", "에센스"]', 'product', '피부 관리 세트'),
       (3, '["트렌드 분석 보고서", "개인 컨설팅"]', 'service', '뷰티 트렌드 분석'),
       (4, '["브러시 세트", "스펀지 세트"]', 'tool', '메이크업 도구 세트'),
       (5, '["숏컷", "미디엄", "롱"]', 'style', '헤어스타일링 가이드'),
       (6, '["수분", "미백", "주름개선"]', 'effect', '스킨케어 제품'),
       (7, '["리포트", "세미나 참석권"]', 'content', '뷰티 산업 분석'),
       (8, '["메이크업", "스킨케어", "헤어"]', 'category', '뷰티 콘텐츠 구독권'),
       (9, '["아시아", "유럽", "미국"]', 'region', '글로벌 뷰티 트렌드 북'),
       (10, '["초급", "중급", "고급"]', 'level', '셀프 메이크업 강좌'),
       (11, '["방탄소년단", "블랙핑크", "트와이스"]', 'group', '아이돌 댄스 클래스'),
       (12, '["내추럴", "스모키", "글리터"]', 'style', '아이돌 메이크업 키트'),
       (13, '["1일 체험", "1주일 코스", "1개월 집중 코스"]', 'duration', 'K-POP 댄스 워크샵'),
       (14, '["캐주얼", "스트릿", "무대의상"]', 'style', '아이돌 패션 아이템'),
       (15, '["60년대", "90년대", "현재"]', 'era', 'K-POP 역사 도감'),
       (16, '["온라인", "오프라인"]', 'type', '아이돌 팬미팅 티켓'),
       (17, '["촬영 장비", "편집 소프트웨어", "기획 가이드"]', 'tool', 'K-POP 콘텐츠 제작 키트'),
       (18, '["작사 체험", "작곡 체험", "녹음 체험"]', 'experience', 'K-POP 음반 제작 체험'),
       (19, '["기초", "응용", "창작"]', 'level', 'K-POP 안무 창작 클래스'),
       (20, '["디지털 이미지", "인쇄물", "굿즈"]', 'format', '팬아트 제작 키트'),
       (21, '["OST 앨범", "메이킹 영상", "캐스팅 참여 기회"]', 'item', '한국 드라마 OST 패키지'),
       (22, '["스토리보드 템플릿", "캐릭터 디자인 가이드", "출판 컨설팅"]', 'tool', '웹툰 제작 키트'),
       (23, '["시나리오 작성 가이드", "연기 클래스", "촬영 현장 방문권"]', 'experience', 'K-드라마 제작 참여'),
       (24, '["영화 티켓", "팝콘 세트", "영화 포스터"]', 'item', 'K-영화 프리미어 패키지'),
       (25, '["배우 사인회", "대본 리딩 참관", "촬영장 방문"]', 'event', 'K-드라마 팬미팅 이벤트'),
       (26, '["인터뷰 영상", "NG 모음집", "비하인드 포토북"]', 'content', '드라마 메이킹 필름 세트'),
       (27, '["포토카드", "폰케이스", "키링"]', 'item', 'K-드라마 굿즈 세트'),
       (28, '["리뷰 작성 가이드", "촬영 장비", "편집 소프트웨어"]', 'tool', '드라마 리뷰 채널 스타터 키트'),
       (29, '["VIP 입장권", "기념품", "강연 참가권"]', 'ticket', 'K-콘텐츠 박람회 패키지'),
       (30, '["영화 티켓", "팝콘", "기념 포스터"]', 'item', 'K-영화 해외 상영회 패키지'),
       (31, '["동영상", "텍스트"]', 'format', '메이크업 튜토리얼'),
       (32, '["브러쉬 세트", "스펀지 세트"]', 'tool', '메이크업 도구');

-- Insert packages
INSERT INTO project_packages (id, package_name, package_price, quantity_limited, sales_quantity)
VALUES (1, '메이크업 기본 패키지', 50000, 100, 0),
       (31, '메이크업 프리미엄 패키지', 100000, 50, 0),
       (32, '메이크업 VIP 패키지', 200000, 20, 0),
       (2, '피부 관리 완벽 세트', 150000, 30, 0),
       (3, '뷰티 트렌드 인사이더 패키지', 200000, 20, 0),
       (4, '프로 메이크업 아티스트 키트', 250000, 25, 0),
       (5, '헤어스타일 변신 패키지', 120000, 40, 0),
       (6, '스킨케어 풀 패키지', 180000, 35, 0),
       (7, '뷰티 비즈니스 인사이트 패키지', 300000, 15, 0),
       (8, '뷰티 크리에이터 스타터 팩', 220000, 30, 0),
       (9, '글로벌 뷰티 마스터 세트', 280000, 20, 0),
       (10, '셀프 뷰티 프로 패키지', 150000, 50, 0),
       (11, 'K-POP 댄스 마스터 세트', 200000, 30, 0),
       (12, '아이돌 뷰티 시크릿 패키지', 180000, 40, 0),
       (13, 'K-POP 퍼포먼스 완성 패키지', 250000, 25, 0),
       (14, '아이돌 패션 올인원 세트', 220000, 35, 0),
       (15, 'K-POP 역사 탐구 스페셜 에디션', 150000, 50, 0),
       (16, '아이돌 팬미팅 VIP 패키지', 300000, 20, 0),
       (17, 'K-POP 콘텐츠 크리에이터 키트', 280000, 25, 0),
       (18, 'K-POP 뮤지션 체험 패키지', 350000, 15, 0),
       (19, 'K-POP 안무가 도전 세트', 200000, 30, 0),
       (20, '팬아트 아티스트 패키지', 150000, 40, 0),
       (21, 'K-드라마 OST 컬렉터 에디션', 250000, 30, 0),
       (22, '웹툰 작가 데뷔 패키지', 300000, 20, 0),
       (23, 'K-드라마 제작 참여 스페셜 세트', 500000, 10, 0),
       (24, 'K-영화 글로벌 팬 패키지', 200000, 50, 0),
       (25, 'K-드라마 팬 ultimate 경험 세트', 400000, 15, 0),
       (26, '드라마 비하인드 컬렉션 박스', 180000, 40, 0),
       (27, 'K-드라마 팬 굿즈 스페셜 에디션', 150000, 60, 0),
       (28, 'K-드라마 리뷰어 스타터 패키지', 220000, 30, 0),
       (29, 'K-콘텐츠 박람회 VIP 경험 세트', 350000, 20, 0),
       (30, 'K-영화 글로벌 프리미어 패키지', 300000, 25, 0);

-- Insert package-reward relations
INSERT INTO package_rewards_options (id, reward_count, project_id, package_id, reward_id)
VALUES (1, 1, 1, 1, 1),
       (2, 1, 2, 2, 2),
       (3, 1, 3, 3, 3),
       (4, 1, 4, 4, 4),
       (5, 1, 5, 5, 5),
       (6, 1, 6, 6, 6),
       (7, 1, 7, 7, 7),
       (8, 1, 8, 8, 8),
       (9, 1, 9, 9, 9),
       (10, 1, 10, 10, 10),
       (11, 1, 11, 11, 11),
       (12, 1, 12, 12, 12),
       (13, 1, 13, 13, 13),
       (14, 1, 14, 14, 14),
       (15, 1, 15, 15, 15),
       (16, 1, 16, 16, 16),
       (17, 1, 17, 17, 17),
       (18, 1, 18, 18, 18),
       (19, 1, 19, 19, 19),
       (20, 1, 20, 20, 20),
       (21, 1, 21, 21, 21),
       (22, 1, 22, 22, 22),
       (23, 1, 23, 23, 23),
       (24, 1, 24, 24, 24),
       (25, 1, 25, 25, 25),
       (26, 1, 26, 26, 26),
       (27, 1, 27, 27, 27),
       (28, 1, 28, 28, 28),
       (29, 1, 29, 29, 29),
       (30, 1, 30, 30, 30),
       (31, 1, 1, 1, 1),
       (32, 1, 1, 31, 1),
       (33, 1, 1, 31, 31),
       (34, 1, 1, 32, 1),
       (35, 1, 1, 32, 31),
       (36, 1, 1, 32, 32);