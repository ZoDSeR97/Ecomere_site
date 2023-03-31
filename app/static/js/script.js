var total_cost = 0;
var len = 0;
if (document.querySelector("#total_cost")){
    var items = document.querySelector("#total_items")
    items.innerText = len;
    var cost = document.querySelector("#total_cost")
    cost.innerText = total_cost;
    var final_cost = document.querySelector("#final_cost")
}else{
    var items = document.getElementsByName("price")
    for (item of items)
        total_cost += Number(item.innerText)
    var cost = document.querySelector("#cost")
    cost.innerText = total_cost
    var final_cost = document.querySelector("#total")
    final_cost.innerText = total_cost+5
}

function toggleName(element){
    var sibling = element.parentNode.querySelector("input[type=number]")
    var price = element.parentNode.querySelector("span[name=price]").innerText
    if (sibling.name=="quantity"){
        sibling.name = "";
        total_cost -= Number(price);
        len--;
    }
    else{
        sibling.name = "quantity";
        total_cost += Number(price);
        len++;
    }
    items.innerText = len;
    cost.innerText = total_cost;
    if(total_cost>0)
        final_cost.innerText = total_cost+5
    else
        final_cost.innerText = 0
}