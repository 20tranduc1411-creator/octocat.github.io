<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NEXUS | Kho tàng tri thức</title>
<style>
@import url('https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;500;600;700;800&display=swap');

:root{
 --bg:#07111f;--panel:#101e30;--panel2:#14263b;
 --cyan:#39d9ff;--blue:#477dff;--text:#e9f5ff;
 --muted:#8da5bd;--line:#243950;--green:#48e0a4;
}
*{box-sizing:border-box}
body{
 margin:0;background:var(--bg);color:var(--text);
 font-family:'Be Vietnam Pro',sans-serif;
}
button,input,select{font:inherit}
button{cursor:pointer}
header{
 height:72px;padding:0 5%;display:flex;align-items:center;
 justify-content:space-between;border-bottom:1px solid var(--line);
 background:#091727;position:sticky;top:0;z-index:10;
}
.logo{font-size:23px;font-weight:800;letter-spacing:3px;color:var(--cyan)}
.logo span{color:white}
.header-right{display:flex;align-items:center;gap:12px}
.user-chip{background:var(--panel2);padding:10px 15px;border-radius:12px;font-size:12px}
.layout{display:flex;min-height:calc(100vh - 72px)}
aside{
 width:245px;padding:22px 14px;background:#091727;
 border-right:1px solid var(--line);flex-shrink:0;
}
.nav-title{font-size:10px;color:#66829c;letter-spacing:2px;margin:18px 12px 8px}
.nav{
 display:flex;gap:12px;align-items:center;width:100%;
 border:0;background:transparent;color:#a9bdd0;
 padding:12px;border-radius:10px;text-align:left;margin:3px 0;
}
.nav:hover,.nav.active{background:#17334a;color:var(--cyan)}
main{flex:1;padding:30px 4%;min-width:0;max-width:1500px;margin:auto}
.page{display:none}.page.active{display:block}
.hero{
 padding:35px;border:1px solid #1d5269;border-radius:20px;
 background:radial-gradient(circle at 85% 20%,#174b65,transparent 35%),
 linear-gradient(120deg,#10253a,#0a1929);
 position:relative;overflow:hidden;
}
.hero small{color:var(--cyan);letter-spacing:3px}
.hero h1{font-size:clamp(28px,5vw,48px);margin:15px 0 8px}
.hero p{color:var(--muted);max-width:650px;line-height:1.8}
.hero button,.primary{
 border:0;border-radius:10px;padding:12px 18px;
 background:linear-gradient(90deg,var(--blue),#14b9d8);
 color:white;font-weight:700;
}
.section-head{display:flex;justify-content:space-between;align-items:center;margin:28px 0 15px;gap:10px}
.section-head h2{font-size:19px;margin:0}
.grid{display:grid;grid-template-columns:repeat(auto-fit,minmax(190px,1fr));gap:14px}
.card{
 background:var(--panel);border:1px solid var(--line);
 border-radius:15px;padding:19px;transition:.2s;
}
.card:hover{transform:translateY(-3px);border-color:var(--cyan)}
.card-icon{font-size:27px}
.card h3{font-size:15px;margin:12px 0 7px}
.card p{font-size:12px;color:var(--muted);line-height:1.6}
.card button,.secondary{
 background:#19334b;border:1px solid #31516b;color:var(--cyan);
 padding:9px 12px;border-radius:8px;font-size:12px;
}
.stats{display:grid;grid-template-columns:repeat(auto-fit,minmax(150px,1fr));gap:12px;margin-top:20px}
.stat{background:var(--panel);border:1px solid var(--line);padding:17px;border-radius:13px}
.stat strong{display:block;font-size:24px;color:var(--cyan);margin-top:8px}
.muted{color:var(--muted);font-size:12px}
.progress{height:9px;background:#263b50;border-radius:20px;overflow:hidden;margin:12px 0}
.progress div{height:100%;background:linear-gradient(90deg,var(--blue),var(--cyan));width:0%}
input,select{
 background:#0b1a2a;border:1px solid var(--line);color:white;
 padding:12px;border-radius:9px;outline:none;max-width:100%;
}
input:focus,select:focus{border-color:var(--cyan)}
.search{width:100%;margin:15px 0}
.pills{display:flex;gap:8px;flex-wrap:wrap;margin:15px 0}
.pill{border:1px solid var(--line);padding:8px 12px;border-radius:20px;color:var(--muted);font-size:12px;cursor:pointer}
.pill.active{background:#16405a;color:var(--cyan);border-color:var(--cyan)}
table{width:100%;border-collapse:collapse;background:var(--panel);border-radius:12px;overflow:hidden}
td,th{padding:14px;text-align:left;border-bottom:1px solid var(--line);font-size:13px}
th{color:var(--cyan);background:#14283d}
.badge{display:inline-block;padding:5px 9px;border-radius:20px;background:#173b50;color:var(--cyan);font-size:11px}
.modal{
 display:none;position:fixed;inset:0;background:#000b;z-index:30;
 align-items:center;justify-content:center;padding:15px;
}
.modal.show{display:flex}
.modal-box{
 background:#102137;border:1px solid #32617c;border-radius:17px;
 padding:25px;width:min(600px,100%);max-height:85vh;overflow:auto;
}
.modal-box h2{color:var(--cyan)}
.close{float:right;background:none;border:0;color:white;font-size:22px}
.lesson-content{line-height:1.9;color:#c6d7e6}
footer{text-align:center;color:#617b95;font-size:11px;padding:35px}
.mobile-menu{display:none}
@media(max-width:800px){
 aside{display:none;position:fixed;z-index:20;top:72px;bottom:0;width:250px}
 aside.open{display:block}
 .mobile-menu{display:block;background:none;color:white;border:0;font-size:23px}
 main{padding:20px 14px}
 .hero{padding:24px}
}
</style>
</head>
<body>

<header>
 <button class="mobile-menu" onclick="toggleSidebar()">☰</button>
 <div class="logo">NEXUS<span>.</span></div>
 <div class="header-right">
  <div class="user-chip">⚡ <span id="headerExp">0</span> EXP</div>
  <div class="user-chip" id="headerName">Người khám phá</div>
 </div>
</header>

<div class="layout">
<aside id="sidebar">
 <div class="nav-title">KHÁM PHÁ</div>
 <button class="nav active" data-page="home">⌂ Trang chủ</button>
 <button class="nav" data-page="library">◈ Kho tàng kiến thức</button>
 <button class="nav" data-page="school">▤ KNTT lớp 1–12</button>
 <button class="nav" data-page="universe">✦ Vũ trụ và khoa học</button>
 <button class="nav" data-page="lab">⚗ Phòng thí nghiệm</button>

 <div class="nav-title">HỌC TẬP</div>
 <button class="nav" data-page="quiz">◎ Trung tâm kiểm tra</button>
 <button class="nav" data-page="missions">⚑ Nhiệm vụ</button>
 <button class="nav" data-page="ranking">♛ Bảng xếp hạng</button>
 <button class="nav" data-page="profile">◉ Hồ sơ cá nhân</button>

 <div class="nav-title">HỆ THỐNG</div>
 <button class="nav" data-page="settings">⚙ Cài đặt</button>
 <button class="nav" data-page="admin">⬡ ADMIN</button>
</aside>

<main>
<!-- HOME -->
<section class="page active" id="home">
 <div class="hero">
  <small>WELCOME TO NEXUS</small>
  <h1>Vũ trụ tri thức<br>không giới hạn.</h1>
  <p>Mỗi câu hỏi là một cánh cửa. Mỗi kiến thức là một thế giới mới. Hãy bắt đầu hành trình khám phá của bạn!</p>
  <button onclick="showPage('library')">BẮT ĐẦU KHÁM PHÁ →</button>
 </div>

 <div class="stats">
  <div class="stat">⚡ EXP hiện tại<strong id="homeExp">0</strong></div>
  <div class="stat">♛ Cấp độ<strong id="homeLevel">1</strong></div>
  <div class="stat">📚 Bài đã đọc<strong id="homeRead">0</strong></div>
  <div class="stat">🏅 Danh hiệu<strong id="homeTitle">Người mới</strong></div>
 </div>

 <div class="section-head"><h2>Hành trình thăng cấp</h2><span class="badge" id="nextLevel">Cấp 2</span></div>
 <div class="card">
  <div style="display:flex;justify-content:space-between">
   <b id="levelName">Người mới</b><span class="muted" id="expText">0 / 100 EXP</span>
  </div>
  <div class="progress"><div id="levelBar"></div></div>
  <span class="muted" id="levelHint">Cố gắng học tập để thăng cấp!</span>
 </div>

 <div class="section-head"><h2>Khám phá nổi bật</h2></div>
 <div class="grid" id="featured"></div>
</section>

<!-- LIBRARY -->
<section class="page" id="library">
 <h1>◈ Kho tàng kiến thức</h1>
 <p class="muted">Khám phá các lĩnh vực tri thức của nhân loại.</p>
 <input class="search" id="searchKnowledge" placeholder="⌕ Tìm kiếm kiến thức..." oninput="renderCategories()">
 <div class="grid" id="categories"></div>
</section>

<!-- SCHOOL -->
<section class="page" id="school">
 <h1>▤ Chương trình Kết nối tri thức</h1>
 <p class="muted">Khám phá kiến thức theo từng khối lớp và môn học.</p>
 <div class="pills" id="gradeButtons"></div>
 <div class="section-head"><h2 id="gradeHeading">Lớp 1</h2></div>
 <div class="grid" id="subjects"></div>
 <p class="muted" style="margin-top:18px">Nội dung bài học hiện là khung mẫu để bổ sung theo từng sách giáo khoa KNTT.</p>
</section>

<!-- UNIVERSE -->
<section class="page" id="universe">
 <div class="hero">
  <small>THE INFINITE UNIVERSE</small>
  <h1>Khám phá vũ trụ</h1>
  <p>Từ những hạt nhỏ bé đến các thiên hà khổng lồ. Khoa học giúp chúng ta hiểu thế giới.</p>
 </div>
 <div class="grid" style="margin-top:20px" id="universeCards"></div>
</section>

<!-- LAB -->
<section class="page" id="lab">
 <h1>⚗ Phòng thí nghiệm</h1>
 <p class="muted">Những mô phỏng và thử nghiệm kiến thức an toàn.</p>
 <div class="grid">
  <div class="card"><div class="card-icon">🌈</div><h3>Ánh sáng và màu sắc</h3><p>Tìm hiểu cách ánh sáng tạo ra màu sắc.</p><button onclick="openArticle('Ánh sáng và màu sắc')">Khám phá</button></div>
  <div class="card"><div class="card-icon">🪐</div><h3>Quỹ đạo hành tinh</h3><p>Tìm hiểu chuyển động của các hành tinh.</p><button onclick="openArticle('Quỹ đạo hành tinh')">Khám phá</button></div>
  <div class="card"><div class="card-icon">⚡</div><h3>Năng lượng</h3><p>Tìm hiểu các dạng năng lượng trong đời sống.</p><button onclick="openArticle('Năng lượng')">Khám phá</button></div>
  <div class="card"><div class="card-icon">🧬</div><h3>Thế giới tế bào</h3><p>Khám phá cấu tạo cơ bản của tế bào.</p><button onclick="openArticle('Thế giới tế bào')">Khám phá</button></div>
 </div>
</section>

<!-- QUIZ -->
<section class="page" id="quiz">
 <h1>◎ Trung tâm kiểm tra</h1>
 <p class="muted">Trả lời câu hỏi để rèn luyện kiến thức và nhận EXP.</p>
 <div class="card" id="quizBox">
  <span class="badge">CÂU HỎI KIẾN THỨC</span>
  <h3 id="question">Câu 1: Hành tinh nào gần Mặt Trời nhất?</h3>
  <div id="answers" style="display:grid;gap:10px;margin-top:18px"></div>
  <p id="quizResult" class="muted"></p>
  <button class="primary" id="nextQuestion" style="display:none" onclick="nextQuiz()">Câu tiếp theo →</button>
 </div>
</section>

<!-- MISSIONS -->
<section class="page" id="missions">
 <h1>⚑ Nhiệm vụ</h1>
 <p class="muted">Hoàn thành các thử thách để nhận EXP.</p>
 <div class="grid" id="missionList"></div>
</section>

<!-- RANKING -->
<section class="page" id="ranking">
 <h1>♛ Bảng xếp hạng</h1>
 <p class="muted">Bảng minh họa. Bản chính thức cần máy chủ để đồng bộ người dùng.</p>
 <table><thead><tr><th>Hạng</th><th>Nhà khám phá</th><th>Danh hiệu</th><th>EXP</th></tr></thead>
 <tbody id="rankTable"></tbody></table>
</section>

<!-- PROFILE -->
<section class="page" id="profile">
 <h1>◉ Hồ sơ cá nhân</h1>
 <div class="card" style="max-width:600px">
  <div style="font-size:45px">👨‍🚀</div>
  <h2 id="profileName">Người khám phá</h2>
  <span class="badge" id="profileTitle">Người mới</span>
  <div class="stats">
   <div class="stat">EXP<strong id="profileExp">0</strong></div>
   <div class="stat">Cấp độ<strong id="profileLevel">1</strong></div>
   <div class="stat">Bài đã đọc<strong id="profileRead">0</strong></div>
  </div>
  <div class="section-head"><h2>Huy hiệu</h2></div>
  <div class="pills" id="badges"></div>
 </div>
</section>

<!-- SETTINGS -->
<section class="page" id="settings">
 <h1>⚙ Cài đặt</h1>
 <div class="card" style="max-width:600px">
  <h3>Thông tin tài khoản</h3>
  <input id="nameInput" placeholder="Nhập tên hiển thị" style="width:100%">
  <button class="primary" style="margin-top:12px" onclick="saveName()">Lưu tên</button>
  <hr style="border-color:var(--line);margin:25px 0">
  <h3>Dữ liệu học tập</h3>
  <button class="secondary" onclick="resetProgress()">Đặt lại tiến độ học tập</button>
 </div>
</section>

<!-- ADMIN -->
<section class="page" id="admin">
 <h1>⬡ Trung tâm ADMIN</h1>
 <p class="muted">Khu vực quản trị bản demo.</p>
 <div class="card" style="max-width:650px">
  <h3>Đăng nhập quản trị</h3>
  <input id="adminKey" type="password" placeholder="Nhập mã ADMIN">
  <button class="primary" onclick="adminLogin()">Xác nhận</button>
  <p class="muted">Mã demo: NEXUS2026. Không dùng mã này cho website thật.</p>
  <div id="adminPanel" style="display:none">
   <hr style="border-color:var(--line)">
   <h3>Thêm kiến thức mới</h3>
   <input id="newTitle" placeholder="Tên chủ đề" style="width:100%;margin-bottom:10px">
   <input id="newIcon" placeholder="Biểu tượng, ví dụ 🌌" style="width:100%;margin-bottom:10px">
   <select id="newCategory" style="width:100%;margin-bottom:10px">
    <option>Vật lý</option><option>Sinh học</option><option>Thiên văn học</option>
    <option>Hóa học</option><option>Công nghệ</option><option>Lịch sử</option>
   </select>
   <textarea id="newDescription" placeholder="Mô tả kiến thức..." style="width:100%;height:100px;background:#0b1a2a;color:white;border:1px solid var(--line);border-radius:9px;padding:12px"></textarea>
   <button class="primary" style="margin-top:12px" onclick="addKnowledge()">+ Thêm kiến thức</button>
   <h3>Quản lý bài viết</h3>
   <div id="adminArticles"></div>
  </div>
 </div>
</section>

<footer>NEXUS © 2026 · KNOWLEDGE HAS NO LIMIT</footer>
</main>
</div>

<div class="modal" id="articleModal">
 <div class="modal-box">
  <button class="close" onclick="closeArticle()">×</button>
  <span class="badge" id="articleCategory">KIẾN THỨC</span>
  <h2 id="articleTitle">Tiêu đề</h2>
  <div class="lesson-content" id="articleText"></div>
  <button class="primary" onclick="completeArticle()">Đã đọc xong · +10 EXP</button>
 </div>
</div>

<script>
const levels=[
 {name:"Người mới",exp:0},
 {name:"Học giả",exp:100},
 {name:"Nhà nghiên cứu",exp:300},
 {name:"Nhà khoa học",exp:700},
 {name:"Thiên tài",exp:1500},
 {name:"Bậc thầy tri thức",exp:3000},
 {name:"Huyền thoại",exp:6000}
];

let user=JSON.parse(localStorage.getItem("nexusUser")||"null")||{
 name:"Người khám phá",exp:0,read:0,completed:[],missions:[]
};

const initialCategories=[
 ["🌌","Thiên văn học","Khám phá vũ trụ, hành tinh và thiên hà."],
 ["⚛️","Vật lý","Các quy luật vận động của tự nhiên."],
 ["🧪","Hóa học","Nguyên tố và các phản ứng hóa học."],
 ["🧬","Sinh học","Sự sống và thế giới sinh vật."],
 ["🧠","Não bộ và tâm trí","Tìm hiểu bộ não con người."],
 ["🦖","Cổ sinh vật học","Thế giới sinh vật cổ đại."],
 ["🌋","Địa chất học","Cấu tạo và lịch sử Trái Đất."],
 ["🌊","Hải dương học","Đại dương và hệ sinh thái biển."],
 ["🌿","Thực vật học","Thế giới thực vật."],
 ["🐾","Động vật học","Các loài động vật."],
 ["🤖","Trí tuệ nhân tạo","AI và tương lai công nghệ."],
 ["💻","Khoa học máy tính","Máy tính và lập trình."],
 ["🔋","Công nghệ năng lượng","Năng lượng và pin."],
 ["🚀","Công nghệ vũ trụ","Tên lửa và khám phá không gian."],
 ["🏛️","Lịch sử thế giới","Những nền văn minh nhân loại."],
 ["🏺","Khảo cổ học","Dấu tích của quá khứ."],
 ["🗺️","Địa lý","Các vùng đất và địa hình."],
 ["🔢","Toán học","Con số và tư duy logic."],
 ["📖","Triết học","Những câu hỏi lớn về cuộc sống."],
 ["🔬","Thế giới vi mô","Những điều mắt thường không thấy."]
];

let categories=[...initialCategories];
let currentArticle=null;
let currentQuiz=0;
let selectedGrade=1;

const quizData=[
 {q:"Hành tinh nào gần Mặt Trời nhất?",a:["Sao Kim","Sao Thủy","Trái Đất","Sao Hỏa"],correct:1},
 {q:"Cơ quan nào bơm máu đi khắp cơ thể?",a:["Phổi","Gan","Tim","Thận"],correct:2},
 {q:"Nước có công thức hóa học là gì?",a:["CO2","O2","H2O","NaCl"],correct:2},
 {q:"Hành tinh lớn nhất Hệ Mặt Trời?",a:["Sao Mộc","Sao Thổ","Trái Đất","Sao Hải Vương"],correct:0},
 {q:"Thực vật thường hấp thụ khí nào để quang hợp?",a:["Oxy","Carbon dioxide","Nitơ","Hydro"],correct:1}
];

const subjects={
 1:["Tiếng Việt","Toán","Tự nhiên và Xã hội","Đạo đức","Âm nhạc","Mĩ thuật"],
 2:["Tiếng Việt","Toán","Tự nhiên và Xã hội","Đạo đức","Âm nhạc","Mĩ thuật"],
 3:["Tiếng Việt","Toán","Tự nhiên và Xã hội","Đạo đức","Tin học","Công nghệ"],
 4:["Tiếng Việt","Toán","Khoa học","Lịch sử và Địa lý","Tin học","Công nghệ","Tiếng Anh"],
 5:["Tiếng Việt","Toán","Khoa học","Lịch sử và Địa lý","Tin học","Công nghệ","Tiếng Anh"],
 6:["Ngữ văn","Toán","Khoa học tự nhiên","Lịch sử và Địa lý","Tin học","Công nghệ","Tiếng Anh","GDCD"],
 7:["Ngữ văn","Toán","Khoa học tự nhiên","Lịch sử và Địa lý","Tin học","Công nghệ","Tiếng Anh","GDCD"],
 8:["Ngữ văn","Toán","Khoa học tự nhiên","Lịch sử và Địa lý","Tin học","Công nghệ","Tiếng Anh","GDCD"],
 9:["Ngữ văn","Toán","Khoa học tự nhiên","Lịch sử và Địa lý","Tin học","Công nghệ","Tiếng Anh","GDCD"],
 10:["Ngữ văn","Toán","Tiếng Anh","Vật lý","Hóa học","Sinh học","Lịch sử","Địa lý","Tin học"],
 11:["Ngữ văn","Toán","Tiếng Anh","Vật lý","Hóa học","Sinh học","Lịch sử","Địa lý","Tin học"],
 12:["Ngữ văn","Toán","Tiếng Anh","Vật lý","Hóa học","Sinh học","Lịch sử","Địa lý","Tin học"]
};

function save(){localStorage.setItem("nexusUser",JSON.stringify(user))}
function levelIndex(){let i=0;levels.forEach((l,n)=>{if(user.exp>=l.exp)i=n});return i}
function title(){return levels[levelIndex()].name}
function getExpNext(){
 let i=levelIndex();return levels[i+1]?levels[i+1].exp:null
}
function addExp(n){
 user.exp+=n;save();updateUI();
}
function updateUI(){
 let i=levelIndex(),next=getExpNext(),current=levels[i].exp;
 document.getElementById("headerExp").textContent=user.exp;
 document.getElementById("headerName").textContent=user.name;
 document.getElementById("homeExp").textContent=user.exp;
 document.getElementById("homeLevel").textContent=i+1;
 document.getElementById("homeTitle").textContent=title();
 document.getElementById("homeRead").textContent=user.read;
 document.getElementById("levelName").textContent=title();
 document.getElementById("nextLevel").textContent=next?"Cấp "+(i+2):"Cấp tối đa";
 document.getElementById("expText").textContent=next?`${user.exp} / ${next} EXP`:`${user.exp} EXP`;
 let percent=next?Math.min(100,(user.exp-current)/(next-current)*100):100;
 document.getElementById("levelBar").style.width=percent+"%";
 document.getElementById("levelHint").textContent=next?`Còn ${next-user.exp} EXP để thăng cấp!`:"Bạn đã đạt cấp độ cao nhất!";
 document.getElementById("profileName").textContent=user.name;
 document.getElementById("profileTitle").textContent=title();
 document.getElementById("profileExp").textContent=user.exp;
 document.getElementById("profileLevel").textContent=i+1;
 document.getElementById("profileRead").textContent=user.read;
 document.getElementById("nameInput").value=user.name;
 document.getElementById("badges").innerHTML=
  (user.read>=1?'<span class="badge">📖 Người đọc</span>':'')+
  (user.exp>=100?'<span class="badge">⚡ Chăm chỉ</span>':'')+
  (user.exp>=700?'<span class="badge">🔬 Nhà khoa học</span>':'')+
  (user.exp>=6000?'<span class="badge">👑 Huyền thoại</span>':'');
}
function showPage(id){
 document.querySelectorAll(".page").forEach(p=>p.classList.remove("active"));
 document.getElementById(id).classList.add("active");
 document.querySelectorAll(".nav").forEach(b=>b.classList.toggle("active",b.dataset.page===id));
 document.getElementById("sidebar").classList.remove("open");
 if(id==="ranking")renderRanking();
 if(id==="missions")renderMissions();
}
document.querySelectorAll(".nav").forEach(b=>b.onclick=()=>showPage(b.dataset.page));
function toggleSidebar(){document.getElementById("sidebar").classList.toggle("open")}

function categoryCard(item){
 return `<div class="card"><div class="card-icon">${item[0]}</div><h3>${item[1]}</h3><p>${item[2]}</p><button onclick="openArticle('${item[1].replace(/'/g,"\\'")}')">Khám phá →</button></div>`;
}
function renderCategories(){
 let q=document.getElementById("searchKnowledge").value.toLowerCase();
 let filtered=categories.filter(c=>c[1].toLowerCase().includes(q)||c[2].toLowerCase().includes(q));
 document.getElementById("categories").innerHTML=filtered.map(categoryCard).join("")||"<p>Không tìm thấy kiến thức.</p>";
}
function openArticle(name){
 currentArticle=name;
 let item=categories.find(c=>c[1]===name);
 let desc=item?item[2]:"Chủ đề khám phá khoa học";
 document.getElementById("articleTitle").textContent=name;
 document.getElementById("articleCategory").textContent=item?"KHOA HỌC":"KHÁM PHÁ";
 document.getElementById("articleText").innerHTML=`
 <p>${desc}</p>
 <h3>Giới thiệu</h3>
 <p>${name} là một lĩnh vực giúp con người tìm hiểu thế giới xung quanh. Thông qua quan sát, nghiên cứu và kiểm chứng, chúng ta có thể hiểu rõ hơn về các hiện tượng tự nhiên và ứng dụng kiến thức vào cuộc sống.</p>
 <h3>Điều cần ghi nhớ</h3>
 <ul><li>Quan sát hiện tượng một cách khoa học.</li><li>Đặt câu hỏi và tìm kiếm lời giải thích.</li><li>Kiểm tra thông tin từ các nguồn đáng tin cậy.</li></ul>
 <p class="muted">Đây là nội dung giới thiệu mẫu. Các bài học chuyên sâu sẽ được bổ sung theo chủ đề.</p>`;
 document.getElementById("articleModal").classList.add("show");
}
function closeArticle(){document.getElementById("articleModal").classList.remove("show")}
function completeArticle(){
 let key=currentArticle;
 if(!user.completed.includes(key)){
  user.completed.push(key);user.read++;addExp(10);
  alert("Hoàn thành bài học! Bạn nhận được 10 EXP.");
 }else alert("Bạn đã hoàn thành bài học này rồi!");
 save();closeArticle();updateUI();
}

function renderGradeButtons(){
 let html="";
 for(let i=1;i<=12;i++)html+=`<span class="pill ${i===selectedGrade?'active':''}" onclick="selectGrade(${i})">${i}</span>`;
 document.getElementById("gradeButtons").innerHTML=html;
}
function selectGrade(n){
 selectedGrade=n;renderGradeButtons();
 document.getElementById("gradeHeading").textContent="Lớp "+n;
 document.getElementById("subjects").innerHTML=subjects[n].map(s=>`
 <div class="card"><div class="card-icon">📘</div><h3>${s}</h3>
 <p>Kiến thức KNTT lớp ${n}</p>
 <button onclick="openArticle('${s} lớp ${n}')">Xem môn học →</button></div>`).join("");
}
function renderMissions(){
 const tasks=[
 ["📖","Đọc 3 bài học","Hoàn thành 3 bài kiến thức",20,3],
 ["🧠","Kiểm tra kiến thức","Hoàn thành 1 bài kiểm tra",30,1],
 ["🧭","Khám phá chủ đề","Đọc 1 chủ đề mới",15,1]
 ];
 document.getElementById("missionList").innerHTML=tasks.map((t,i)=>{
 let done=user.missions.includes(i);
 return `<div class="card"><div class="card-icon">${t[0]}</div><h3>${t[1]}</h3><p>${t[2]}</p><span class="badge">+${t[3]} EXP</span><p>${done?"Đã hoàn thành":"Chưa hoàn thành"}</p></div>`;
 }).join("");
}
function renderRanking(){
 let data=[
 {name:user.name,exp:user.exp},
 {name:"Nhà khám phá Alpha",exp:900},
 {name:"Nhà khám phá Beta",exp:500},
 {name:"Nhà khám phá Gamma",exp:250},
 {name:"Nhà khám phá Delta",exp:100}
 ].sort((a,b)=>b.exp-a.exp);
 document.getElementById("rankTable").innerHTML=data.map((u,i)=>`
 <tr><td>${i+1}</td><td>${u.name}</td><td>${rankTitle(u.exp)}</td><td>${u.exp}</td></tr>`).join("");
}
function rankTitle(exp){
 let t="Người mới";levels.forEach(l=>{if(exp>=l.exp)t=l.name});return t;
}

function startQuiz(){
 currentQuiz=0;renderQuiz();
}
function renderQuiz(){
 let q=quizData[currentQuiz];
 document.getElementById("question").textContent=`Câu ${currentQuiz+1}: ${q.q}`;
 document.getElementById("quizResult").textContent="";
 document.getElementById("nextQuestion").style.display="none";
 document.getElementById("answers").innerHTML=q.a.map((a,i)=>
 `<button class="secondary" style="text-align:left" onclick="answerQuiz(${i})">${String.fromCharCode(65+i)}. ${a}</button>`
 ).join("");
}
function answerQuiz(index){
 let q=quizData[currentQuiz];
 let buttons=document.querySelectorAll("#answers button");
 buttons.forEach((b,i)=>{b.disabled=true;if(i===q.correct)b.style.borderColor="#48e0a4"});
 if(index===q.correct){
  document.getElementById("quizResult").textContent="✓ Chính xác! +20 EXP";
  addExp(20);
 }else{
  document.getElementById("quizResult").textContent="Chưa chính xác. Hãy ghi nhớ đáp án đúng nhé!";
 }
 document.getElementById("nextQuestion").style.display="inline-block";
 document.getElementById("nextQuestion").textContent=currentQuiz===quizData.length-1?"Làm lại":"Câu tiếp theo →";
}
function nextQuiz(){
 if(currentQuiz===quizData.length-1){startQuiz();return}
 currentQuiz++;renderQuiz();
}

function saveName(){
 let name=document.getElementById("nameInput").value.trim();
 if(!name)return alert("Hãy nhập tên!");
 user.name=name;save();updateUI();alert("Đã lưu tên!");
}
function resetProgress(){
 if(!confirm("Bạn có chắc muốn xóa tiến độ học tập?"))return;
 user.exp=0;user.read=0;user.completed=[];user.missions=[];
 save();updateUI();renderMissions();
}
function adminLogin(){
 if(document.getElementById("adminKey").value==="NEXUS2026"){
  document.getElementById("adminPanel").style.display="block";
  renderAdminArticles();
 }else alert("Mã ADMIN không chính xác!");
}
function addKnowledge(){
 let title=document.getElementById("newTitle").value.trim();
 let icon=document.getElementById("newIcon").value.trim()||"📚";
 let desc=document.getElementById("newDescription").value.trim();
 let cat=document.getElementById("newCategory").value;
 if(!title||!desc)return alert("Vui lòng nhập đủ thông tin!");
 if(categories.some(c=>c[1].toLowerCase()===title.toLowerCase()))return alert("Chủ đề đã tồn tại!");
 categories.push([icon,title,desc]);
 localStorage.setItem("nexusCategories",JSON.stringify(categories));
 document.getElementById("newTitle").value="";
 document.getElementById("newDescription").value="";
 document.getElementById("newIcon").value="";
 renderCategories();renderAdminArticles();
 alert("Đã thêm kiến thức vào kho!");
}
function renderAdminArticles(){
 document.getElementById("adminArticles").innerHTML=categories.map((c,i)=>`
 <div style="padding:10px;border-bottom:1px solid var(--line)">
 ${c[0]} ${c[1]} <button class="secondary" onclick="deleteKnowledge(${i})">Xóa</button>
 </div>`).join("");
}
function deleteKnowledge(i){
 if(!confirm("Xóa chủ đề này?"))return;
 categories.splice(i,1);
 localStorage.setItem("nexusCategories",JSON.stringify(categories));
 renderCategories();renderAdminArticles();
}

function loadCustomCategories(){
 try{
  let saved=JSON.parse(localStorage.getItem("nexusCategories"));
  if(Array.isArray(saved))categories=saved;
 }catch(e){}
}

function init(){
 loadCustomCategories();
 updateUI();
 renderCategories();
 renderGradeButtons();
 selectGrade(1);
 renderMissions();
 document.getElementById("featured").innerHTML=categories.slice(0,4).map(categoryCard).join("");
 document.getElementById("universeCards").innerHTML=categories.slice(0,8).map(categoryCard).join("");
 startQuiz();
}
init();
</script>
</body>
</html>
