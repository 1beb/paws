% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/forecastservice_operations.R
\name{forecastservice_create_predictor}
\alias{forecastservice_create_predictor}
\title{Creates an Amazon Forecast predictor}
\usage{
forecastservice_create_predictor(PredictorName, AlgorithmArn,
  ForecastHorizon, PerformAutoML, PerformHPO, TrainingParameters,
  EvaluationParameters, HPOConfig, InputDataConfig, FeaturizationConfig,
  EncryptionConfig)
}
\arguments{
\item{PredictorName}{[required] A name for the predictor.}

\item{AlgorithmArn}{The Amazon Resource Name (ARN) of the algorithm to use for model
training. Required if \code{PerformAutoML} is not set to \code{true}.

\strong{Supported algorithms:}
\itemize{
\item \code{arn:aws:forecast:::algorithm/ARIMA}
\item \code{arn:aws:forecast:::algorithm/Deep_AR_Plus}

Supports hyperparameter optimization (HPO)
\item \code{arn:aws:forecast:::algorithm/ETS}
\item \code{arn:aws:forecast:::algorithm/NPTS}
\item \code{arn:aws:forecast:::algorithm/Prophet}
}}

\item{ForecastHorizon}{[required] Specifies the number of time-steps that the model is trained to predict.
The forecast horizon is also called the prediction length.

For example, if you configure a dataset for daily data collection (using
the \code{DataFrequency} parameter of the CreateDataset operation) and set
the forecast horizon to 10, the model returns predictions for 10 days.

The maximum forecast horizon is the lesser of 500 time-steps or 1/3 of
the TARGET\\_TIME\\_SERIES dataset length.}

\item{PerformAutoML}{Whether to perform AutoML. When Amazon Forecast performs AutoML, it
evaluates the algorithms it provides and chooses the best algorithm and
configuration for your training dataset.

The default value is \code{false}. In this case, you are required to specify
an algorithm.

Set \code{PerformAutoML} to \code{true} to have Amazon Forecast perform AutoML.
This is a good option if you aren\'t sure which algorithm is suitable
for your training data. In this case, \code{PerformHPO} must be false.}

\item{PerformHPO}{Whether to perform hyperparameter optimization (HPO). HPO finds optimal
hyperparameter values for your training data. The process of performing
HPO is known as running a hyperparameter tuning job.

The default value is \code{false}. In this case, Amazon Forecast uses default
hyperparameter values from the chosen algorithm.

To override the default values, set \code{PerformHPO} to \code{true} and,
optionally, supply the HyperParameterTuningJobConfig object. The tuning
job specifies a metric to optimize, which hyperparameters participate in
tuning, and the valid range for each tunable hyperparameter. In this
case, you are required to specify an algorithm and \code{PerformAutoML} must
be false.

The following algorithm supports HPO:
\itemize{
\item DeepAR+
}}

\item{TrainingParameters}{The hyperparameters to override for model training. The hyperparameters
that you can override are listed in the individual algorithms. For the
list of supported algorithms, see aws-forecast-choosing-recipes.}

\item{EvaluationParameters}{Used to override the default evaluation parameters of the specified
algorithm. Amazon Forecast evaluates a predictor by splitting a dataset
into training data and testing data. The evaluation parameters define
how to perform the split and the number of iterations.}

\item{HPOConfig}{Provides hyperparameter override values for the algorithm. If you don\'t
provide this parameter, Amazon Forecast uses default values. The
individual algorithms specify which hyperparameters support
hyperparameter optimization (HPO). For more information, see
aws-forecast-choosing-recipes.

If you included the \code{HPOConfig} object, you must set \code{PerformHPO} to
true.}

\item{InputDataConfig}{[required] Describes the dataset group that contains the data to use to train the
predictor.}

\item{FeaturizationConfig}{[required] The featurization configuration.}

\item{EncryptionConfig}{An AWS Key Management Service (KMS) key and the AWS Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the key.}
}
\description{
Creates an Amazon Forecast predictor.
}
\details{
In the request, you provide a dataset group and either specify an
algorithm or let Amazon Forecast choose the algorithm for you using
AutoML. If you specify an algorithm, you also can override
algorithm-specific hyperparameters.

Amazon Forecast uses the chosen algorithm to train a model using the
latest version of the datasets in the specified dataset group. The
result is called a predictor. You then generate a forecast using the
CreateForecast operation.

After training a model, the \code{CreatePredictor} operation also evaluates
it. To see the evaluation metrics, use the GetAccuracyMetrics operation.
Always review the evaluation metrics before deciding to use the
predictor to generate a forecast.

Optionally, you can specify a featurization configuration to fill and
aggregate the data fields in the \code{TARGET_TIME_SERIES} dataset to improve
model training. For more information, see FeaturizationConfig.

For RELATED\\_TIME\\_SERIES datasets, \code{CreatePredictor} verifies that the
\code{DataFrequency} specified when the dataset was created matches the
\code{ForecastFrequency}. TARGET\\_TIME\\_SERIES datasets don\'t have this
restriction. Amazon Forecast also verifies the delimiter and timestamp
format. For more information, see howitworks-datasets-groups.

\strong{AutoML}

If you want Amazon Forecast to evaluate each algorithm and choose the
one that minimizes the \verb{objective function}, set \code{PerformAutoML} to
\code{true}. The \verb{objective function} is defined as the mean of the weighted
p10, p50, and p90 quantile losses. For more information, see
EvaluationResult.

When AutoML is enabled, the following properties are disallowed:
\itemize{
\item \code{AlgorithmArn}
\item \code{HPOConfig}
\item \code{PerformHPO}
\item \code{TrainingParameters}
}

To get a list of all of your predictors, use the ListPredictors
operation.

Before you can use the predictor to create a forecast, the \code{Status} of
the predictor must be \code{ACTIVE}, signifying that training has completed.
To get the status, use the DescribePredictor operation.
}
\section{Request syntax}{
\preformatted{svc$create_predictor(
  PredictorName = "string",
  AlgorithmArn = "string",
  ForecastHorizon = 123,
  PerformAutoML = TRUE|FALSE,
  PerformHPO = TRUE|FALSE,
  TrainingParameters = list(
    "string"
  ),
  EvaluationParameters = list(
    NumberOfBacktestWindows = 123,
    BackTestWindowOffset = 123
  ),
  HPOConfig = list(
    ParameterRanges = list(
      CategoricalParameterRanges = list(
        list(
          Name = "string",
          Values = list(
            "string"
          )
        )
      ),
      ContinuousParameterRanges = list(
        list(
          Name = "string",
          MaxValue = 123.0,
          MinValue = 123.0,
          ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
        )
      ),
      IntegerParameterRanges = list(
        list(
          Name = "string",
          MaxValue = 123,
          MinValue = 123,
          ScalingType = "Auto"|"Linear"|"Logarithmic"|"ReverseLogarithmic"
        )
      )
    )
  ),
  InputDataConfig = list(
    DatasetGroupArn = "string",
    SupplementaryFeatures = list(
      list(
        Name = "string",
        Value = "string"
      )
    )
  ),
  FeaturizationConfig = list(
    ForecastFrequency = "string",
    ForecastDimensions = list(
      "string"
    ),
    Featurizations = list(
      list(
        AttributeName = "string",
        FeaturizationPipeline = list(
          list(
            FeaturizationMethodName = "filling",
            FeaturizationMethodParameters = list(
              "string"
            )
          )
        )
      )
    )
  ),
  EncryptionConfig = list(
    RoleArn = "string",
    KMSKeyArn = "string"
  )
)
}
}

\keyword{internal}
