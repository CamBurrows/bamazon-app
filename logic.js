var mysql = require('mysql')
var inquirer = require('inquirer')

var connection = mysql.createConnection ({
	host: "localhost",
	port: 3306,

	user:"root",

	password: "root",
	database: "bamazon_db"
});



connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    viewItems();
});

function viewItems(){
    connection.query(
        "SELECT * FROM products",
        function(err, res) {
              
            console.log("Current Products:")
            for (i = 0; i < res.length; i++){
                console.log("Product id: " + res[i].item_id + " | Product: " + res[i].product_name + " | Price: $" + res[i].price);
            }
            
            pickItem()
            
        }
    )
}

function pickItem(){
    inquirer.prompt([
        {
            type: "input",
            message: "What is the product id of the item you wish you purchase?",
            name: "item"
        },
        {
            type: "input",
            message: "Quantity to purchase?",
            name: "quantity"
        }
    ]).then(function(itemChoice){
        
        var item = itemChoice.item
        var amount = itemChoice.quantity
        console.log("item id: " + item)
        console.log("amount ordered: " + amount)

        connection.query(
            "SELECT stock_quantity, price FROM products WHERE ?",
            {
                item_id: item
            },
            
            function(err, res) {
                
                var price = res[0].price;
                console.log("price: " + price)
                
                var stock = res[0].stock_quantity;
                console.log("stock: " + stock);
                
                var newstock = stock - amount
                console.log("New Stock: " + newstock)
                
                if(stock >= amount){
                    updateItem(newstock, item)
                    totalCost(price, amount)
                }
                else{
                    console.log("Sorry, we don't have that many in stock!")
                    pickItem()
                }
                
            }
        )
    })
};

function updateItem(input1, input2){
    connection.query(
    "UPDATE products SET ? WHERE ?",
        [
        {
            stock_quantity: input1
        },
        {
            item_id: input2
        }    
        ], 
    
    function(err, res) {
        console.log("Products ordered!\n");
        

      }
    )
}

function totalCost(price, amount){
    var total = price * amount
    console.log("Total price: $" + total)
    connection.end()
}
