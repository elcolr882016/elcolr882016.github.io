function hienthi(id){
    console.log(id);
    localStorage.setItem("id",id); 
}

function renderAllProduct(a,b){
    var str ="";
            for (let i = a ; i < b ; i++){
                str += 
                    '<div class=" col-6 col-md-3 picture" id="'+  data[i].id +'" onclick="hienthi('+ data[i].id +')" >' +
                    '<a href="./ChiTietSanPham.html"><img src="../img/data_picture/'+ data[i].picture[0] +'" alt="Picture"></a>' +
                    '<a href="./ChiTietSanPham.html"><p class="name-watch">'+ data[i].name +'</p></a>'+
                    '<p class="price">' + Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(data[i].price * 1000) +'</p>'+
                    '</div>'
                    ;
    }
    return str;
}

function renderProductRandom(a,b,c){
    var str = "";
    var ds = [];
    for (let z = 0 ; z < c ; z++){
        var i = Math.floor(Math.random() * (a - b + 1) ) + b;
        while(ds.indexOf(String(i))>=0){
            i = Math.floor(Math.random() * (a - b + 1) ) + b;   
        }
        ds.push(String(i));

        str += 
        '<div class=" col-6 col-md-3 picture" id="'+  data[i].id +'" onclick="hienthi('+ data[i].id +')" >' +
            '<a href="./ChiTietSanPham.html"><img src="../img/data_picture/'+ data[i].picture[0] +'" alt="Picture"></a>' +
            '<a href="./ChiTietSanPham.html"><p class="name-watch">'+ data[i].name +'</p></a>'+
            '<p class="price">' + Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(data[i].price * 1000) +'</p>'+
        '</div>'
        ;
    }
    return str;
}

//render trang chu
function renderMainPage(){
    document.getElementById('row-dungcutapgym').innerHTML = renderProductRandom  (0,59,4) ;
    document.getElementById('row-dungcutapyoga').innerHTML = renderProductRandom    (60,89,4) ;
    document.getElementById('row-maychaybo').innerHTML = renderProductRandom   (90,119,4) ;
    document.getElementById('row-ghemassage').innerHTML = renderProductRandom  (120,130,4) ;
}
function go(){
    location.href = './GioHang.html';
}

function changeIconGH(){
    
    if(localStorage.getItem("giohang") == null){
        var arr = [];
        for(var i = 0 ; i < 96 ; i++){
            arr.push(String(0));
        }
        console.log(arr);
        localStorage.setItem("giohang", arr);
        localStorage.setItem("soluongsp", '0');
        return ;
    } 
    var gh = localStorage.getItem("giohang").split(",");
    var sl = 0;
    for(var i = 0  ; i < 96 ; i++){
        sl += parseInt(gh[i]);
    }
    console.log("giỏ hàng - " + sl);
    if(sl > 0){
        document.getElementById('icon-cart-pc').classList.remove('bi-cart');
        document.getElementById('icon-cart-pc').classList.add('bi-cart-check-fill');
        document.getElementById('icon-cart').classList.remove('bi-cart');
        document.getElementById('icon-cart').classList.add('bi-cart-check-fill');
    }

}