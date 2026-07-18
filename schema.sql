CREATE TABLE sectors(
    sector_id SERIAL PRIMARY KEY, 
    sector_name VARCHAR(50) NOT NULL
);

CREATE TABLE stocks(
    stock_id SERIAL PRIMARY KEY, 
    stock_name VARCHAR(50) NOT NULL,
    ticker VARCHAR(50) NOT NULL,
    sector_id INT REFERENCES sectors(sector_id)
);

CREATE TABLE daily_prices(
    price_id SERIAL PRIMARY KEY, 
    stock_id INT REFERENCES stocks(stock_id),
    date DATE NOT NULL,
    close_price DECIMAL(10,4) NOT NULL,
    daily_return DECIMAL(10,4) NOT NULL
);

CREATE TABLE sector_return(
    sector_returnsid SERIAL PRIMARY KEY,
    date DATE NOT NULL,
    sector_id INT REFERENCES sectors(sector_id),
    sector_return DECIMAL(10,4) NOT NULL,
    cumulative_return DECIMAL(10,4) NOT NULL
);

CREATE TABLE sector_volatility(
    sector_name VARCHAR(50) NOT NULL,
    annualized_volatility DECIMAL(10,4) NOT NULL
);