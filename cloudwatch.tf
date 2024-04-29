resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "${terraform.workspace}-cloudwatch-main-dashboard"
  
  dashboard_body = jsonencode({
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 8,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "CPUUtilization",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "EC2|CPU Utilization"
      }
    },
    {
      "type": "metric",
      "x": 8,
      "y": 0,
      "width": 8,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "NetworkIn",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "us-east-1",
        "title": "EC2|Network In"
      }
    },
    {
      "type": "metric",
      "x": 16,
      "y": 0,
      "width": 8,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "NetworkOut",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Maximum",
        "region": "us-east-1",
        "title": "EC2|Network Out"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 6,
      "width": 6,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "NetworkPacketsOut",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "EC2|NetworkPacketsOut",
        "view": "gauge",
        "yAxis": {
         "left": {
            "min": 0, 
            "max": 100,
         }        
       }
      }
    },
    {
      "type": "metric",
      "x": 6,
      "y": 6,
      "width": 6,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "NetworkPacketsIn",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "EC2|NetworkPacketsIn",
        "view": "gauge",
        "yAxis": {
         "left": {
            "min": 0, 
            "max": 100,
         }        
       }
      }
    },
    {
      "type": "metric",
      "x": 12,
      "y": 6,
      "width": 6,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "CPUCreditBalance",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "EC2|CPUCreditBalance",
        "view": "singleValue"
      }
    },
    {
      "type": "metric",
      "x": 18,
      "y": 6,
      "width": 6,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "CPUCreditUsage",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "EC2|CPUCreditUsage",
        "view": "singleValue"
      }
    },
    #
    {
      "type": "metric",
      "x": 0,
      "y": 12,
      "width": 6,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "DiskReadOps",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Sum",
        "region": "us-east-1",
        "title": "EC2|DiskReadOps",
        "view": "singleValue"
      }
    },
    {
      "type": "metric",
      "x": 6,
      "y": 12,
      "width": 6,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "DiskWriteOps",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Sum",
        "region": "us-east-1",
        "title": "EC2|DiskWriteOps",
        "view": "singleValue"
      }
    },
    #
    {
      "type": "metric",
      "x": 12,
      "y": 12,
      "width": 6,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "DiskReadBytes",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "EC2|DiskReadBytes",
        "view": "singleValue"
      }
    },
    {
      "type": "metric",
      "x": 18,
      "y": 12,
      "width": 6,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "DiskWriteBytes",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "EC2|DiskWritBytes",
        "view": "singleValue"
      }
    },
    ##
    {
      "type": "metric",
      "x": 0,
      "y": 18,
      "width": 8,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "StatusCheckFailed",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Sum",
        "region": "us-east-1",
        "title": "EC2|StatusCheckFailed",
        "view": "singleValue"
      }
    },
    {
      "type": "metric",
      "x": 8,
      "y": 18,
      "width": 8,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "StatusCheckFailed_Instance",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Sum",
        "region": "us-east-1",
        "title": "EC2|StatusCheckFailed_Instance",
        "view": "singleValue"
      }
    },
    {
      "type": "metric",
      "x": 16,
      "y": 18,
      "width": 8,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "StatusCheckFailed_System",
            "InstanceId",
            "i-0d188fbe5ab942a50"
          ]
        ],
        "period": 300,
        "stat": "Sum",
        "region": "us-east-1",
        "title": "EC2|StatusCheckFailed_System",
        "view": "singleValue"
      }
    }
  ]
})

}


# Create SNS topic
resource "aws_sns_topic" "cloud_watch_alarm_topic" {
  count        = length(var.alarm_type)
  name         = "cloud-watch-${var.alarm_type[count.index]}-alarm-topic"
  display_name = "CW Alarm | ${var.alarm_type[count.index]} | ${terraform.workspace}"
  # tags         = local.common_tags
}

# Create SNS subscription
resource "aws_sns_topic_subscription" "cloud_watch_alarm_email_target" {
  count     = length(var.alarm_type)
  topic_arn = aws_sns_topic.cloud_watch_alarm_topic[count.index].arn
  protocol  = "email"
  endpoint  = "babiciusebastian@gmail.com" 
} 


# Create CloudWatch alarm
resource "aws_cloudwatch_metric_alarm" "cw_alarm" {
  count                     = length(var.alarm_type)
  alarm_name                = "${var.alarm_type[count.index]}-alarm"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  evaluation_periods        = "2"
  metric_name               = var.metric_name[count.index] 
  namespace                 = var.name_space[count.index]
  period                    = var.period[count.index]
  statistic                 = var.statistic[count.index]
  threshold                 = var.threshold[count.index]
  alarm_description         = "This metric monitors ${var.alarm_type[count.index]}"
  insufficient_data_actions = []
  
  actions_enabled           = "true"
  alarm_actions             = [aws_sns_topic.cloud_watch_alarm_topic[count.index].arn]
  # tags                      = local.common_tags
}