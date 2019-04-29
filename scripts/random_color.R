# generate random color
# # random color


random_color <- function(n_colors=2){
    colors = colors()
    
    sample(
        colors[!grepl(
            x=colors,
            pattern="[0-9]+|grey|gray|black|white")],
        n_colors)
}

