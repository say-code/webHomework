function clickStart(){
    let doc = document.getElementById("inputAnswer")
    let value = doc.getAttribute("value")
    if (!value){
        value = "★"
    }else{
        value = value + "★"
    }
    let answerDoc = document.getElementById("answers")
    let answerValue = answerDoc.getAttribute("value")
    if (!answerValue){
        answerValue = "3"
    }else{
        answerValue = answerValue + "3"

    }
    // console.log(answerValue)
    answerDoc.setAttribute("value",answerValue)
    doc.setAttribute("value",value)
}

function clickCake(){
    let doc = document.getElementById("inputAnswer")
    let value = doc.getAttribute("value")
    if (!value){
        value = "🎂"
    }else{
        value = value + "🎂"
    }
    let answerDoc = document.getElementById("answers")
    let answerValue = answerDoc.getAttribute("value")
    if (!answerValue){
        answerValue = "1"
    }else{
        answerValue = answerValue + "1"
    }

    answerDoc.setAttribute("value",answerValue)
    doc.setAttribute("value",value)
    doc.setAttribute("value",value)
}


function clickFlower(){
    let doc = document.getElementById("inputAnswer")
    let value = doc.getAttribute("value")
    if (!value){
        value = "❀"
    }else{
        value = value + "❀"
    }
    let answerDoc = document.getElementById("answers")
    let answerValue = answerDoc.getAttribute("value")
    if (!answerValue){
        answerValue = "2"
    }else{
        answerValue = answerValue + "2"
    }

    answerDoc.setAttribute("value",answerValue)
    doc.setAttribute("value",value)
    doc.setAttribute("value",value)
}