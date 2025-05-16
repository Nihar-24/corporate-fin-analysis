from sqlalchemy import create_engine, text  # Import "text"
import urllib

def get_sqlalchemy_conn():
    driver = "ODBC Driver 18 for SQL Server"
    server = r"DESKTOP-0EA0GRI\SQLEXPRESS"  # Raw string for backslash
    database = "corporate-fin-analysis"
    
    conn_str = (
        f"DRIVER={{{driver}}};"
        f"SERVER={server};"
        f"DATABASE={database};"
        "Trusted_Connection=yes;"
        "TrustServerCertificate=yes;"  # Bypass SSL for local dev
    )
    
    quoted_conn_str = urllib.parse.quote_plus(conn_str)
    return create_engine(f"mssql+pyodbc:///?odbc_connect={quoted_conn_str}")

# Test with text()
engine = get_sqlalchemy_conn()
with engine.connect() as conn:
    result = conn.execute(text("SELECT @@version;"))  # Wrap SQL with text()
    print("Connected to SQL Server:", result.scalar())