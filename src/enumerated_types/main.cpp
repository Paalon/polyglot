#include <print>
#include <string>
#include <vector>

enum struct Season {
    Spring,
    Summer,
    Autumn,
    Winter,
};

template <>
struct std::formatter<Season> : std::formatter<std::string> {
    auto format(Season season, format_context & ctx) const {
        std::string str;
        switch (season) {
        case Season::Spring:
            str =  "Spring";
            break;
        case Season::Summer:
            str = "Summer";
            break;
        case Season::Autumn:
            str = "Autumn";
            break;
        case Season::Winter:
            str = "Winter";
            break;
        default:
            throw "Invalid Season.";
        }
        return formatter<string>::format(std::format("{}", str), ctx);
    }
};

Season next(Season const season) {
    return static_cast<Season>((static_cast<int>(season) + 1) % 4);
}

Season prev(Season const season) {
    return static_cast<Season>((static_cast<int>(season) + 3) % 4);
}

bool is_mild(Season const season) {
    return season == Season::Spring || season == Season::Autumn;
}

bool is_hot(Season const season) {
    return season == Season::Summer;
}

bool is_cold(Season const season) {
    return season == Season::Winter;
}

int main() {
    auto const seasons = std::vector{Season::Spring, Season::Summer, Season::Autumn, Season::Winter};
    for (auto const season : seasons) {
        std::println("{}", season);
        std::println("{}", next(season));
        std::println("{}", prev(season));
        std::println("{}", is_mild(season));
        std::println("{}", is_hot(season));
        std::println("{}", is_cold(season));
    }
}
