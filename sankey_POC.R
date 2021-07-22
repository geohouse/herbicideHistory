library(plotly)


# Herbicide use and formulations over time plotted as an interactive Sankey diagram.

# Requires 3 things for input:
# 1) char. vector of labels
# 2) char. vector of colors
# 3) list with vectors having names 'source', 'target', and 'value'

labels <- c("Banvel-1964", "Marksman-1986", "Clarity-1992", "Distinct-1998", "Status-2007", "Engenia-2016")
colors <- RColorBrewer::brewer.pal(6, "Set1")
link_list <- list(
    source = c(0,1,2,3,4),
    target = c(1,2,3,4,5),
    value =  c(5,4,3,2,1)
)

fig3 <- plot_ly(
    type = "sankey",
    orientation = "h",
    
    node = list(
        label = labels,
        color = colors,
        pad = 15,
        thickness = 20,
        line = list(
            color = "black",
            width = 0.5
        )
    ),
    
    link = link_list
)
fig3 <- fig3 %>% layout(
    title = "Basic Sankey Diagram",
    font = list(
        size = 10
    )
)

fig3






# sankey_plot <- plotly::plot_ly(
#     type = "sankey",
#     orientation = "h",
#     
#     node = list(
#         label = labels,
#         color = colors,
#         pad = 15,
#         thickness = 20,
#         line = list(
#             color = "black",
#             width = 0.5
#         )
#     ),
#     
#     link = link_list
#     
# )
# 
# sankey_plot <- sankey_plot %>% layout(
#     title = "Basic Sankey Diagram",
#     font = list(
#         size = 10
#     )
# )
# 
# sankey_plot
# 
# fig <- plot_ly(
#     type = "sankey",
#     orientation = "h",
#     
#     node = list(
#         label = c("A1", "A2", "B1", "B2", "C1", "C2"),
#         color = c("blue", "blue", "blue", "blue", "pink", "blue"),
#         pad = 15,
#         thickness = 20,
#         line = list(
#             color = "black",
#             width = 0.5
#         )
#     ),
#     
#     link = list(
#         source = c(0,1,0,2,3,3),
#         target = c(2,3,3,4,4,5),
#         value =  c(8,4,2,8,4,2)
#     )
# )
# fig <- fig %>% layout(
#     title = "Basic Sankey Diagram",
#     font = list(
#         size = 10
#     )
# )
# 
# fig
# 
# fig2 <- plot_ly(
#     type = "sankey",
#     orientation = "h",
#     
#     node = list(
#         label = c("A2", "B2", "C1", "C2"),
#         color = c("blue", "blue", "pink", "blue"),
#         pad = 15,
#         thickness = 20,
#         line = list(
#             color = "black",
#             width = 0.5
#         )
#     ),
#     
#     link = list(
#         source = c(0,1,2,2),
#         target = c(1,2,3,4),
#         value =  c(4,8,4,2)
#     )
# )
# fig2 <- fig2 %>% layout(
#     title = "Basic Sankey Diagram",
#     font = list(
#         size = 10
#     )
# )
# 
# fig2
# 
# fig3_link_list <- list(
#     source = c(0,1,2,3,4),
#     target = c(1,2,3,4,5),
#     value =  c(1,1,1,1,1)
# )
# 
# fig3_colors <- RColorBrewer::brewer.pal(6, "Set1")
# fig3_labels <- c("Banvel-1964", "Marksman-1986", "Clarity-1992", "Distinct-1998", "test1","test2")
# 
# fig3 <- plot_ly(
#     type = "sankey",
#     orientation = "h",
#     
#     node = list(
#         label = fig3_labels,
#         color = fig3_colors,
#         pad = 15,
#         thickness = 20,
#         line = list(
#             color = "black",
#             width = 0.5
#         )
#     ),
#     
#     link = fig3_link_list
# )
# fig3 <- fig3 %>% layout(
#     title = "Basic Sankey Diagram",
#     font = list(
#         size = 10
#     )
# )
# 
# fig3
# 
