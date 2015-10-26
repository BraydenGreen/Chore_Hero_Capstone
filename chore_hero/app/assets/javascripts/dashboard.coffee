$(document).ready ->
  if window.location.pathname == '/charts'
    labels = []
    dataPoints = []
    $.ajax '/chores_assigned',
      type: 'GET'
      success: (data) ->
        for obj in data.records
          labels.push obj.name
          dataPoints.push(obj.count)
        chartData = {
          labels: labels
          datasets: [
            {
              label: "Chores assigned",
              fillColor: "rgba(220,220,220,0.2)",
              strokeColor: "rgba(220,220,220,0,1)",
              pointsColor: "rgba(220,220,220,0.1)",
              pointStrokeColor: "#fff"
              pointHighlightFill: "#fff"
              pointHighlightStroke: "rgba(220,220,220,1)"
              data: dataPoints

           }
          ]
        }

        $('#chores_assigned').empty()
        new Chart($('#chores_assigned').get(0).getContext('2d')).Line(chartData, {responsive: true}) 
