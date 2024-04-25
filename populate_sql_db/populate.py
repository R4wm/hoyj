#!/usr/bin/env python3
import sqlite3


def main():
    con = sqlite3.connect("/home/r4wm/hoyj.db")
    cur = con.cursor()
    res = cur.execute("SELECT count(*) from media")
    
    db_count = res.fetchone()
    print(type(db_count))
    print("this is count: ", db_count[0])
    print("db_count: ", db_count)
    
if __name__ == '__main__':
    main()
