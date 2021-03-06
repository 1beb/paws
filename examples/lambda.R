# Lambda examples

#-------------------------------------------------------------------------------

# Create a Lambda function package to upload.

code <- 'exports.handler = async (event, context) => { return "Hello!"; };'
path <- tempdir()
js_file <- file.path(path, "lambda.js")
writeLines(code, js_file)

zip_file <- file.path(path, "lambda.zip")
utils::zip(zip_file, js_file, flags = "-j")
zip_contents <- readBin(zip_file, "raw", n = 1e5)

#-------------------------------------------------------------------------------

# Set up an IAM role for the Lambda function.

role_name <- "MyRole"
policy_arn <- "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"

trust_policy <- list(
  Version = "2012-10-17",
  Statement = list(
    list(
      Effect = "Allow",
      Principal = list(
        Service = "lambda.amazonaws.com"
      ),
      Action = "sts:AssumeRole"
    )
  )
)

iam <- paws::iam()

role <- iam$create_role(
  RoleName = role_name,
  AssumeRolePolicyDocument = jsonlite::toJSON(trust_policy, auto_unbox = TRUE)
)

iam$attach_role_policy(
  RoleName = role_name,
  PolicyArn = policy_arn
)

#-------------------------------------------------------------------------------

lambda <- paws::lambda()

# Create the Lambda function.
lambda$create_function(
  Code = list(ZipFile = zip_contents),
  FunctionName = "MyFunction",
  Handler = "lambda.handler",
  Role = role$Role$Arn,
  Runtime = "nodejs8.10"
)

# Run the function.
resp <- lambda$invoke("MyFunction")

# Print the function's output.
rawToChar(resp$Payload)

# List available functions.
lambda$list_functions()

# Clean up.
lambda$delete_function("MyFunction")
iam$detach_role_policy(role_name, policy_arn)
iam$delete_role(role_name)
