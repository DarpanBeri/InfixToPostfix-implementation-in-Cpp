function InfixToPostfix(inputstring)
  --[[
    Infix to Postfix
    ]]

    -- Setting Precedence
    local prec = {}
    prec["+"] = 1
    prec["-"] = 1
    prec["*"] = 2
    prec["/"] = 2

    local opStack = {} -- Operator Stack
    local outputqueue = {}
    local tokens = {} -- Split up inputstring
    for i in inputstring:gmatch("%S") do -- Splits on ' '
      table.insert(tokens, i)
    end

    for tok=1,#tokens do
      if (tokens[tok] == "*" or tokens[tok] == "/"
      or tokens[tok] == "+" or tokens[tok] == "-") then
        -- Operator found
        while #opStack > 0 and prec[opStack[#opStack]] > prec[tokens[tok]] do
          --[[ While the opStack isnt empty, if the Precedence of thing in
          opStack > than the token, pop the thing and send it to outputq ]]
          table.insert(outputqueue, table.remove(opStack))
        end
        table.insert(opStack, tokens[tok])
      else
        -- Number found
        table.insert(outputqueue, tokens[tok])
      end
    end

    while #opStack>0 do
      table.insert(outputqueue, table.remove(opStack))
    end

    outputqueue = table.concat(outputqueue, " ")

    return outputqueue --Works like a charm
end

-- Test
--[[asd = "3 * 4 + 2 * 6"
d = InfixToPostfix(asd)
print(d)]]
