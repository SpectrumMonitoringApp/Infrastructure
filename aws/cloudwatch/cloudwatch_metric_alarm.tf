resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv-AlarmHigh-3d48d997-a377-405c-92e9-1cce52b9f522" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:01e67764-e760-495e-b880-6d731d8f85ef:autoScalingGroupName/Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv:policyName/ECSManagedAutoScalingPolicy-d7f1e5d4-3785-4bca-b53a-7ca614362b17"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:01e67764-e760-495e-b880-6d731d8f85ef:autoScalingGroupName/Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv:policyN"
  alarm_name          = "TargetTracking-Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv-AlarmHigh-3d48d997-a377-405c-92e9-1cce52b9f522"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    CapacityProviderName = "Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-EC2CapacityProvider-LW9CzRT3EKgk"
    ClusterName          = "InfluxDbCluster"
  }

  evaluation_periods = "1"
  metric_name        = "CapacityProviderReservation"
  namespace          = "AWS/ECS/ManagedScaling"
  period             = "60"
  statistic          = "Average"
  threshold          = "100"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv-AlarmLow-bbdc8549-399a-4f13-82c4-4984897fb1e1" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:01e67764-e760-495e-b880-6d731d8f85ef:autoScalingGroupName/Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv:policyName/ECSManagedAutoScalingPolicy-d7f1e5d4-3785-4bca-b53a-7ca614362b17"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:01e67764-e760-495e-b880-6d731d8f85ef:autoScalingGroupName/Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv:policyN"
  alarm_name          = "TargetTracking-Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-ECSAutoScalingGroup-MIo1iFgL0QVv-AlarmLow-bbdc8549-399a-4f13-82c4-4984897fb1e1"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    CapacityProviderName = "Infra-ECS-Cluster-InfluxDbCluster-19f2cc03-EC2CapacityProvider-LW9CzRT3EKgk"
    ClusterName          = "InfluxDbCluster"
  }

  evaluation_periods = "15"
  metric_name        = "CapacityProviderReservation"
  namespace          = "AWS/ECS/ManagedScaling"
  period             = "60"
  statistic          = "Average"
  threshold          = "100"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD-AlarmHigh-aa5a8897-875f-444e-b315-97e30c8d35a0" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:c49bad84-9fe5-4774-9e44-6f19d9393228:autoScalingGroupName/Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD:policyName/ECSManagedAutoScalingPolicy-a454adeb-bcd8-4f49-b675-6d2a60cccab6"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:c49bad84-9fe5-4774-9e44-6f19d9393228:autoScalingGroupName/Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD:policyN"
  alarm_name          = "TargetTracking-Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD-AlarmHigh-aa5a8897-875f-444e-b315-97e30c8d35a0"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    CapacityProviderName = "Infra-ECS-Cluster-PythonScheduler-5d701c88-EC2CapacityProvider-Fd5qFPVIJAEx"
    ClusterName          = "PythonScheduler"
  }

  evaluation_periods = "1"
  metric_name        = "CapacityProviderReservation"
  namespace          = "AWS/ECS/ManagedScaling"
  period             = "60"
  statistic          = "Average"
  threshold          = "100"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD-AlarmLow-bfb4c365-b568-4668-8a95-f1f85b144c94" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:c49bad84-9fe5-4774-9e44-6f19d9393228:autoScalingGroupName/Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD:policyName/ECSManagedAutoScalingPolicy-a454adeb-bcd8-4f49-b675-6d2a60cccab6"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:c49bad84-9fe5-4774-9e44-6f19d9393228:autoScalingGroupName/Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD:policyN"
  alarm_name          = "TargetTracking-Infra-ECS-Cluster-PythonScheduler-5d701c88-ECSAutoScalingGroup-iUof2D0EHMrD-AlarmLow-bfb4c365-b568-4668-8a95-f1f85b144c94"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    CapacityProviderName = "Infra-ECS-Cluster-PythonScheduler-5d701c88-EC2CapacityProvider-Fd5qFPVIJAEx"
    ClusterName          = "PythonScheduler"
  }

  evaluation_periods = "15"
  metric_name        = "CapacityProviderReservation"
  namespace          = "AWS/ECS/ManagedScaling"
  period             = "60"
  statistic          = "Average"
  threshold          = "100"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn-AlarmHigh-0e7b4eb2-963c-49db-b92f-715b0c3fbf32" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:96373c8a-a94b-4ffc-add6-10d539d6e28e:autoScalingGroupName/Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn:policyName/ECSManagedAutoScalingPolicy-e7030bd2-f2ae-41f9-9d19-177c9a71509c"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:96373c8a-a94b-4ffc-add6-10d539d6e28e:autoScalingGroupName/Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn:polic"
  alarm_name          = "TargetTracking-Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn-AlarmHigh-0e7b4eb2-963c-49db-b92f-715b0c3fbf32"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    CapacityProviderName = "Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-EC2CapacityProvider-FfUzFBagRfaA"
    ClusterName          = "SpectrumGoBrokers"
  }

  evaluation_periods = "1"
  metric_name        = "CapacityProviderReservation"
  namespace          = "AWS/ECS/ManagedScaling"
  period             = "60"
  statistic          = "Average"
  threshold          = "100"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn-AlarmLow-4f9d5c6c-4c09-44b5-91c3-1662d40df0aa" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:96373c8a-a94b-4ffc-add6-10d539d6e28e:autoScalingGroupName/Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn:policyName/ECSManagedAutoScalingPolicy-e7030bd2-f2ae-41f9-9d19-177c9a71509c"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:96373c8a-a94b-4ffc-add6-10d539d6e28e:autoScalingGroupName/Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn:polic"
  alarm_name          = "TargetTracking-Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-ECSAutoScalingGroup-k9Lwhf4EMHAn-AlarmLow-4f9d5c6c-4c09-44b5-91c3-1662d40df0aa"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    CapacityProviderName = "Infra-ECS-Cluster-SpectrumGoBrokers-5c5a0f32-EC2CapacityProvider-FfUzFBagRfaA"
    ClusterName          = "SpectrumGoBrokers"
  }

  evaluation_periods = "15"
  metric_name        = "CapacityProviderReservation"
  namespace          = "AWS/ECS/ManagedScaling"
  period             = "60"
  statistic          = "Average"
  threshold          = "100"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q-AlarmHigh-bb110683-7394-42fe-808d-3ae1d6714ef8" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:5c7d7a17-c4a9-45d2-aa69-bc87e32b5510:autoScalingGroupName/Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q:policyName/ECSManagedAutoScalingPolicy-d0f6c704-bfb9-4f62-85da-2b507c18c6b0"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:5c7d7a17-c4a9-45d2-aa69-bc87e32b5510:autoScalingGroupName/Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q:polic"
  alarm_name          = "TargetTracking-Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q-AlarmHigh-bb110683-7394-42fe-808d-3ae1d6714ef8"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    CapacityProviderName = "Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-EC2CapacityProvider-uF1wmsvmr2Ys"
    ClusterName          = "SpectrumGoWorkers"
  }

  evaluation_periods = "1"
  metric_name        = "CapacityProviderReservation"
  namespace          = "AWS/ECS/ManagedScaling"
  period             = "60"
  statistic          = "Average"
  threshold          = "100"
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "tfer--TargetTracking-Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q-AlarmLow-200aeec4-ff6c-41c3-8750-0c3747d3e3e4" {
  actions_enabled     = "true"
  alarm_actions       = ["arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:5c7d7a17-c4a9-45d2-aa69-bc87e32b5510:autoScalingGroupName/Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q:policyName/ECSManagedAutoScalingPolicy-d0f6c704-bfb9-4f62-85da-2b507c18c6b0"]
  alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:992382393502:scalingPolicy:5c7d7a17-c4a9-45d2-aa69-bc87e32b5510:autoScalingGroupName/Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q:polic"
  alarm_name          = "TargetTracking-Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-ECSAutoScalingGroup-cZSV7wxTRj4q-AlarmLow-200aeec4-ff6c-41c3-8750-0c3747d3e3e4"
  comparison_operator = "LessThanThreshold"
  datapoints_to_alarm = "0"

  dimensions = {
    CapacityProviderName = "Infra-ECS-Cluster-SpectrumGoWorkers-1c37aa2c-EC2CapacityProvider-uF1wmsvmr2Ys"
    ClusterName          = "SpectrumGoWorkers"
  }

  evaluation_periods = "15"
  metric_name        = "CapacityProviderReservation"
  namespace          = "AWS/ECS/ManagedScaling"
  period             = "60"
  statistic          = "Average"
  threshold          = "100"
  treat_missing_data = "missing"
}
