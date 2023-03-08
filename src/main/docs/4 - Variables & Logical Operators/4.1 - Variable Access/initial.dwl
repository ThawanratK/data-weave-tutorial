%dw 2.0
output json
var second = payload.secondLevel
var third = payload.secondLevel.thirdLevel
---
{
    "descendant": payload..id,
    "multivalue": payload.*id,
    "multivalueSecondLevel": second.*id,
    "multivalueThirdLevel": third.*id,
    "allTheIds" : payload..*id
}
