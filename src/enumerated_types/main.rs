use Season::{Spring, Summer, Autumn, Winter};

#[derive(Debug, PartialEq, Copy, Clone)]
enum Season {
    Spring,
    Summer,
    Autumn,
    Winter,
}

fn next(season: Season) -> Season {
    match season {
        Spring => Summer,
        Summer => Autumn,
        Autumn => Winter,
        Winter => Spring,
    }
}

fn prev(season: Season) -> Season {
    match season {
        Spring => Winter,
        Summer => Spring,
        Autumn => Summer,
        Winter => Autumn,
    }
}

fn is_mild(season: Season) -> bool {
    season == Spring || season == Autumn
}

fn is_hot(season: Season) -> bool {
    season == Summer
}

fn is_cold(season: Season) -> bool {
    season == Winter
}

fn main() {
    for season in [Spring, Summer, Autumn, Winter] {
        println!("{:?}", season);
        println!("{:?}", next(season));
        println!("{:?}", prev(season));
        println!("{:?}", is_mild(season));
        println!("{:?}", is_hot(season));
        println!("{:?}", is_cold(season));
    }
}
