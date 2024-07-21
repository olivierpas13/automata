local function stringToBitPatterns(str)
    local bitPatterns = {}
    for i = 1, #str do
        local char = str:sub(i, i)
        local ascii = string.byte(char)
        local bits = {}
        for j = 7, 0, -1 do
            bit = math.floor(ascii / 2 ^ j) % 2
            table.insert(bits, bit)
            print(bit)
        end
        table.insert(bitPatterns, bits)
    end
    for i = 1, #bitPatterns do
        print(table.concat(bitPatterns[i], ""))
    end
    return bitPatterns

end

Maze.static.pattern = stringToBitPatterns("hola mundo")
-- Maze.static.pattern = {{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0}, {0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
--                        {0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
--                        {1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1}, {0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
--                        {0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
--                        {0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0}, {0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
--                        {1, 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 1}, {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
--                        {0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0}, {0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
--                        {0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0}}