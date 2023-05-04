# Job Board

Job Board is a platform for posting job openings and processing payments using Bitcoin or the Lightning Network.

## Description

Job Board allows employers to post job openings and job seekers to find and apply for relevant jobs. It includes a payment gateway that enables employers to pay for job postings using Bitcoin or the Lightning Network. This provides a simple, fast, and secure way to process payments and ensures that job postings are visible to a large audience.

## Getting Started

To get started with Job Board, follow these steps:

1. Clone the repository to your local machine.
2. Install the required dependencies by running the following command:

```bash
bundle install
```

3. Set up the environment variables by creating a `config/local_env.yml` file with the following fields:

```yml
# Admin
ADMIN_PASSWORD: "your_admin_password"

# Open Node
API_KEY: "open_node_api_key"
OPEN_NODE_URL: "https://api.opennode.com/v1/charges"
MY_HOST: "deploy_domain_who_is_going_to_be_requested_by_the_open_node_webhook"
```

You can obtain an API key by signing up for an account on OpenNode. See [open node documentation](https://developers.opennode.com/docs/creating-a-charge)

4. Start the server by running the following command:

```bash
rails server
```

This will start the Job Board application on http://localhost:3000.

## Running Tests

To run the tests for Job Board, run the following command:

```bash
rake test
```

## Dependencies

Job Board requires the following dependencies:

- Ruby
- Rails
- Bundle
- OpenNode API

That's it! With these steps, you can start using Job Board to post job openings and process payments using Bitcoin or the Lightning Network.