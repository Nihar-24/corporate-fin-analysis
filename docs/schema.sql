-- Income Statement Table
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='income_statement' AND xtype='U')
BEGIN

CREATE TABLE income_statement (
    date DATE PRIMARY KEY,           -- Fiscal period end date
    revenue BIGINT,                  -- Total revenue (in USD)
    cost_of_revenue BIGINT,          -- Cost of goods sold (COGS)
    gross_profit BIGINT,
    operating_expenses BIGINT,
    net_income BIGINT                -- Final profit after all expenses
);
END;

-- Balance Sheet Table
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='balance_sheet' AND xtype='U')
BEGIN
CREATE TABLE balance_sheet (
    date DATE PRIMARY KEY,           -- Fiscal period end date
    total_assets BIGINT,
    total_liabilities BIGINT,
    stockholders_equity BIGINT,
    cash_and_equivalents BIGINT,     -- Highly liquid assets
    current_assets BIGINT,           -- Short-term assets (for current ratio)
    current_liabilities BIGINT       -- Short-term liabilities
);
END;