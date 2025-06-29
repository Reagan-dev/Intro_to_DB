import mysql.connector
from mysql.connector import errorcode

def create_database():
    try:
        # Connect to MySQL Server - replace with your credentials
        connection = mysql.connector.connect(
            host="localhost",
            user="tool",      
            password=""   
        )
        cursor = connection.cursor()

        # Create database if it doesn't exist
        cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
        print("Database 'alx_book_store' created successfully!")

    except mysql.connector.Error as err:
        print(f"Error: {err}")

    finally:
        # Always close cursor and connection
        if 'cursor' in locals() and cursor:
            cursor.close()
        if 'connection' in locals() and connection.is_connected():
            connection.close()

if __name__ == "__main__":
    create_database()