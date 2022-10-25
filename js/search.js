//////////xử lý tìm kiếm ////////////

$(document).ready(function(){
    var i = 1;
    function timkiem(){
        var txtsearch = $("#input-search").val();
        if(txtsearch == "")
            return;
        var arr = [];
        for (var i = 0 ; i < 96; i++){
            var str = data[i].discriptions.toLowerCase();
            var vitri = str.indexOf(txtsearch.toLowerCase(),0);
            if(vitri >= 0){
                arr.push(String(i));
                continue;
            }
            for(var j = 0 ; j < data[i].informations_name.length ; j++ ){
                str = data[i].informations_data[j].toLowerCase();
                vitri = str.indexOf(txtsearch.toLowerCase(),0);
                if(vitri >= 0){
                    arr.push(String(i));
                    continue;
                }
            }
        }
        localStorage.setItem("txt", txtsearch);
        localStorage.setItem("resultsearch", arr);
        location.href = './TimKiem.html';
    }

    $("#search").click(timkiem);

    function timkiem2(){
        var txtsearch = $("#input-search2").val();
        if(txtsearch == "")
            return;
        var arr = [];
        for (var i = 0 ; i < 96; i++){
            var str = data[i].discriptions.toLowerCase();
            var vitri = str.indexOf(txtsearch.toLowerCase(),0);
            if(vitri >= 0){
                arr.push(String(i));
                continue;
            }
            for(var j = 0 ; j < data[i].informations_name.length ; j++ ){
                str = data[i].informations_data[j].toLowerCase();
                vitri = str.indexOf(txtsearch.toLowerCase(),0);
                if(vitri >= 0){
                    arr.push(String(i));
                    continue;
                }
            }
        }
        localStorage.setItem("txt", txtsearch);
        localStorage.setItem("resultsearch", arr);
        location.href = './TimKiem.html';
    }

    $("#search2").click(timkiem2);
})