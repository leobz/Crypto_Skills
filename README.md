# Job Board

## Table of Contents

1. [Description](#description)
2. [Gems](#gems)
3. [Setup](#setup)
    - [1. Install Docker](#1-install-docker)
    - [2. Set up Environment Variables](#2-set-up-environment-variables)
    - [3. Optional: Dockerhub Login](#3-optional-login-to-dockerhub-to-push-images)
4. [Basic Commands](#basic-commands)
    1. [Run app in development](#run-app-in-development)
    1. [Stop app](#stop-app)
    1. [Run app in production](#run-app-in-production)
    1. [Clean Containers](#clean-containers)
    1. [List Tasks](#list-tasks)
    1. [Run Tests](#run-tests)


## Description

Job Board is a platform for posting job openings and processing payments using Bitcoin or the Lightning Network.


## Gems

| Gem                                                                      | Description                                | Usage                                   |
|--------------------------------------------------------------------------|--------------------------------------------|-----------------------------------------|
| [Active Record](https://github.com/rails/rails/tree/main/activerecord)   | Object Relational Mapping                  | Persistence                             |
| [Active Storage](https://github.com/rails/rails/tree/main/activestorage) | Upload and reference files in cloud services and attach those files to Active Records. | Persistence                             |
| [Image Proccesing](https://github.com/janko/image_processing)            | High-level image processing wrapper        | Persistence                             |
| [Ruby Postgres](https://github.com/ged/ruby-pg)                          | A PostgreSQL client library for Ruby       | Persistence                             |
| [Sidekiq](https://github.com/sidekiq/sidekiq)                            | Efficient background processing for Ruby   | Scheduled jobs                          |
| [Sidekiq Cron](https://github.com/sidekiq-cron/sidekiq-cron)             | Scheduler / Cron for Sidekiq jobs          | Scheduled jobs                          |
| [Devise](https://github.com/heartcombo/devise)                           | Flexible authentication solution for Rails with Warden. | Authentication             |
| [Bcrypt](https://github.com/bcrypt-ruby/bcrypt-ruby)                     | Binding for the OpenBSD bcrypt() password hashing function | Authentication          |
| [Rspec](https://github.com/rspec/rspec-rails)                            | Testing Library                            | [Testing](spec/jobs/test_job_controller_spec.rb) |
| [Action Mailer](https://github.com/rails/rails/tree/main/actionmailer)   | Framework for designing email service layers: design, testing and deliver emails | Email                                |
| [Bootstrap Email](https://github.com/bootstrap-email/bootstrap-email)    | Bootstrap stylesheet, compiler, and inliner for responsive and consistent emails with the Bootstrap | Email                                |
| [Rack CORS](https://github.com/cyu/rack-cors)                            | Rack Middleware for handling Cross-Origin Resource Sharing (CORS) | Allow external requests from https://bitcoinnews.com |



## Setup

### 1. Install Docker

Follow the instructions [here](https://docs.docker.com/engine/install/) to install Docker.

### 2. Set up Environment Variables

Create a `config/local_env.yml` file with the following fields:

```yml
# Admin
ADMIN_PASSWORD: "your_admin_password"

# Open Node
API_KEY: "open_node_api_key"
OPEN_NODE_URL: "https://api.opennode.com/v1/charges"
MY_HOST: "deploy_domain_who_is_going_to_be_requested_by_the_open_node_webhook"

# Mail config
MAIL_USERNAME: "your_email"
MAIL_PASSWORD: "your_email_password"


#********************  Prod only  ************************#
POSTGRES_USER: "some_user"
POSTGRES_PASSWORD: "some_password"
```

You can obtain an API key by signing up for an account on OpenNode. See [open node documentation](https://developers.opennode.com/docs/creating-a-charge)

### 3. Optional: Dockerhub Login

```bash
docker login -u <user> -p <password>
```

## Basic Commands

### Run app in development

```bash
# Install ruby dependencies
bundle install

# Run the Ruby app locally + DB in container
make dev
```

Now you can visit [`localhost:3000`](http://localhost:3000)

### Stop app

```bash
make stop # Terminates the execution of all containers
```

### Run App in Production

1. Create master

```bash
EDITOR="vim" rails credentials:edit
```


1.5 Download latest tagged image from Docker registry:

```bash
# TODO make pull-images
make build
```

2. Stop old containers:

```bash
make stop
```

3. Run docker project:

```bash
make prod
```

Now you can visit [`localhost:3000`](http://localhost:3000)

### Clean Containers

After using the containers, you can destroy them with their volumes using:

```bash
make clean
```

### List Tasks

You can see available tasks (build, dev, prod, etc.) and what they do with:

```bash
make
```

### Run Tests

To run the tests for Job Board, run the following command:

```bash
rake test
```
