-- Serial String Fuckery
-- Lua Wrapper
-- Ize a.k.a Rygna, 2021.

-- これをメイン/親スクリプトにカットするか、そのままにしておきます。
getmetatable('').__index = function(str,i) return string.sub(str,i,i) end
--

SSF = {}
SSF.K = '4dxjYzF6.2M/EK5a1mO"H&-s7;_NTWf@8=Ig0*eZw3B \'k:9RD%h#+rPXGluUqnCAQypLSovcbtJiV'

function SSF.S(I, S)
    local T = {}
    
    for R in string.gmatch(I, '([^' .. S .. ']+)') do
        table.insert(T, R)
    end
    
    return T
end

function SSF.E(T)
    local X = ''
    
    for i = 1, #T do
        local C = T:sub(i, i)
        local D = string.find(SSF.K, C, 1, true)
        
        X = X .. D - 1
        if i < string.len(T) then X = X .. '-' end
    end
    
    return X
end

function SSF.D(T)
    local F = SSF.S(T, '-')
    local X = ''
    
    for i = 1, #F do
        local M = math.floor(F[i] + 1)
        X = X .. SSF.K[M]
    end
    
    return X
end

