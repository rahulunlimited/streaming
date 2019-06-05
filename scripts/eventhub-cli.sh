RESOURCEGROUP="RG-Stream"
PROJECTPREFIX="vlr-scl-"

EventHubNameSpace="$PROJECTPREFIX"ehubns
EventHub="$PROJECTPREFIX"ehub

# Create an Event Hubs namespace. Specify a name for the Event Hubs namespace.
az eventhubs namespace create --name $EventHubNameSpace --resource-group $RESOURCEGROUP -l australiaeast --sku Basic


# Create an event hub. Specify a name for the event hub. 
az eventhubs eventhub create --name $EventHub --resource-group $RESOURCEGROUP --namespace-name $EventHubNameSpace --message-retention 1

