"""Main driver for Learning fastapi."""

import logging
import family
from math import sqrt
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


@app.get("/items/{item_id}")
async def get_item(item_id: int):
    logging.info("getting item {}".format(item_id))
    return {"item": item_id}


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


@app.get("/family/{who}")
async def read_family(who: family.Family):
    logging.info("family request for {0}".format(who))
    return family.data[who.value]


@app.get("/long/{what:path}")
async def read_long(what: str):
    logging.info("long request for {0}".format(what))
    return what


@app.get("/hypotenuse/")
async def hypotenuse(x: float = 1.0, y: float = 1.0):
    logging.info("hypotenuse request for {0} {1}".format(x, y))
    return sqrt(x*x + y*y)
