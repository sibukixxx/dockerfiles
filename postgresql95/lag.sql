 SELECT                        
  都道府県名
  , 公園名
  , "訪問者IP"
  , 県別訪問者数
  , 都道府県別公園別訪問者数
  , SUM(都道府県別ユニーク訪問者フラグ) OVER(PARTITION BY 都道府県名 ORDER BY 都道府県名) AS 都道府県別ユニーク訪問者数
  , SUM(公園別ユニーク訪問者フラグ) OVER(PARTITION BY 公園名 ORDER BY 公園名) AS 公園別ユニーク訪問者数
  , SUM(ユニーク訪問者フラグ) OVER() AS ユニーク訪問者数
FROM
(
SELECT 
  都道府県名
  , 公園名
  , "訪問者IP"
  , COUNT(*) OVER(PARTITION BY 都道府県名 ORDER BY 都道府県名) AS 県別訪問者数
  , COUNT(*) OVER(PARTITION BY 都道府県名, 公園名 ORDER BY 都道府県名, 公園名) AS 都道府県別公園別訪問者数
  , CASE WHEN "訪問者IP" = LAG("訪問者IP", 1) OVER(PARTITION BY 都道府県名 ORDER BY 都道府県名, "訪問者IP") THEN 0 ELSE 1 END AS 都道府県別ユニーク訪問者フ ラグ
  , CASE WHEN "訪問者IP" = LAG("訪問者IP", 1) OVER(PARTITION BY 公園名 ORDER BY 公園名, "訪問者IP") THEN 0 ELSE 1 END AS 公園別ユニーク訪問者フラグ
  , CASE WHEN "訪問者IP" = LAG("訪問者IP", 1) OVER(ORDER BY "訪問者IP") THEN 0 ELSE 1 END ユニーク訪問者フラグ
FROM
  test
ORDER BY
  都道府県名
  , 公園名
) AS 集計基本結果セット
ORDER BY
  都道府県名
  , 公園名;
