SELECT timestamp,
	ABS(open - close) AS gap
FROM coinbase
WHERE ABS(open - close) > 85;

SELECT *
FROM coinbase
WHERE open:: DECIMAL % 5 = 0;

SELECT *
FROM coinbase
WHERE CAST(open AS DECIMAL) % 5 = 0;


SELECT *,
		__round(what_to_round, number_of_decimal_places)
		__
		ROUND(((high - low)))
	   LOG(volume_btc) AS log_vol_btc,
	   SQRT(volume_btc) AS sqrt_vol_btc,
	   volume_btc ^ (1.0/3.0) AS cbrt_vol_btc
FROM coinbase;


SELECT *
	size BETWEEN high AND low = 40 weighted_price
	size BETWEEN open AND close  = 60 weighted_price
	size round(DECIMAL)
FROM coinbase;

SELECT *,
	 
	  ROUND((high - low) * 0.4 + abs(open-close) * 0.6, 1) AS metric_wt
FROM coinbase
WHERE NOT open = close;











