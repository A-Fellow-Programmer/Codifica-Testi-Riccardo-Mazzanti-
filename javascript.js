window.onload = function(){
    const targetDiv = document.getElementById("pag1");
    const targetDiv2 = document.getElementById("pag2");
    const targetDiv3 = document.getElementById("pag3");

const btn = document.getElementById("1");
const btn2 = document.getElementById("2");
const btn3 = document.getElementById("3");
const btn11 = document.getElementById("11");
const btn22 = document.getElementById("22");
const btn33 = document.getElementById("33");

btn.onclick = function () {
    targetDiv.style.display = "block";
    targetDiv2.style.display = "none";
    targetDiv3.style.display = "none";
}
btn11.onclick = function () {
    targetDiv.style.display = "block";
    targetDiv2.style.display = "none";
    targetDiv3.style.display = "none";
}

  btn2.onclick = function () {
    targetDiv.style.display = "none";
    targetDiv2.style.display = "block";
    targetDiv3.style.display = "none";
}
btn22.onclick = function () {
    targetDiv.style.display = "none";
    targetDiv2.style.display = "block";
    targetDiv3.style.display = "none";
}
btn3.onclick = function () {
    targetDiv.style.display = "none";
    targetDiv2.style.display = "none";
    targetDiv3.style.display = "block";
    }
    btn33.onclick = function () {
        targetDiv.style.display = "none";
        targetDiv2.style.display = "none";
        targetDiv3.style.display = "block";
    }

};
