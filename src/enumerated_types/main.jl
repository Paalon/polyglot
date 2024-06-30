@enum Season::UInt8 Spring Summer Autumn Winter

next(season::Season) = Season((UInt8(season) + 0x01) % 0x04)
prev(season::Season) = Season((UInt8(season) + 0x03) % 0x04)
ismild(season::Season) = UInt8(season) % 0x02 == 0x00
ishot(season::Season) = season == Summer
iscold(season::Season) = season == Winter

for season in instances(Season)
    println(season)
    println(next(season))
    println(prev(season))
    println(ismild(season))
    println(ishot(season))
    println(iscold(season))
end
