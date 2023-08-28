# ShopliftersElixirs
A boilerplate Phoenix 1.7 application for coding interview purposes in Elixir. 

## Hints

Relax. 

We see you as a potential team member and are keen to evaluate your problem-solving abilities. We're excited to see how you approach and resolve tasks.

Given that it's impossible to remember everything, we rely on search engines. Feel free to use them, along with any other tools that are a part of your daily workflow.

Mistakes are a part of our everyday life. If you happen to make one and find yourself stuck, we're more than willing to lend a helping hand.

In case you're short on time and can't implement a good solution, don't worry. We'd love to hear about your potential improvements and future steps.

If you are stuck or have a problem, don't hesitate to communicate with us. We're here to collaborate and find a solution together.

## Requirements

- Elixir 1.15 (OTP 26) - you can use `asdf` and the provided `.tools-version`
- Docker with Docker-compose to start postgres

## Setup

1. Clone the repository
2. IF you have `asdf` installed - `asdf install`. Otherwise install Elixir 1.15 with OTP 26
3. Start Postgres with PGAdmin (optional) via `docker-compose up -d`
3. Fetch dependencies `mix deps.get`
4. Compile application `mix compile`
5. Run the tests `mix test`

## Tasks
The following list are tasks you have to program and present us the result.

You can use git commits while implementing. Try to follow clean code standards, at least format the code.

You don't have to write tests but are free to do so.

1. Setup the project until you can execute `mix test` without issues.
2. Implement a product import in the mix task `lib/task/import_products.ex`. The import should read the `priv/products.json` file and import all attributes as defined in `ShopliftersElixirs.Commodities.Product`.
    1. Assume that the database is empty and every product is new.
    2. The import can run without clearing the database and the products are already there.

## Discussion points 
1. Consider a scenario where you're dealing with a significantly larger file containing one million products. What potential issues might arise, and how would you address these challenges?

2. Envision several data sources that offer similar data structures but exhibit minor differences, such as varying attribute names, missing elements, or interdependent attributes. How would you manage these inconsistencies?

3. Assume that the application needs to provide data to clients efficiently. Which API architecture would you choose and how would you scale the application to meet demand?

4. The current project lacks some tools essential for maintaining high code quality and ensuring the project remains manageable. What additions would you suggest to improve the project's infrastructure?

5. Suppose all products receive additional attributes, some of which are deeply nested, and some products share the same nested structures. How would you manage these complexities? What potential issues might arise for your clients as a result of these changes?
