library(ggplot2)

nba_data <- data.frame(
  Player = c(
    "Nikola Jokic",
    "Luka Doncic",
    "Jayson Tatum",
    "LeBron James",
    "Stephen Curry",
    "Victor Wembanyama",
    "Anthony Edwards",
    "Giannis Antetokounmpo"
  ),

  PPG = c(
    29.6,
    33.9,
    27.1,
    25.7,
    26.4,
    24.3,
    25.9,
    30.4
  ),

  AST = c(
    10.2,
    9.8,
    4.9,
    8.3,
    6.1,
    3.7,
    5.1,
    6.5
  )
)

ggplot(
  nba_data,
  aes(
    x = AST,
    y = PPG,
    label = Player
  )
) +
  geom_point(size = 3) +
  geom_text(nudge_y = 0.4) +
  labs(
    title = "Prototype NBA Player Profile Visualization",
    x = "Assists Per Game",
    y = "Points Per Game"
  ) +
  theme_minimal()

