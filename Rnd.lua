-- Not mine but a good friend of mine shared it, back in 2021 :)

function Rnd(NmbRnd, Min, Max)
    local ToTxt = ""
    for i = 1, NmbRnd do
        ToTxt = ToTxt..string.char(math.random(Min, Max))
    end
    return ToTxt
end

print(Rnd(math.random(15, 35), 33, 93))
