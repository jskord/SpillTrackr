var years = [];
var count = [];
 
$.getJSON('http://localhost:3000/json/spills_by_year', function(data) {
    data.forEach(function(spill) {
        years.push (spill.year);
        count.push (spill.count);
    });

    // console.log(Object.prototype.toString.call(years));
    console.log(years);
    console.log(count);

    $(function () {
        Highcharts.chart('container', {
            title: {
                text: 'Monthly Average Temperature',
                x: -20
            },
            subtitle: {
                text: 'Source: WorldClimate.com',
                x: -20
            },
            xAxis: {
                categories: years
            },

            yAxis: {
                title: {
                    text: 'Temperature (°C)'
                },
                plotLines: [{
                    value: 0,
                    width: 1,
                    color: '#808080'
                }]
            },
            tooltip: {
                valueSuffix: '°C'
            },
            legend: {
                layout: 'vertical',
                align: 'right',
                verticalAlign: 'middle',
                borderWidth: 0
            },
            series: [{
                name: 'Tokyo',
                data: count,
            }]
        });
    });

});

console.log('hello!!!!!');