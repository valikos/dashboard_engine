var ctx = document.getElementById("myChart").getContext("2d");

var data = {
  labels : ["January","February","March","April","May","June","July", "August"],
  datasets : [
    {
      fillColor: "rgba(220,220,220,0.5)",
      strokeColor: "rgba(220,220,220,1)",
      pointColor: "rgba(220,220,220,1)",
      pointStrokeColor: "#fff",
      data: $('#idea').data('chart')
    },
    {
      fillColor: "rgba(151,187,205,0.5)",
      strokeColor: "rgba(151,187,205,1)",
      pointColor: "rgba(151,187,205,1)",
      pointStrokeColor: "#fff",
      data: $('#location').data('chart')
    },
    {
      fillColor: "rgba(205,151,205,0.5)",
      strokeColor: "rgba(205,151,205,1)",
      pointColor: "rgba(205,151,205,1)",
      pointStrokeColor: "#fff",
      data: $('#article').data('chart')
    },
  ]
}

var myNewChart = new Chart(ctx).Line(data);