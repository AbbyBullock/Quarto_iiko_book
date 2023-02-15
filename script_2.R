VSH %>% 
  mutate(date = round_date(date, "month")) %>% 
  group_by(date, group_2) %>% 
  summarise(
    count = sum(count)
  ) %>% 
  ungroup() %>% 
  ggplot(aes(date, count, col = group_2)) +
  geom_line() +
  geom_point(size = 1) +
  theme_light() +
  geom_text(aes(label = count),
            position = position_dodge(width = 0), vjust = -1,
            size = 1.7,
            alpha = 1,
            col = "black") +
  theme(legend.position = "bottom",
        legend.title = element_blank()) +
  xlab("Месяц") +
  ylab("Кол-во проданных SKU") +
  ggtitle("Кол-во проданных SKU",
          subtitle = "Бар и еда") +
  theme(axis.text.x = element_text(angle = 0, size = 5))