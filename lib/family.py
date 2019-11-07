"""Family information"""

from enum import Enum


class Family(str, Enum):
    Connor = "Connor"
    Morgan = "Morgan"
    Abby = "Abby"
    Mike = "Mike"

data = {
    "Connor": {"age": 22},
    "Morgan": {"age": 25},
    "Abby": {"age": 29},
    "Mike": {"age": 59}
}
