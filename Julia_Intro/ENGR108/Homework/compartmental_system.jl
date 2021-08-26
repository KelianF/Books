using Gadfly

function plot_compartments(X)
    xticks = [0, 25, 50, 75, 100]
    yticks = [0, .25, .5, .75, 1.0] 
    plot(
        layer(y=X[1,:], x=1:100, Geom.line, Theme(default_color=colorant"blue")),
        layer(y=X[2,:], x=1:100, Geom.line, Theme(default_color=colorant"red")),
        layer(y=X[3,:], x=1:100, Geom.line, Theme(default_color=colorant"green")),
        Guide.XLabel("t"), Guide.YLabel("Amount"),
        Guide.xticks(ticks=xticks), Guide.yticks(ticks=yticks)
      )
end

function plot_totals(totals)
    xticks = [0, 25, 50, 75, 100]
    yticks = [0, .25, .5, .75, 1.0]
    plot(
    	y=totals,x=1:100,Geom.line,
    	Guide.XLabel("t"),Guide.YLabel("Total Amount"),
    	Guide.xticks(ticks=xticks), Guide.yticks(ticks=yticks)
      )
end
