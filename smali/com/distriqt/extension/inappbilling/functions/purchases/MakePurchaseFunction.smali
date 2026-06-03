.class public Lcom/distriqt/extension/inappbilling/functions/purchases/MakePurchaseFunction;
.super Ljava/lang/Object;
.source "MakePurchaseFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    .line 35
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    const/4 v1, 0x0

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 37
    iget-boolean v3, v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    if-eqz v3, :cond_1

    .line 39
    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;-><init>()V

    .line 40
    aget-object v3, p2, v1

    const-string v4, "productId"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    .line 41
    aget-object v3, p2, v1

    const-string v4, "quantity"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    iput v3, v2, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->quantity:I

    .line 42
    aget-object v3, p2, v1

    const-string v4, "developerPayload"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->developerPayload:Ljava/lang/String;

    .line 43
    aget-object v3, p2, v1

    const-string v4, "applicationUsername"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    .line 44
    aget-object v3, p2, v1

    const-string v4, "profileId"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->profileId:Ljava/lang/String;

    .line 46
    aget-object p2, p2, v1

    const-string v1, "subscriptionOfferRequest"

    invoke-virtual {p2, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "offer"

    .line 49
    invoke-virtual {p2, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v1, "id"

    .line 52
    invoke-virtual {p2, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v2, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->subscriptionOfferId:Ljava/lang/String;

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->service()Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->makePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 58
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 62
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
