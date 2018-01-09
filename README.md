# Prepare
1. Change the file name from `.env_template` to `.env`
2. Update `API_TOKEN_ID` and `API_SECRET` in `.env` file

# Install
```
bundle install --path vendor/bundle
```

# Execute
## Get Orders(GET)
```
$ ruby get_orders.rb
```

## Create Order(POST)
```
$ ruby create_order.rb
```

## Cancel Order(PUT)
```
$ ruby cancel_order.rb ORDER_ID
```

## Edit Order(PUT)
```
$ ruby edit_order.rb ORDER_ID
```
