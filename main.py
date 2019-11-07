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
async def read_root():
    logging.info("root GET request received")
    #return {"Hello": "World"}
    return [{"hello": "everybody"}, {"pie": "cherry"}]

@app.put("/")
async def put_root():
    logging.info("root PUT request received")
    #return {"Hello": "World"}
    return str("What's up doc?")

@app.get("/search")
def read_item(q: str = None):
    logging.info("search request received {0}".format(q))
    return {"Hello": "World"}
    #return {"item_id": item_id, "q": q}
