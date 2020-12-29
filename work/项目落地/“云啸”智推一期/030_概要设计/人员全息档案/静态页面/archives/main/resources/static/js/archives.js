/**
 * Created by cominfo on 2018/1/17.
 */
var myChart = echarts.init(document.getElementById('dataTypeChart'));
var option = {
    backgroundColor: "#ffffff",
    color: ["#37A2DA"],
    radar: {
        shape: 'circle',
        name: {
            textStyle: {
                color: '#30a6f1',
                fontSize:'26'
            }
        },
        splitArea: {
            areaStyle: {
                color: '#f5f5f8',
                shadowColor: '#37A2DA'
                // backgroundColor:'#000'
            }
        },
        indicator: [{
                name: '涉黄',
                max: 11500
            },
            {
                name: '涉毒',
                max: 5000
            },
            {
                name: '涉赌',
                max: 5000
            },
            {
                name: '前科',
                max: 6000
            },
            {
                name: '重点人员',
                max: 5000
            },
            {
                name: '车内盗窃',
                max: 5000
            },
            {
                name: '盗窃',
                max: 25000
            },
            {
                name: '涉恶',
                max: 6000
            }
        ]
    },
    series: [{
        type: 'radar',
        data: [{
            value: [2200,4000,3000,4000,2500,3000,6000,3000],
            name: '数据',
            itemStyle: {
                normal: {
                    color: 'none'
                }
            },
            areaStyle: {
                normal: {
                    color: 'rgba(48,166,241,.5)'
                }
            }
        }]
    }]
}
myChart.setOption(option);
window.onresize = myChart.resize;