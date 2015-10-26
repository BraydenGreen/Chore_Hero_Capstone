# $(document).ready ->
#   if window.location.pathname == '/charts'
#     labels = []
#   dataPoints = []
#   $.ajax '/chores_assigned'
#     type: 'GET'
#     binding.pry
#     success: (data) ->
#       labels = Object.keys(data.records)
#       for key of data.records
#         dataPoints.push(data.records[key])
#     data = {
#       labels: ['chores']
#       datasets: [
#         {
#           label: "Chores assigned",
#           fillColor: "rgba(220,220,220,0.2)",
#           strokeColor: "rgba(220,220,220,0,1)",
#           pointsColor: "rgba(220,220,220,0.1)",
#           pointStrokeColor: "#fff"
#           pointHighlightFill: "#fff"
#           pointHighlightStroke: "rgba(220,220,220,1)"
#           data: 

#        }
#       ]
#     }

#     $('#chores_assigned').empty()
#     new Chart($('#chores_assigned').get(0).getContext('2d')).Line(data, {responsive: true}) 
