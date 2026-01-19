$.fn.donutRun = function() {

var donutClass = ["white", "green", "choco", "pink", "blue", "orange", "yellow", "purple", "black"];

    $(this).on('click', function() {

        function randOrd(){
            return (Math.round(Math.random())-0.8);
        }

        var randDonut = donutClass.sort(randOrd);

        for (var i = 0; i < randDonut.length; i++) {
            var donut = "<div class='donut'><div class='donut" + i + "'><img src='images/donut-" + randDonut[i] + ".png'>";
            // change the img src to the file with the images you would like to use. Do not alter the "randDonut[i]"
            $('body').append(donut);
        }
    }); //start animation

} //entire donutRun function

    // to stop animation, refresh page