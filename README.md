# Job Board

Job Board is a platform for posting job openings and processing payments using Bitcoin or the Lightning Network.

## Description

Job Board allows employers to post job openings and job seekers to find and apply for relevant jobs. It includes a payment gateway that enables employers to pay for job postings using Bitcoin or the Lightning Network. This provides a simple, fast, and secure way to process payments and ensures that job postings are visible to a large audience.

## Setup

1. Install [docker](https://docs.docker.com/engine/install/)
2. Set up the environment variables by creating a `config/local_env.yml` file with the following fields:

```yml
# Admin
ADMIN_PASSWORD: "your_admin_password"

# Open Node
API_KEY: "open_node_api_key"
OPEN_NODE_URL: "https://api.opennode.com/v1/charges"
MY_HOST: "deploy_domain_who_is_going_to_be_requested_by_the_open_node_webhook"
```

You can obtain an API key by signing up for an account on OpenNode. See [open node documentation](https://developers.opennode.com/docs/creating-a-charge)

3. (Optional) Login to dockerhub to push images

```
docker login -u <user> -p <password>
```

## Basic Commands: Development

Run app:

```
# Install ruby dependencies
bundle install

# Run the Ruby app locally + DB in container
make dev
```

Now you can visit [`localhost:3000`](http://localhost:3000)


Stop app:

```
make stop # Terminates the execution of all containers
```

## Basic Commands: Production

1. Download latest tagged image from Docker registry

```
# TODO make pull-images
make build
```

2. Stop old containers

```
make stop
```

3. Run docker project

```
make prod
```

Now you can visit [`localhost:3000`](http://localhost:3000)

## Clean containers

* After using the containers, you can destroy them with their volumes using `make clean`

## Available tasks

You can see available tasks (build, dev, prod, etc) and what they do with `make`

## Running Tests

To run the tests for Job Board, run the following command:

```bash
rspec spec
```

## Used gems

Rails, [Active Record](https://github.com/rails/rails/blob/main/activerecord/README.rdoc)

Specific gems:
- [Rspec](https://rspec.info/): Useful gem to make Test Driven Development. See a [test case example](https://github.com/leobz/job_board/spec/jobs/test_job_controller_spec.rb).
- [ImageProcessing](https://github.com/janko/image_processing#imageprocessing): Process images with either ImageMagick/GraphicsMagick or libvips libraries. 
- [ActiveStorage](https://github.com/rails/rails/tree/main/activestorage): Upload and reference files in cloud services like Amazon S3, Google Cloud Storage, etc.  and attach those files to Active Records. See [config file here](https://github.com/leobz/job_board/config/storage.yml) and [call example here](https://github.com/leobz/job_board/blob/ef932a0c63fbdacd848311f636dafa5e6f8e0348/app/helpers/jobs_helper.rb#L41)