# generate random color
# some colors seem to be not html/icon::wahtever compatible!

random_color <- function(n_colors=1){
    colors = colors()
    
    sample(
        colors[!grepl(
            x=colors,
            pattern="[0-9]+|grey|gray|black|white")],
        n_colors)
}

