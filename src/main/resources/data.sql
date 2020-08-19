insert into member values (1, 1991, '2020-07-15', 'a@a.com', 'FEMALE', false, 'USER')
insert into article values (1, '내용입니다1','2020-07-17', true, 1)
insert into article values (2, '내용입니다2','2020-07-18', false, 1)
insert into article values (3, '이 글은 300자짜리 글의 예시로써 작성된 글이다. 이것을 모두 작성하여 300자를 채우는 것은 어려운 일이나, 그것은 단순히 몸의 고초 혹여는 단순한 시간의 문제일 뿐 그것을 써내리는 것은 문제라기보다는 차라리 하나의 일로 생각하는 것이 편안한 것이다. 이렇게 작은 공간을 채우는 것조차 이렇게 힘겹다는 것은 때로 슬픈 일이 된다 그러나 그보다도 얼른 마저 이 분량을 채워야지 하는 생각을 하는 것이다  이렇게 써내리고도 겨우 200자 초반에 머무르고 있으니 언제야 300자를 채울까? 참으로 이런 것을 할 때에는 생각을 비우는 것이','2020-07-19',true, 1)
insert into comment values (1, '댓글입니다1', '2020-08-15', false, '닉네임', 1, 1)
insert into comment values (2, '댓글입니다2', '2020-08-15', true, '닉네임', 1, 1)
insert into comment values (3, '댓글입니다3', '2020-08-15', false, '닉네임', 1, 1)
insert into comment values (4, '댓글입니다4', '2020-08-15', false, '닉네임', 3, 1)
insert into article values (4, '내용입니다4','2020-08-15',true, 1)
insert into article values (5, '내용입니다5','2020-08-15',true, 1)
insert into article values (6, '내용입니다6','2020-08-16',true, 1)
insert into article values (7, '내용입니다7','2020-08-17',true, 1)
insert into article values (8, '내용입니다8','2020-08-17',true, 1)
insert into article values (9, '내용입니다9','2020-08-18',true, 1)
insert into article values (10, '내용입니다10','2020-08-18', true, 1)
insert into article values (11, '내용입니다11','2020-08-18', true, 1)
insert into article values (12, '내용입니다12','2020-08-18', true, 1)
insert into article values (13, '내용입니다13','2020-08-18', true, 1)
insert into article values (14, '내용입니다14','2020-08-18', true, 1)
insert into article values (15, '내용입니다15','2020-08-18', true, 1)
insert into article values (16, '내용입니다16','2020-08-18', true, 1)
insert into article values (17, '내용입니다17','2020-08-18', true, 1)
insert into article values (18, '내용입니다18','2020-08-18', true, 1)
insert into article values (19, '내용입니다19','2020-08-18', true, 1)
insert into article values (20, '내용입니다20','2020-08-18', true, 1)
insert into emotion values (1, 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/smiling-face-with-open-mouth_1f603.png', '기뻐요')
insert into emotion values (2, 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/crying-face_1f622.png', '슬퍼요')
insert into emotion values (3, 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/angry-face_1f620.png', '화나요')
insert into emotion values (4, 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/face-without-mouth_1f636.png', '평온해요')
insert into emotion values (5, 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/astonished-face_1f632.png', '놀라워요')
insert into emotion values (6, 'https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/237/face-with-thermometer_1f912.png', '아파요')
insert into sub_emotion values (1, '행복해요', 1)
insert into sub_emotion values (2, '뿌듯해요', 1)
insert into sub_emotion values (3, '감동받았어요', 1)
insert into sub_emotion values (4, '설레요', 1)
insert into sub_emotion values (5, '신나요', 1)
insert into sub_emotion values (6, '멋져요', 1)
insert into sub_emotion values (7, '좋아요', 1)
insert into sub_emotion values (8, '우울해요', 2)
insert into sub_emotion values (9, '속상해요', 2)
insert into sub_emotion values (10, '화나요', 3)
insert into sub_emotion values (11, '싱숭생숭해요', 4)
insert into sub_emotion values (12, '당황스러워요', 5)
insert into sub_emotion values (13, '아파요', 6)
insert into article_emotion values (1, 1, 1)
insert into article_emotion values (2, 2, 2)
insert into article_emotion values (3, 3, 3)
insert into article_emotion values (4, 4, 1)
insert into article_emotion values (5, 5, 1)
insert into article_emotion values (6, 6, 1)
insert into article_emotion values (7, 7, 1)
insert into article_emotion values (8, 8, 1)
insert into article_emotion values (9, 9, 1)
insert into article_emotion values (10, 10, 1)
insert into article_emotion values (11, 11, 2)
insert into article_emotion values (12, 12, 3)
insert into article_emotion values (13, 13, 1)
insert into article_emotion values (14, 14, 1)
insert into article_emotion values (15, 15, 1)
insert into article_emotion values (16, 16, 1)
insert into article_emotion values (17, 17, 1)
insert into article_emotion values (18, 18, 1)
insert into article_emotion values (19, 19, 1)
insert into article_emotion values (20, 20, 1)
insert into article_sub_emotion values (1, 1, 1)
insert into article_sub_emotion values (2, 1, 2)
insert into article_sub_emotion values (3, 1, 3)
insert into article_sub_emotion values (4, 2, 2)
insert into article_sub_emotion values (5, 2, 3)
insert into article_sub_emotion values (6, 2, 4)
insert into article_sub_emotion values (7, 3, 1)
insert into article_sub_emotion values (8, 4, 1)
insert into article_sub_emotion values (9, 5, 1)
insert into article_sub_emotion values (10, 6, 1)
insert into article_sub_emotion values (11, 7, 1)
insert into article_sub_emotion values (12, 8, 1)
insert into article_sub_emotion values (13, 9, 1)
insert into article_sub_emotion values (14, 10, 1)
insert into article_sub_emotion values (15, 11, 1)
insert into article_sub_emotion values (16, 12, 1)
insert into article_sub_emotion values (17, 13, 1)
insert into article_sub_emotion values (18, 14, 1)
insert into article_sub_emotion values (19, 15, 1)
insert into article_sub_emotion values (20, 16, 1)
insert into article_sub_emotion values (21, 17, 1)
insert into article_sub_emotion values (22, 18, 1)
insert into article_sub_emotion values (23, 19, 1)
insert into article_sub_emotion values (24, 20, 1)
