# azure-paas-highavaiable-secure
This repo denmostrate how to create an App Service in multi teant mode that it is secure and high available

For that the traffic flows through these components:

Traffic Manager -> App Gateway (WAF) -> Application Service -> Vnet Integration -> Azure Firewall -> Internet
