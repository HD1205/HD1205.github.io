# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Faker::Config.locale = 'ko'

20.times do
    Notice.create(title: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
end

a = Restaurant.create(restaurantname: '일미리 금계찜닭', address:'경기 용인시 처인구 동부로 29', tel:'0504-0952-1046', photoname:'금계찜닭p', mapname:'금계찜닭m', foodmenu:'금계찜닭f')
b = Restaurant.create(restaurantname: '눈물떡볶이', address:'경기 용인시 기흥구 강남동로114번길 22', tel:'031-284-9289', photoname:'눈물떡볶이p', mapname:'눈물떡볶이m', foodmenu:'눈물떡볶이f')
c = Restaurant.create(restaurantname: '따뜻한밥상', address:'경기 용인시 처인구 금령로90번길 7', tel:'031-336-6871', photoname:'따뜻한밥상p', mapname:'따뜻한밥상m', foodmenu:'따뜻한밥상f')
d = Restaurant.create(restaurantname: '곱창의 신 마약곱창', address:'경기 용인시 처인구 중부대로1299번길 5', tel:'031-336-1213', photoname:'마약곱창p', mapname:'마약곱창m', foodmenu:'마약곱창f')
e = Restaurant.create(restaurantname: '만사성', address:'경기 용인시 처인구 용인대학로 1', tel:'031-338-6785', photoname:'만사성p', mapname:'만사성m', foodmenu:'만사성f')
f = Restaurant.create(restaurantname: '배터지는생돈까스', address:'경기 용인시 처인구 금학로241번길 8-4', tel:'031-335-1515', photoname:'배터지는생돈까스p', mapname:'배터지는생돈까스m', foodmenu:'배터지는생돈까스f')
g = Restaurant.create(restaurantname: '야미가', address:'경기 용인시 처인구 중부대로1281번길 6-13', tel:'031-322-5050', photoname:'야미가p', mapname:'야미가m', foodmenu:'야미가f')
h = Restaurant.create(restaurantname: '동대문 엽기 떡볶이', address:'경기 용인시 처인구 금령로 108-1', tel:'031-334-8591', photoname:'엽떡p', mapname:'엽떡m', foodmenu:'엽떡f')
i = Restaurant.create(restaurantname: '향화루', address:'경기 용인시 처인구 금령로 62 위너스프라자', tel:'031-336-3888', photoname:'향화루p', mapname:'향화루m', foodmenu:'향화루f')
j = Restaurant.create(restaurantname: '길용각', address:'경기 용인시 처인구 중부대로1299번길 14', tel:'050-7724-7422', photoname:'길용각p', mapname:'길용각m', foodmenu:'길용각f')
k = Restaurant.create(restaurantname: '롯데리아', address:'경기 용인시 처인구 중부대로 1309지번역북동 428-7 낙원빌딩', tel:'031-322-3800', photoname:'롯데리아p', mapname:'롯데리아m', foodmenu:'롯데리아f')
l = Restaurant.create(restaurantname: '한솥도시락', address:'경기 용인시 처인구 용인대학로 106', tel:'031-338-8128', photoname:'한솥도시락p', mapname:'한솥도시락m', foodmenu:'한솥도시락f')

@a = Food.new(foodname: '치즈갈비찜(大,中) - 48000원,37000원
순살찜닭(大,中) - 34000원,26000원
辛불찜닭(大,中) - 36000원,26000원')
@a.restaurants << a
@a.save

@b = Food.new(foodname: '찹쌀순대小 - 3000원                     찹쌀순대大 - 6000원
쟁반막국수 – 6000원                     오뎅탕 - 5000원
김말이튀김(4개) - 2000원                 오징어튀김(3개) - 3000원
새우튀김(3개) - 3000원                   고추튀김(2개) - 2000원
고구마튀김(3개) - 2000원                 쥐포(4개) - 2000원
튀김만두(4개) - 2000원                   모듬(새우2,오징어2,만두2,김말이2) - 5000원
주먹밥 – 2000원                         김치주먹밥 - 3000원
참치주먹밥 – 3000원')
@b.restaurants << b
@b.save

@c = Food.new(foodname: '오늘의 밥상 – 7000원
참치김치찌개/김치찌개/된장찌개/청국장/순두부 + 생선구이 – 7000원
제육밥상 (2인이상/국내산목살) - 8000원
오징어밥상 (2인이상/국내산) - 8000원')
@c.restaurants << c
@c.save

@d = Food.new(foodname: '순대볶음 – 9000원
치즈곱창 – 12000원
야채곱창볶음 – 10000원')
@d.restaurants << d
@d.save

@e = Food.new(foodname: '짜장면 – 5000원                       매운삼선짜장 - 8000원
간짜장 – 6000원                       해물고추짬뽕 - 7000원
짬뽕 – 6000원                         삼선짬뽕 - 7000원
우동 – 6500원                         삼선우동 - 7000원
울면 – 6500원                         기스면 - 8000원
매운짜장 – 7000원                     삼선울면 - 7000원
삼선짜장 – 7000원                     홍함짬뽕 – 8000원
매운사천짜장 – 8000원                 육해공짬뽕 – 10000원')
@e.restaurants << e
@e.save

@f = Food.new(foodname: '배터지는 생돈까스 – 7500원                  난세모야! 함박까스 - 7500원
나이스짱! 모듬정식 – 7500원                  왕돈까스 - 6500원
산골! 고구마까스 – 8000원                    쫄면만난 돈까스 - 7000원
돌아온 피자돈까스 – 8000원                   꼬끼오! 치킨까스 - 7000원
피자떠난 치즈돈까스 – 8000원                 쫄면 곱빼기돈까스 - 7000원
바다탈출! 생선까스 – 7000원                  딱좋아! 돈까스 - 6500원
돌돌말린 코돈브롤 – 8000원                   묻지마 다쳐쫄면 - 5000원
게맛살 돈까스 – 8000원')
@f.restaurants << f
@f.save

@g = Food.new(foodname: '가스류
카레덮밥- 5,500원
제육덮밥-6,500원
오징어덮밥-6,500원
돈까스덮밥-7,000원
참치마요덮밥- 6,500원
돈까스 나베 -7,500원
볶음밥 
김치볶음밥 -5,500원
참치김치볶음밥-5,000원 
알밥-6,000원
해물볶음밥-6,000원  
새우볶음밥- 6,000원
유부우동-5,000원
김치우동-5,500원
냉모밀-5,500원
냉면-6,000원
초밥류
유부초밥-7,000원
새우초밥-8,000원
연어초밥-9,000원
도미초밥-9,000원
모듬초밥-10,000원')
@g.restaurants << g
@g.save

@h = Food.new(foodname: '
참숯메뉴
국물닭발-15,000원
야채볶음닭발-15,000원
참숯뼈없는 닭발 - 15,000원
참숯통닭발 - 14,000원
오돌뼈 - 14,000원
돼지석쇠불고기 -14,000원 
사이드메뉴 
주먹김밥 -2000원
계란찜추가 - 2000원
누룽지탕 -5000원
음료 
쿨피스(450ml)-1000원')
@h.restaurants << h
@h.save

@i = Food.new(foodname: '짜장면 – 5000원                  잡채밥 - 7000원
삼선 짜장면 – 7000원             쟁반짜장 - 13000원
짬뽕 – 6500원                    쟁반볶음짬뽕 - 13500원
울면 – 7000원
볶음밥 – 5500원
새우볶음밥 – 6500원')
@i.restaurants << i
@i.save

@j = Food.new(foodname: '짜장면 – 5000원                              잡채밥 - 7000원
매운짜장면 – 7000원                          볶음밥 - 6000원
간짜장 – 5500원                   제육덮밥 - 7000원
짬뽕 – 5500원                     고추짬뽕 - 8000원
우동 – 5500원                     볶음짬뽕 - 7500원
울면 – 6000원                     기스면 - 8000원
쟁반짜장 – 7000원                 삼선짜장면 – 7000원')
@j.restaurants << j
@j.save

@k = Food.new(foodname: '')
@k.restaurants << k
@k.save

@l = Food.new(foodname: '돈까스도련님도시락-3,600
동백도시락-5,000원
치킨마요-2,700원
개나리도시락-8,000원
매화도시락-10,000원
진달래도시락-7,000원
반찬 돈까스도련님-2,900원
반찬 고등어조림-4,800원
반찬 고기고기-2,900원
닭가슴살샐러드마요-3,500원')
@l.restaurants << l
@l.save