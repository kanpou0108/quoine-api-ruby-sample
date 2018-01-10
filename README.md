# Prepare
1. Change the file name from `.env_template` to `.env`
2. Update `API_TOKEN_ID` and `API_SECRET` in `.env` file

# Install
```
$ gem i bundler
$ bundle install --path vendor/bundle
```

# Execute
## Get Orders(GET)
```
$ ruby get_orders.rb
```

ref. https://developers.quoine.com/#get-orders

## Create Order(POST)
```
$ ruby create_order.rb
```

Refer the following json file. "product_id": 5 is `BTCJPY`

`create_order.json`
```js
{
  "order": {
    "order_type": "limit",
    "product_id": 5,
    "side": "buy",
    "quantity": "0.01",
    "price": "500.0"
  }
}
```

ref. https://developers.quoine.com/#create-an-order

## Cancel Order(PUT)
```
$ ruby cancel_order.rb ORDER_ID
```

ref. https://developers.quoine.com/#cancel-an-order

## Edit Order(PUT)
```
$ ruby edit_order.rb ORDER_ID
```

Refer the following json file.
`edit_order.json`
```js
{
  "order": {
    "quantity": "0.02",
    "price": "420.0"
  }
}
```

ref. https://developers.quoine.com/#edit-a-live-order

# Reference
* https://developers.quoine.com/#authentication
* https://jwt.io/