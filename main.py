"""Main driver for the Myndshft takehome assignment."""

import logging
from fastapi import FastAPI

def main():
    logging.basicConfig(level=logging.DEBUG,
                        filemode="w",
                        filename="/data/learn-fastapi/logs/main.log")
    logging.debug("Launching Server")

    return FastAPI()

app = main()

@app.get("/")
def read_root():
    logging.info("root request received")
    return {"Hello": "World"}

@app.get("/search")
def read_item(q: str = None):
    logging.info("search request received {0}".format(q))
    return {"Hello": "World"}
    #return {"item_id": item_id, "q": q}

if __name__ == '__main__' :
    main()
