### Prerequisites

* `rbenv` 
* `nvm`
* `yarn v1`

### Setup

```bash
$ nvm use 
```

### Development

#### Backend-only 

```bash
cd ./frontend && yarn install && yarn build && cd ../backend && bundle install && rails server
```

#### Frontend + backend

```bash
cd ./backend && bundle install && rails server -p 5000
```

```bash
# Different tab
cd ./frontend && yarn install && yarn start   
```



--- 
@TODO 
Add rubocop to husky? 

    package.json: 
    "../backend/app/**/*.{rb}": [
      "rubocop -A"
    ],
    "../backend/db/**/*.{rb}": [
      "rubocop -A"
    ]
