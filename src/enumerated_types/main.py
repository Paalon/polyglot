from enum import Enum, auto

class Season(Enum):
    SPRING = 0
    SUMMER = auto()
    AUTUMN = auto()
    WINTER = auto()
    def next(self):
        return Season((self.value + 1) % 4)
    def prev(self):
        return Season((self.value + 3) % 4)
    def is_mild(self):
        return self == Season.SPRING or self == Season.AUTUMN
    def is_hot(self):
        return self == Season.SUMMER
    def is_cold(self):
        return self == Season.WINTER

if __name__ == "__main__":
    for season in Season:
        print(season)
        print(season.next())
        print(season.prev())
        print(season.is_mild())
        print(season.is_hot())
        print(season.is_cold())
