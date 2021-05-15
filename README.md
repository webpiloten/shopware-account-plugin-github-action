# Shopware Account Plugin Github Action
Plugin Actions with Shopware Account.


## How to use it in a workflow
```
env:
    ACCOUNT_USER: ${{ secrets.ACCOUNT_USER }}
    ACCOUNT_PASSWORD: ${{ secrets.ACCOUNT_PASSWORD }}
    
    # Additional composer file. Useful when a plugin has an other Shopware Plugin as a requirement
    # Require the shopware core that the plugin needs e.g. 
    
    # composer-actions.json
    "require": {
        "shopware/core": "~6.4"
    },
    
    COMPOSER: "composer-actions.json"
```

```
-   name: Plugin Validate
    uses: webpiloten/shopware-account-plugin-github-action@v1
    with:
      command: validate
```

```
-   name: Plugin Update
    uses: webpiloten/shopware-account-plugin-github-action@v1
    with:
      command: update
```

```
-   name: Plugin Upload
    uses: webpiloten/shopware-account-plugin-github-action@v1
    with:
      command: upload
```
