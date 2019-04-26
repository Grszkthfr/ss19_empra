# creates for dates in class

### Library
library(tidyverse)
library(knitr)
library(kableExtra) ## for "Awesome HTML Table with knitr::kable"

###17 Sitzungen (inkl. Vorlesungsfreitage/ -zeit)
Sitzung <- c(1:13)

### Daten für jede Sitzung
Termin <- c()

for (i in Sitzung){
    ### from first date
    Tag <- (as.Date("2019-04-29") + (i*7-7)) %>% format("%d. %B %Y")
    Termin <- c(Termin, Tag)
}


### Thema für jede Sitzung
Thema <- c(

    ### Sitzung 1
    'Orga, Kennenlernen, Wissenschaft, [Folien](/slides/01-orga.html)',

    ### Sitzung 2
    '',

    ### Sitzung 3
    'Entfällt: Stiftungsfest',

    ### Sitzung 4
    '',

    ### Sitzung 5
    '',

    ### Sitzung 6
    '',

    ### Sitzung 7
    'Entfällt: Pfingsten',

    ### Sitzung 8
    'Entfällt: Konferenz',

    ### Sitzung 9
    '',

    ### Sitzung 10
    '',

    ### Sitzung 11: Weihnachten
    '',

    ### Sitzung 12: Neujahr
    '',

    ### Sitzung 13
    '')

### Nr. Termin Thema in einer Tabelle
Sitzungen <- data.frame(Sitzung, Termin, Thema) %>%

    ### Vorlesungsfreie Tage
    filter(

        ### Weihnachten
        Termin != "24. Dezember 2018",

        ### Silvester
        Termin != "31. Dezember 2018") %>%

    group_by(str_starts(Thema, "Entfällt")) %>%

    mutate(
        Sitzung = 1:n()) %>% ungroup() %>%

    mutate(

        ### Anzahl Sitzungen ohne vorlesungsfreie Tage
        Sitzung = case_when(
            str_starts(Thema, "Entfällt") ~ " ",
            !str_starts(Thema, "Entfällt") ~
                ifelse(
                    str_count(Sitzung) < 2,
                    str_c("0", Sitzung),
                    Sitzung))) %>%

    select('Nr.' = Sitzung, Termin, Thema)


### Tabelle in html für slides
sitzung_html <-
    Sitzungen %>%

    ### delete link to other slides in html table
    mutate(
        Thema = ifelse(
            str_detect(Thema, "Folien"),
            str_extract(Thema, ".+?(?=, \\[Folien\\])"),
            as.character(Thema))) %>%

    kable(
        format = 'html',
        table.attr = "style='width:100%;'",
        align = c("c","c","l"),
        caption = "Übersicht - Sommersemester 2019"
        ) %>%
    kable_styling(font_size = 14)

### Tabelle in markdown für index.md
sitzung_md <- kable(Sitzungen, format = 'markdown', align = c("c","c","l"))

#rm(day, i, Nr., Thema, Termine)
