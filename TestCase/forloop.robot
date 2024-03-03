*** Test Cases ***
ForLoop
    FOR    ${i}   IN RANGE      1    10
       Log to console      ${i}
    END

    FOR    ${i}    IN RANGE     1  34   3
       Log to console     ${i}
    END


    ${list}     create list     1   2    3   4   5
    FOR    ${i}    IN     ${list}
        Log to console      ${i}
    END

    ${names}    create list     Jay   Madhur    Varun     Rucha
    FOR     ${i}    IN      ${names}
        Log to console      ${i}
    END