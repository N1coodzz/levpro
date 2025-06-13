const wheel = document.getElementById('wheel');
const pointer = document.getElementById('pointer');
const cta = document.getElementById('cta');
let spun = false;
function spin() {
  if (spun) return;
  spun = true;
  const deg = 360 * 5 + Math.floor(Math.random()*360);
  wheel.style.transform = `rotate(${deg}deg)`;
  setTimeout(()=>{
    new Audio('data:audio/wav;base64,UklGRiQAAABXQVZFZm10IBAAAAABAAEAQB8AAEAfAAABAAgAZGF0YQAQAAAA').play();
    cta.style.display = 'block';
  },4000);
}
wheel.addEventListener('click', spin);
pointer.addEventListener('click', spin);
// ticker
const tickerEl = document.getElementById('ticker');
const tickerData = [
  'Ahmet 200 TRY kazandı',
  'Elif 100 Ücretsiz Döndürme kazandı',
  'Mehmet 150 TRY kazandı',
  'Ayşe 50 Ücretsiz Döndürme kazandı'
];
let tIdx=0;
function updateTicker(){
  tickerEl.textContent = tickerData[tIdx%tickerData.length];
  tIdx++;
}
setInterval(updateTicker,3000);
updateTicker();
// chat
const chatEl = document.getElementById('chat');
const chatData = [
  {n:'Ali',c:'İstanbul',m:'200 TRY kazandım!'},
  {n:'Zeynep',c:'Ankara',m:'100 Ücretsiz Döndürme kazandım'},
  {n:'Can',c:'İzmir',m:'50 TRY geldi'},
  {n:'Merve',c:'Bursa',m:'75 Ücretsiz Döndürme aldım'}
];
let cIdx=0;
function renderChat(){
  chatEl.innerHTML='';
  for(let i=0;i<3;i++){
    const d=chatData[(cIdx+i)%chatData.length];
    const div=document.createElement('div');
    div.className='chat-msg';
    div.textContent=`${d.n}, ${d.c} – ${d.m}`;
    chatEl.appendChild(div);
  }
  cIdx++;
}
setInterval(renderChat,10000);
renderChat();
// timer
let sec=300;
const timerEl=document.getElementById('timer');
function updateTimer(){
  const m=String(Math.floor(sec/60)).padStart(2,'0');
  const s=String(sec%60).padStart(2,'0');
  timerEl.textContent=`${m}:${s}`;
  if(sec===0){
    clearInterval(timerInt);
    cta.disabled=true;
    cta.style.opacity=0.6;
  }
  sec--;}
const timerInt=setInterval(updateTimer,1000);
updateTimer();
// anti back
window.addEventListener('beforeunload',function(e){
  if(!spun){
    e.preventDefault();
    e.returnValue='';
    alert('+25 Ücretsiz Döndürme seni bekliyor!');
  }
});
