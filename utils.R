library(DT)
view <- function(data_obj, rownames = FALSE, fixed_left_column_number = NULL, fixed_right_column_number = NULL){
  datatable(data_obj, 
            options = list(autoFill = TRUE,
                           colReorder = TRUE,
                           scrollX = TRUE,
                           keys = TRUE,
                           fixedColumns = list(leftColumns = fixed_left_column_number, 
                                               rightColumns = fixed_right_column_number),
                           rowGroup = list(dataSrc = 2)
                           dom = 'Bfrtip',
                           buttons = c('copy', 'csv', 'excel')),
            class = "display cell-border stripe",
            callback = JS("return table;"), 
            rownames,
            caption = NULL, 
            filter = c("none", "bottom", "top"), 
            escape = TRUE,
            style = "auto", 
            width = NULL, 
            height = NULL, 
            elementId = NULL,
            fillContainer = getOption("DT.fillContainer", NULL),
            autoHideNavigation = getOption("DT.autoHideNavigation", NULL),
            selection = c("multiple", "single", "none"), 
            extensions = c('AutoFill',"Buttons", "ColReorder", "FixedColumns","KeyTable","Responsive",
                           "RowGroup"),
            plugins = NULL, editable = "cell")
}
