-- do not edit this file, it is generated and will be overwritten
local package_name = "lua-resty-aws"
local package_version = "0.5.5"
local rockspec_revision = "1"
local github_account_name = "Kong"
local github_repo_name = package_name
local git_checkout = package_version == "dev" and "main" or package_version

package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
  url = "git://github.com/"..github_account_name.."/"..github_repo_name..".git",
  branch = git_checkout
}

description = {
  summary = "AWS SDK for OpenResty",
  detailed = [[
    AWS SDK generated from the same data as the AWS JavaScript SDK.
  ]],
  license = "Apache 2.0",
  homepage = "https://"..github_account_name..".github.io/"..github_repo_name.."/topics/README.md.html"
}

dependencies = {
  "penlight ~> 1",
  "lua-resty-http >= 0.16",
}

build = {
  type = "builtin",
  modules = {
    ["resty.aws.init"]                                        = "src/resty/aws/init.lua",
    ["resty.aws.utils"]                                       = "src/resty/aws/utils.lua",
    ["resty.aws.config"]                                      = "src/resty/aws/config.lua",
    ["resty.aws.request.validate"]                            = "src/resty/aws/request/validate.lua",
    ["resty.aws.request.build"]                               = "src/resty/aws/request/build.lua",
    ["resty.aws.request.sign"]                                = "src/resty/aws/request/sign.lua",
    ["resty.aws.request.execute"]                             = "src/resty/aws/request/execute.lua",
    ["resty.aws.request.http.http"]                           = "src/resty/aws/request/http/http.lua",
    ["resty.aws.request.http.socket"]                         = "src/resty/aws/request/http/socket.lua",
    ["resty.aws.request.signatures.v4"]                       = "src/resty/aws/request/signatures/v4.lua",
    ["resty.aws.request.signatures.none"]                     = "src/resty/aws/request/signatures/none.lua",
    ["resty.aws.credentials.Credentials"]                     = "src/resty/aws/credentials/Credentials.lua",
    ["resty.aws.credentials.ChainableTemporaryCredentials"]   = "src/resty/aws/credentials/ChainableTemporaryCredentials.lua",
    ["resty.aws.credentials.CredentialProviderChain"]         = "src/resty/aws/credentials/CredentialProviderChain.lua",
    ["resty.aws.credentials.EC2MetadataCredentials"]          = "src/resty/aws/credentials/EC2MetadataCredentials.lua",
    ["resty.aws.credentials.EnvironmentCredentials"]          = "src/resty/aws/credentials/EnvironmentCredentials.lua",
    ["resty.aws.credentials.RemoteCredentials"]               = "src/resty/aws/credentials/RemoteCredentials.lua",
    ["resty.aws.credentials.TokenFileWebIdentityCredentials"] = "src/resty/aws/credentials/TokenFileWebIdentityCredentials.lua",

-- AWS SDK files
-- Do not modify anything between the start and end markers, that part is generated
    ["resty.aws.raw-api.region_config_data"] = "src/resty/aws/raw-api/region_config_data.lua",
    ["resty.aws.raw-api.table_of_contents"] = "src/resty/aws/raw-api/table_of_contents.lua",
--START-MARKER--
    ["resty.aws.raw-api.AWSMigrationHub-2017-05-31"] = "src/resty/aws/raw-api/AWSMigrationHub-2017-05-31.lua",
    ["resty.aws.raw-api.accessanalyzer-2019-11-01"] = "src/resty/aws/raw-api/accessanalyzer-2019-11-01.lua",
    ["resty.aws.raw-api.acm-2015-12-08"] = "src/resty/aws/raw-api/acm-2015-12-08.lua",
    ["resty.aws.raw-api.acm-pca-2017-08-22"] = "src/resty/aws/raw-api/acm-pca-2017-08-22.lua",
    ["resty.aws.raw-api.alexaforbusiness-2017-11-09"] = "src/resty/aws/raw-api/alexaforbusiness-2017-11-09.lua",
    ["resty.aws.raw-api.amplify-2017-07-25"] = "src/resty/aws/raw-api/amplify-2017-07-25.lua",
    ["resty.aws.raw-api.apigateway-2015-07-09"] = "src/resty/aws/raw-api/apigateway-2015-07-09.lua",
    ["resty.aws.raw-api.apigatewaymanagementapi-2018-11-29"] = "src/resty/aws/raw-api/apigatewaymanagementapi-2018-11-29.lua",
    ["resty.aws.raw-api.apigatewayv2-2018-11-29"] = "src/resty/aws/raw-api/apigatewayv2-2018-11-29.lua",
    ["resty.aws.raw-api.appconfig-2019-10-09"] = "src/resty/aws/raw-api/appconfig-2019-10-09.lua",
    ["resty.aws.raw-api.appflow-2020-08-23"] = "src/resty/aws/raw-api/appflow-2020-08-23.lua",
    ["resty.aws.raw-api.application-autoscaling-2016-02-06"] = "src/resty/aws/raw-api/application-autoscaling-2016-02-06.lua",
    ["resty.aws.raw-api.application-insights-2018-11-25"] = "src/resty/aws/raw-api/application-insights-2018-11-25.lua",
    ["resty.aws.raw-api.appmesh-2018-10-01"] = "src/resty/aws/raw-api/appmesh-2018-10-01.lua",
    ["resty.aws.raw-api.appmesh-2019-01-25"] = "src/resty/aws/raw-api/appmesh-2019-01-25.lua",
    ["resty.aws.raw-api.appstream-2016-12-01"] = "src/resty/aws/raw-api/appstream-2016-12-01.lua",
    ["resty.aws.raw-api.appsync-2017-07-25"] = "src/resty/aws/raw-api/appsync-2017-07-25.lua",
    ["resty.aws.raw-api.athena-2017-05-18"] = "src/resty/aws/raw-api/athena-2017-05-18.lua",
    ["resty.aws.raw-api.autoscaling-2011-01-01"] = "src/resty/aws/raw-api/autoscaling-2011-01-01.lua",
    ["resty.aws.raw-api.autoscaling-plans-2018-01-06"] = "src/resty/aws/raw-api/autoscaling-plans-2018-01-06.lua",
    ["resty.aws.raw-api.backup-2018-11-15"] = "src/resty/aws/raw-api/backup-2018-11-15.lua",
    ["resty.aws.raw-api.batch-2016-08-10"] = "src/resty/aws/raw-api/batch-2016-08-10.lua",
    ["resty.aws.raw-api.braket-2019-09-01"] = "src/resty/aws/raw-api/braket-2019-09-01.lua",
    ["resty.aws.raw-api.budgets-2016-10-20"] = "src/resty/aws/raw-api/budgets-2016-10-20.lua",
    ["resty.aws.raw-api.ce-2017-10-25"] = "src/resty/aws/raw-api/ce-2017-10-25.lua",
    ["resty.aws.raw-api.chime-2018-05-01"] = "src/resty/aws/raw-api/chime-2018-05-01.lua",
    ["resty.aws.raw-api.cloud9-2017-09-23"] = "src/resty/aws/raw-api/cloud9-2017-09-23.lua",
    ["resty.aws.raw-api.clouddirectory-2016-05-10"] = "src/resty/aws/raw-api/clouddirectory-2016-05-10.lua",
    ["resty.aws.raw-api.clouddirectory-2017-01-11"] = "src/resty/aws/raw-api/clouddirectory-2017-01-11.lua",
    ["resty.aws.raw-api.cloudformation-2010-05-15"] = "src/resty/aws/raw-api/cloudformation-2010-05-15.lua",
    ["resty.aws.raw-api.cloudfront-2016-11-25"] = "src/resty/aws/raw-api/cloudfront-2016-11-25.lua",
    ["resty.aws.raw-api.cloudfront-2017-03-25"] = "src/resty/aws/raw-api/cloudfront-2017-03-25.lua",
    ["resty.aws.raw-api.cloudfront-2017-10-30"] = "src/resty/aws/raw-api/cloudfront-2017-10-30.lua",
    ["resty.aws.raw-api.cloudfront-2018-06-18"] = "src/resty/aws/raw-api/cloudfront-2018-06-18.lua",
    ["resty.aws.raw-api.cloudfront-2018-11-05"] = "src/resty/aws/raw-api/cloudfront-2018-11-05.lua",
    ["resty.aws.raw-api.cloudfront-2019-03-26"] = "src/resty/aws/raw-api/cloudfront-2019-03-26.lua",
    ["resty.aws.raw-api.cloudfront-2020-05-31"] = "src/resty/aws/raw-api/cloudfront-2020-05-31.lua",
    ["resty.aws.raw-api.cloudhsm-2014-05-30"] = "src/resty/aws/raw-api/cloudhsm-2014-05-30.lua",
    ["resty.aws.raw-api.cloudhsmv2-2017-04-28"] = "src/resty/aws/raw-api/cloudhsmv2-2017-04-28.lua",
    ["resty.aws.raw-api.cloudsearch-2011-02-01"] = "src/resty/aws/raw-api/cloudsearch-2011-02-01.lua",
    ["resty.aws.raw-api.cloudsearch-2013-01-01"] = "src/resty/aws/raw-api/cloudsearch-2013-01-01.lua",
    ["resty.aws.raw-api.cloudsearchdomain-2013-01-01"] = "src/resty/aws/raw-api/cloudsearchdomain-2013-01-01.lua",
    ["resty.aws.raw-api.cloudtrail-2013-11-01"] = "src/resty/aws/raw-api/cloudtrail-2013-11-01.lua",
    ["resty.aws.raw-api.codeartifact-2018-09-22"] = "src/resty/aws/raw-api/codeartifact-2018-09-22.lua",
    ["resty.aws.raw-api.codebuild-2016-10-06"] = "src/resty/aws/raw-api/codebuild-2016-10-06.lua",
    ["resty.aws.raw-api.codecommit-2015-04-13"] = "src/resty/aws/raw-api/codecommit-2015-04-13.lua",
    ["resty.aws.raw-api.codedeploy-2014-10-06"] = "src/resty/aws/raw-api/codedeploy-2014-10-06.lua",
    ["resty.aws.raw-api.codeguru-reviewer-2019-09-19"] = "src/resty/aws/raw-api/codeguru-reviewer-2019-09-19.lua",
    ["resty.aws.raw-api.codeguruprofiler-2019-07-18"] = "src/resty/aws/raw-api/codeguruprofiler-2019-07-18.lua",
    ["resty.aws.raw-api.codepipeline-2015-07-09"] = "src/resty/aws/raw-api/codepipeline-2015-07-09.lua",
    ["resty.aws.raw-api.codestar-2017-04-19"] = "src/resty/aws/raw-api/codestar-2017-04-19.lua",
    ["resty.aws.raw-api.codestar-connections-2019-12-01"] = "src/resty/aws/raw-api/codestar-connections-2019-12-01.lua",
    ["resty.aws.raw-api.codestar-notifications-2019-10-15"] = "src/resty/aws/raw-api/codestar-notifications-2019-10-15.lua",
    ["resty.aws.raw-api.cognito-identity-2014-06-30"] = "src/resty/aws/raw-api/cognito-identity-2014-06-30.lua",
    ["resty.aws.raw-api.cognito-idp-2016-04-18"] = "src/resty/aws/raw-api/cognito-idp-2016-04-18.lua",
    ["resty.aws.raw-api.cognito-sync-2014-06-30"] = "src/resty/aws/raw-api/cognito-sync-2014-06-30.lua",
    ["resty.aws.raw-api.comprehend-2017-11-27"] = "src/resty/aws/raw-api/comprehend-2017-11-27.lua",
    ["resty.aws.raw-api.comprehendmedical-2018-10-30"] = "src/resty/aws/raw-api/comprehendmedical-2018-10-30.lua",
    ["resty.aws.raw-api.compute-optimizer-2019-11-01"] = "src/resty/aws/raw-api/compute-optimizer-2019-11-01.lua",
    ["resty.aws.raw-api.config-2014-11-12"] = "src/resty/aws/raw-api/config-2014-11-12.lua",
    ["resty.aws.raw-api.connect-2017-08-08"] = "src/resty/aws/raw-api/connect-2017-08-08.lua",
    ["resty.aws.raw-api.connectparticipant-2018-09-07"] = "src/resty/aws/raw-api/connectparticipant-2018-09-07.lua",
    ["resty.aws.raw-api.cur-2017-01-06"] = "src/resty/aws/raw-api/cur-2017-01-06.lua",
    ["resty.aws.raw-api.dataexchange-2017-07-25"] = "src/resty/aws/raw-api/dataexchange-2017-07-25.lua",
    ["resty.aws.raw-api.datapipeline-2012-10-29"] = "src/resty/aws/raw-api/datapipeline-2012-10-29.lua",
    ["resty.aws.raw-api.datasync-2018-11-09"] = "src/resty/aws/raw-api/datasync-2018-11-09.lua",
    ["resty.aws.raw-api.dax-2017-04-19"] = "src/resty/aws/raw-api/dax-2017-04-19.lua",
    ["resty.aws.raw-api.detective-2018-10-26"] = "src/resty/aws/raw-api/detective-2018-10-26.lua",
    ["resty.aws.raw-api.devicefarm-2015-06-23"] = "src/resty/aws/raw-api/devicefarm-2015-06-23.lua",
    ["resty.aws.raw-api.directconnect-2012-10-25"] = "src/resty/aws/raw-api/directconnect-2012-10-25.lua",
    ["resty.aws.raw-api.discovery-2015-11-01"] = "src/resty/aws/raw-api/discovery-2015-11-01.lua",
    ["resty.aws.raw-api.dlm-2018-01-12"] = "src/resty/aws/raw-api/dlm-2018-01-12.lua",
    ["resty.aws.raw-api.dms-2016-01-01"] = "src/resty/aws/raw-api/dms-2016-01-01.lua",
    ["resty.aws.raw-api.docdb-2014-10-31"] = "src/resty/aws/raw-api/docdb-2014-10-31.lua",
    ["resty.aws.raw-api.ds-2015-04-16"] = "src/resty/aws/raw-api/ds-2015-04-16.lua",
    ["resty.aws.raw-api.dynamodb-2011-12-05"] = "src/resty/aws/raw-api/dynamodb-2011-12-05.lua",
    ["resty.aws.raw-api.dynamodb-2012-08-10"] = "src/resty/aws/raw-api/dynamodb-2012-08-10.lua",
    ["resty.aws.raw-api.ebs-2019-11-02"] = "src/resty/aws/raw-api/ebs-2019-11-02.lua",
    ["resty.aws.raw-api.ec2-2016-11-15"] = "src/resty/aws/raw-api/ec2-2016-11-15.lua",
    ["resty.aws.raw-api.ec2-instance-connect-2018-04-02"] = "src/resty/aws/raw-api/ec2-instance-connect-2018-04-02.lua",
    ["resty.aws.raw-api.ecr-2015-09-21"] = "src/resty/aws/raw-api/ecr-2015-09-21.lua",
    ["resty.aws.raw-api.ecs-2014-11-13"] = "src/resty/aws/raw-api/ecs-2014-11-13.lua",
    ["resty.aws.raw-api.eks-2017-11-01"] = "src/resty/aws/raw-api/eks-2017-11-01.lua",
    ["resty.aws.raw-api.elastic-inference-2017-07-25"] = "src/resty/aws/raw-api/elastic-inference-2017-07-25.lua",
    ["resty.aws.raw-api.elasticache-2015-02-02"] = "src/resty/aws/raw-api/elasticache-2015-02-02.lua",
    ["resty.aws.raw-api.elasticbeanstalk-2010-12-01"] = "src/resty/aws/raw-api/elasticbeanstalk-2010-12-01.lua",
    ["resty.aws.raw-api.elasticfilesystem-2015-02-01"] = "src/resty/aws/raw-api/elasticfilesystem-2015-02-01.lua",
    ["resty.aws.raw-api.elasticloadbalancing-2012-06-01"] = "src/resty/aws/raw-api/elasticloadbalancing-2012-06-01.lua",
    ["resty.aws.raw-api.elasticloadbalancingv2-2015-12-01"] = "src/resty/aws/raw-api/elasticloadbalancingv2-2015-12-01.lua",
    ["resty.aws.raw-api.elasticmapreduce-2009-03-31"] = "src/resty/aws/raw-api/elasticmapreduce-2009-03-31.lua",
    ["resty.aws.raw-api.elastictranscoder-2012-09-25"] = "src/resty/aws/raw-api/elastictranscoder-2012-09-25.lua",
    ["resty.aws.raw-api.email-2010-12-01"] = "src/resty/aws/raw-api/email-2010-12-01.lua",
    ["resty.aws.raw-api.entitlement-marketplace-2017-01-11"] = "src/resty/aws/raw-api/entitlement-marketplace-2017-01-11.lua",
    ["resty.aws.raw-api.es-2015-01-01"] = "src/resty/aws/raw-api/es-2015-01-01.lua",
    ["resty.aws.raw-api.eventbridge-2015-10-07"] = "src/resty/aws/raw-api/eventbridge-2015-10-07.lua",
    ["resty.aws.raw-api.events-2015-10-07"] = "src/resty/aws/raw-api/events-2015-10-07.lua",
    ["resty.aws.raw-api.firehose-2015-08-04"] = "src/resty/aws/raw-api/firehose-2015-08-04.lua",
    ["resty.aws.raw-api.fms-2018-01-01"] = "src/resty/aws/raw-api/fms-2018-01-01.lua",
    ["resty.aws.raw-api.forecast-2018-06-26"] = "src/resty/aws/raw-api/forecast-2018-06-26.lua",
    ["resty.aws.raw-api.forecastquery-2018-06-26"] = "src/resty/aws/raw-api/forecastquery-2018-06-26.lua",
    ["resty.aws.raw-api.frauddetector-2019-11-15"] = "src/resty/aws/raw-api/frauddetector-2019-11-15.lua",
    ["resty.aws.raw-api.fsx-2018-03-01"] = "src/resty/aws/raw-api/fsx-2018-03-01.lua",
    ["resty.aws.raw-api.gamelift-2015-10-01"] = "src/resty/aws/raw-api/gamelift-2015-10-01.lua",
    ["resty.aws.raw-api.glacier-2012-06-01"] = "src/resty/aws/raw-api/glacier-2012-06-01.lua",
    ["resty.aws.raw-api.globalaccelerator-2018-08-08"] = "src/resty/aws/raw-api/globalaccelerator-2018-08-08.lua",
    ["resty.aws.raw-api.glue-2017-03-31"] = "src/resty/aws/raw-api/glue-2017-03-31.lua",
    ["resty.aws.raw-api.greengrass-2017-06-07"] = "src/resty/aws/raw-api/greengrass-2017-06-07.lua",
    ["resty.aws.raw-api.groundstation-2019-05-23"] = "src/resty/aws/raw-api/groundstation-2019-05-23.lua",
    ["resty.aws.raw-api.guardduty-2017-11-28"] = "src/resty/aws/raw-api/guardduty-2017-11-28.lua",
    ["resty.aws.raw-api.health-2016-08-04"] = "src/resty/aws/raw-api/health-2016-08-04.lua",
    ["resty.aws.raw-api.honeycode-2020-03-01"] = "src/resty/aws/raw-api/honeycode-2020-03-01.lua",
    ["resty.aws.raw-api.iam-2010-05-08"] = "src/resty/aws/raw-api/iam-2010-05-08.lua",
    ["resty.aws.raw-api.identitystore-2020-06-15"] = "src/resty/aws/raw-api/identitystore-2020-06-15.lua",
    ["resty.aws.raw-api.imagebuilder-2019-12-02"] = "src/resty/aws/raw-api/imagebuilder-2019-12-02.lua",
    ["resty.aws.raw-api.importexport-2010-06-01"] = "src/resty/aws/raw-api/importexport-2010-06-01.lua",
    ["resty.aws.raw-api.inspector-2016-02-16"] = "src/resty/aws/raw-api/inspector-2016-02-16.lua",
    ["resty.aws.raw-api.iot-2015-05-28"] = "src/resty/aws/raw-api/iot-2015-05-28.lua",
    ["resty.aws.raw-api.iot-data-2015-05-28"] = "src/resty/aws/raw-api/iot-data-2015-05-28.lua",
    ["resty.aws.raw-api.iot-jobs-data-2017-09-29"] = "src/resty/aws/raw-api/iot-jobs-data-2017-09-29.lua",
    ["resty.aws.raw-api.iot1click-devices-2018-05-14"] = "src/resty/aws/raw-api/iot1click-devices-2018-05-14.lua",
    ["resty.aws.raw-api.iot1click-projects-2018-05-14"] = "src/resty/aws/raw-api/iot1click-projects-2018-05-14.lua",
    ["resty.aws.raw-api.iotanalytics-2017-11-27"] = "src/resty/aws/raw-api/iotanalytics-2017-11-27.lua",
    ["resty.aws.raw-api.iotevents-2018-07-27"] = "src/resty/aws/raw-api/iotevents-2018-07-27.lua",
    ["resty.aws.raw-api.iotevents-data-2018-10-23"] = "src/resty/aws/raw-api/iotevents-data-2018-10-23.lua",
    ["resty.aws.raw-api.iotsecuretunneling-2018-10-05"] = "src/resty/aws/raw-api/iotsecuretunneling-2018-10-05.lua",
    ["resty.aws.raw-api.iotsitewise-2019-12-02"] = "src/resty/aws/raw-api/iotsitewise-2019-12-02.lua",
    ["resty.aws.raw-api.iotthingsgraph-2018-09-06"] = "src/resty/aws/raw-api/iotthingsgraph-2018-09-06.lua",
    ["resty.aws.raw-api.ivs-2020-07-14"] = "src/resty/aws/raw-api/ivs-2020-07-14.lua",
    ["resty.aws.raw-api.kafka-2018-11-14"] = "src/resty/aws/raw-api/kafka-2018-11-14.lua",
    ["resty.aws.raw-api.kendra-2019-02-03"] = "src/resty/aws/raw-api/kendra-2019-02-03.lua",
    ["resty.aws.raw-api.kinesis-2013-12-02"] = "src/resty/aws/raw-api/kinesis-2013-12-02.lua",
    ["resty.aws.raw-api.kinesis-video-archived-media-2017-09-30"] = "src/resty/aws/raw-api/kinesis-video-archived-media-2017-09-30.lua",
    ["resty.aws.raw-api.kinesis-video-media-2017-09-30"] = "src/resty/aws/raw-api/kinesis-video-media-2017-09-30.lua",
    ["resty.aws.raw-api.kinesis-video-signaling-2019-12-04"] = "src/resty/aws/raw-api/kinesis-video-signaling-2019-12-04.lua",
    ["resty.aws.raw-api.kinesisanalytics-2015-08-14"] = "src/resty/aws/raw-api/kinesisanalytics-2015-08-14.lua",
    ["resty.aws.raw-api.kinesisanalyticsv2-2018-05-23"] = "src/resty/aws/raw-api/kinesisanalyticsv2-2018-05-23.lua",
    ["resty.aws.raw-api.kinesisvideo-2017-09-30"] = "src/resty/aws/raw-api/kinesisvideo-2017-09-30.lua",
    ["resty.aws.raw-api.kms-2014-11-01"] = "src/resty/aws/raw-api/kms-2014-11-01.lua",
    ["resty.aws.raw-api.lakeformation-2017-03-31"] = "src/resty/aws/raw-api/lakeformation-2017-03-31.lua",
    ["resty.aws.raw-api.lambda-2014-11-11"] = "src/resty/aws/raw-api/lambda-2014-11-11.lua",
    ["resty.aws.raw-api.lambda-2015-03-31"] = "src/resty/aws/raw-api/lambda-2015-03-31.lua",
    ["resty.aws.raw-api.lex-models-2017-04-19"] = "src/resty/aws/raw-api/lex-models-2017-04-19.lua",
    ["resty.aws.raw-api.license-manager-2018-08-01"] = "src/resty/aws/raw-api/license-manager-2018-08-01.lua",
    ["resty.aws.raw-api.lightsail-2016-11-28"] = "src/resty/aws/raw-api/lightsail-2016-11-28.lua",
    ["resty.aws.raw-api.logs-2014-03-28"] = "src/resty/aws/raw-api/logs-2014-03-28.lua",
    ["resty.aws.raw-api.machinelearning-2014-12-12"] = "src/resty/aws/raw-api/machinelearning-2014-12-12.lua",
    ["resty.aws.raw-api.macie-2017-12-19"] = "src/resty/aws/raw-api/macie-2017-12-19.lua",
    ["resty.aws.raw-api.macie2-2020-01-01"] = "src/resty/aws/raw-api/macie2-2020-01-01.lua",
    ["resty.aws.raw-api.managedblockchain-2018-09-24"] = "src/resty/aws/raw-api/managedblockchain-2018-09-24.lua",
    ["resty.aws.raw-api.marketplace-catalog-2018-09-17"] = "src/resty/aws/raw-api/marketplace-catalog-2018-09-17.lua",
    ["resty.aws.raw-api.marketplacecommerceanalytics-2015-07-01"] = "src/resty/aws/raw-api/marketplacecommerceanalytics-2015-07-01.lua",
    ["resty.aws.raw-api.mediaconnect-2018-11-14"] = "src/resty/aws/raw-api/mediaconnect-2018-11-14.lua",
    ["resty.aws.raw-api.mediaconvert-2017-08-29"] = "src/resty/aws/raw-api/mediaconvert-2017-08-29.lua",
    ["resty.aws.raw-api.medialive-2017-10-14"] = "src/resty/aws/raw-api/medialive-2017-10-14.lua",
    ["resty.aws.raw-api.mediapackage-2017-10-12"] = "src/resty/aws/raw-api/mediapackage-2017-10-12.lua",
    ["resty.aws.raw-api.mediapackage-vod-2018-11-07"] = "src/resty/aws/raw-api/mediapackage-vod-2018-11-07.lua",
    ["resty.aws.raw-api.mediastore-2017-09-01"] = "src/resty/aws/raw-api/mediastore-2017-09-01.lua",
    ["resty.aws.raw-api.mediastore-data-2017-09-01"] = "src/resty/aws/raw-api/mediastore-data-2017-09-01.lua",
    ["resty.aws.raw-api.mediatailor-2018-04-23"] = "src/resty/aws/raw-api/mediatailor-2018-04-23.lua",
    ["resty.aws.raw-api.meteringmarketplace-2016-01-14"] = "src/resty/aws/raw-api/meteringmarketplace-2016-01-14.lua",
    ["resty.aws.raw-api.migrationhub-config-2019-06-30"] = "src/resty/aws/raw-api/migrationhub-config-2019-06-30.lua",
    ["resty.aws.raw-api.mobile-2017-07-01"] = "src/resty/aws/raw-api/mobile-2017-07-01.lua",
    ["resty.aws.raw-api.mobileanalytics-2014-06-05"] = "src/resty/aws/raw-api/mobileanalytics-2014-06-05.lua",
    ["resty.aws.raw-api.monitoring-2010-08-01"] = "src/resty/aws/raw-api/monitoring-2010-08-01.lua",
    ["resty.aws.raw-api.mq-2017-11-27"] = "src/resty/aws/raw-api/mq-2017-11-27.lua",
    ["resty.aws.raw-api.mturk-requester-2017-01-17"] = "src/resty/aws/raw-api/mturk-requester-2017-01-17.lua",
    ["resty.aws.raw-api.neptune-2014-10-31"] = "src/resty/aws/raw-api/neptune-2014-10-31.lua",
    ["resty.aws.raw-api.networkmanager-2019-07-05"] = "src/resty/aws/raw-api/networkmanager-2019-07-05.lua",
    ["resty.aws.raw-api.opsworks-2013-02-18"] = "src/resty/aws/raw-api/opsworks-2013-02-18.lua",
    ["resty.aws.raw-api.opsworkscm-2016-11-01"] = "src/resty/aws/raw-api/opsworkscm-2016-11-01.lua",
    ["resty.aws.raw-api.organizations-2016-11-28"] = "src/resty/aws/raw-api/organizations-2016-11-28.lua",
    ["resty.aws.raw-api.outposts-2019-12-03"] = "src/resty/aws/raw-api/outposts-2019-12-03.lua",
    ["resty.aws.raw-api.personalize-2018-05-22"] = "src/resty/aws/raw-api/personalize-2018-05-22.lua",
    ["resty.aws.raw-api.personalize-events-2018-03-22"] = "src/resty/aws/raw-api/personalize-events-2018-03-22.lua",
    ["resty.aws.raw-api.personalize-runtime-2018-05-22"] = "src/resty/aws/raw-api/personalize-runtime-2018-05-22.lua",
    ["resty.aws.raw-api.pi-2018-02-27"] = "src/resty/aws/raw-api/pi-2018-02-27.lua",
    ["resty.aws.raw-api.pinpoint-2016-12-01"] = "src/resty/aws/raw-api/pinpoint-2016-12-01.lua",
    ["resty.aws.raw-api.pinpoint-email-2018-07-26"] = "src/resty/aws/raw-api/pinpoint-email-2018-07-26.lua",
    ["resty.aws.raw-api.polly-2016-06-10"] = "src/resty/aws/raw-api/polly-2016-06-10.lua",
    ["resty.aws.raw-api.pricing-2017-10-15"] = "src/resty/aws/raw-api/pricing-2017-10-15.lua",
    ["resty.aws.raw-api.qldb-2019-01-02"] = "src/resty/aws/raw-api/qldb-2019-01-02.lua",
    ["resty.aws.raw-api.qldb-session-2019-07-11"] = "src/resty/aws/raw-api/qldb-session-2019-07-11.lua",
    ["resty.aws.raw-api.quicksight-2018-04-01"] = "src/resty/aws/raw-api/quicksight-2018-04-01.lua",
    ["resty.aws.raw-api.ram-2018-01-04"] = "src/resty/aws/raw-api/ram-2018-01-04.lua",
    ["resty.aws.raw-api.rds-2013-01-10"] = "src/resty/aws/raw-api/rds-2013-01-10.lua",
    ["resty.aws.raw-api.rds-2013-02-12"] = "src/resty/aws/raw-api/rds-2013-02-12.lua",
    ["resty.aws.raw-api.rds-2013-09-09"] = "src/resty/aws/raw-api/rds-2013-09-09.lua",
    ["resty.aws.raw-api.rds-2014-09-01"] = "src/resty/aws/raw-api/rds-2014-09-01.lua",
    ["resty.aws.raw-api.rds-2014-10-31"] = "src/resty/aws/raw-api/rds-2014-10-31.lua",
    ["resty.aws.raw-api.rds-data-2018-08-01"] = "src/resty/aws/raw-api/rds-data-2018-08-01.lua",
    ["resty.aws.raw-api.redshift-2012-12-01"] = "src/resty/aws/raw-api/redshift-2012-12-01.lua",
    ["resty.aws.raw-api.redshift-data-2019-12-20"] = "src/resty/aws/raw-api/redshift-data-2019-12-20.lua",
    ["resty.aws.raw-api.rekognition-2016-06-27"] = "src/resty/aws/raw-api/rekognition-2016-06-27.lua",
    ["resty.aws.raw-api.resource-groups-2017-11-27"] = "src/resty/aws/raw-api/resource-groups-2017-11-27.lua",
    ["resty.aws.raw-api.resourcegroupstaggingapi-2017-01-26"] = "src/resty/aws/raw-api/resourcegroupstaggingapi-2017-01-26.lua",
    ["resty.aws.raw-api.robomaker-2018-06-29"] = "src/resty/aws/raw-api/robomaker-2018-06-29.lua",
    ["resty.aws.raw-api.route53-2013-04-01"] = "src/resty/aws/raw-api/route53-2013-04-01.lua",
    ["resty.aws.raw-api.route53domains-2014-05-15"] = "src/resty/aws/raw-api/route53domains-2014-05-15.lua",
    ["resty.aws.raw-api.route53resolver-2018-04-01"] = "src/resty/aws/raw-api/route53resolver-2018-04-01.lua",
    ["resty.aws.raw-api.runtime-lex-2016-11-28"] = "src/resty/aws/raw-api/runtime-lex-2016-11-28.lua",
    ["resty.aws.raw-api.runtime-sagemaker-2017-05-13"] = "src/resty/aws/raw-api/runtime-sagemaker-2017-05-13.lua",
    ["resty.aws.raw-api.s3-2006-03-01"] = "src/resty/aws/raw-api/s3-2006-03-01.lua",
    ["resty.aws.raw-api.s3control-2018-08-20"] = "src/resty/aws/raw-api/s3control-2018-08-20.lua",
    ["resty.aws.raw-api.sagemaker-2017-07-24"] = "src/resty/aws/raw-api/sagemaker-2017-07-24.lua",
    ["resty.aws.raw-api.sagemaker-a2i-runtime-2019-11-07"] = "src/resty/aws/raw-api/sagemaker-a2i-runtime-2019-11-07.lua",
    ["resty.aws.raw-api.savingsplans-2019-06-28"] = "src/resty/aws/raw-api/savingsplans-2019-06-28.lua",
    ["resty.aws.raw-api.schemas-2019-12-02"] = "src/resty/aws/raw-api/schemas-2019-12-02.lua",
    ["resty.aws.raw-api.sdb-2009-04-15"] = "src/resty/aws/raw-api/sdb-2009-04-15.lua",
    ["resty.aws.raw-api.secretsmanager-2017-10-17"] = "src/resty/aws/raw-api/secretsmanager-2017-10-17.lua",
    ["resty.aws.raw-api.securityhub-2018-10-26"] = "src/resty/aws/raw-api/securityhub-2018-10-26.lua",
    ["resty.aws.raw-api.serverlessrepo-2017-09-08"] = "src/resty/aws/raw-api/serverlessrepo-2017-09-08.lua",
    ["resty.aws.raw-api.service-quotas-2019-06-24"] = "src/resty/aws/raw-api/service-quotas-2019-06-24.lua",
    ["resty.aws.raw-api.servicecatalog-2015-12-10"] = "src/resty/aws/raw-api/servicecatalog-2015-12-10.lua",
    ["resty.aws.raw-api.servicediscovery-2017-03-14"] = "src/resty/aws/raw-api/servicediscovery-2017-03-14.lua",
    ["resty.aws.raw-api.sesv2-2019-09-27"] = "src/resty/aws/raw-api/sesv2-2019-09-27.lua",
    ["resty.aws.raw-api.shield-2016-06-02"] = "src/resty/aws/raw-api/shield-2016-06-02.lua",
    ["resty.aws.raw-api.signer-2017-08-25"] = "src/resty/aws/raw-api/signer-2017-08-25.lua",
    ["resty.aws.raw-api.sms-2016-10-24"] = "src/resty/aws/raw-api/sms-2016-10-24.lua",
    ["resty.aws.raw-api.sms-voice-2018-09-05"] = "src/resty/aws/raw-api/sms-voice-2018-09-05.lua",
    ["resty.aws.raw-api.snowball-2016-06-30"] = "src/resty/aws/raw-api/snowball-2016-06-30.lua",
    ["resty.aws.raw-api.sns-2010-03-31"] = "src/resty/aws/raw-api/sns-2010-03-31.lua",
    ["resty.aws.raw-api.sqs-2012-11-05"] = "src/resty/aws/raw-api/sqs-2012-11-05.lua",
    ["resty.aws.raw-api.ssm-2014-11-06"] = "src/resty/aws/raw-api/ssm-2014-11-06.lua",
    ["resty.aws.raw-api.sso-2019-06-10"] = "src/resty/aws/raw-api/sso-2019-06-10.lua",
    ["resty.aws.raw-api.sso-admin-2020-07-20"] = "src/resty/aws/raw-api/sso-admin-2020-07-20.lua",
    ["resty.aws.raw-api.sso-oidc-2019-06-10"] = "src/resty/aws/raw-api/sso-oidc-2019-06-10.lua",
    ["resty.aws.raw-api.states-2016-11-23"] = "src/resty/aws/raw-api/states-2016-11-23.lua",
    ["resty.aws.raw-api.storagegateway-2013-06-30"] = "src/resty/aws/raw-api/storagegateway-2013-06-30.lua",
    ["resty.aws.raw-api.streams-dynamodb-2012-08-10"] = "src/resty/aws/raw-api/streams-dynamodb-2012-08-10.lua",
    ["resty.aws.raw-api.sts-2011-06-15"] = "src/resty/aws/raw-api/sts-2011-06-15.lua",
    ["resty.aws.raw-api.support-2013-04-15"] = "src/resty/aws/raw-api/support-2013-04-15.lua",
    ["resty.aws.raw-api.swf-2012-01-25"] = "src/resty/aws/raw-api/swf-2012-01-25.lua",
    ["resty.aws.raw-api.synthetics-2017-10-11"] = "src/resty/aws/raw-api/synthetics-2017-10-11.lua",
    ["resty.aws.raw-api.textract-2018-06-27"] = "src/resty/aws/raw-api/textract-2018-06-27.lua",
    ["resty.aws.raw-api.transcribe-2017-10-26"] = "src/resty/aws/raw-api/transcribe-2017-10-26.lua",
    ["resty.aws.raw-api.transfer-2018-11-05"] = "src/resty/aws/raw-api/transfer-2018-11-05.lua",
    ["resty.aws.raw-api.translate-2017-07-01"] = "src/resty/aws/raw-api/translate-2017-07-01.lua",
    ["resty.aws.raw-api.waf-2015-08-24"] = "src/resty/aws/raw-api/waf-2015-08-24.lua",
    ["resty.aws.raw-api.waf-regional-2016-11-28"] = "src/resty/aws/raw-api/waf-regional-2016-11-28.lua",
    ["resty.aws.raw-api.wafv2-2019-07-29"] = "src/resty/aws/raw-api/wafv2-2019-07-29.lua",
    ["resty.aws.raw-api.workdocs-2016-05-01"] = "src/resty/aws/raw-api/workdocs-2016-05-01.lua",
    ["resty.aws.raw-api.worklink-2018-09-25"] = "src/resty/aws/raw-api/worklink-2018-09-25.lua",
    ["resty.aws.raw-api.workmail-2017-10-01"] = "src/resty/aws/raw-api/workmail-2017-10-01.lua",
    ["resty.aws.raw-api.workmailmessageflow-2019-05-01"] = "src/resty/aws/raw-api/workmailmessageflow-2019-05-01.lua",
    ["resty.aws.raw-api.workspaces-2015-04-08"] = "src/resty/aws/raw-api/workspaces-2015-04-08.lua",
    ["resty.aws.raw-api.xray-2016-04-12"] = "src/resty/aws/raw-api/xray-2016-04-12.lua",
--END-MARKER--
  }
}
