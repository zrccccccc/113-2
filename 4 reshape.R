library(tidyverse)

# 讀取資料
raw_travel_data <- readr::read_csv("歷年中華民國國民出國目的地人數統計2002-2024.csv", show_col_types = FALSE)

# 轉換數值欄位為字串，以避免 pivot_longer 出錯
raw_travel_data <- raw_travel_data |>
  dplyr::mutate(
    dplyr::across(-c(首站抵達地, 細分), as.character)
  )

# 轉換為長格式
tidy_travel_data <- raw_travel_data |>
  tidyr::pivot_longer(
    cols = -c(首站抵達地, 細分),  # 排除非數值欄位
    names_to = "year",
    values_to = "count"
  ) |>
  dplyr::mutate(
    year = as.integer(year),
    count = readr::parse_number(count, na = "-")  # 將 "-" 轉換為 NA
  )

# 檢查轉換後的欄位名稱
colnames(tidy_travel_data)

