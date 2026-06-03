.class public Lcom/distriqt/extension/inappbilling/functions/purchases/FinishPurchaseFunction;
.super Ljava/lang/Object;
.source "FinishPurchaseFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    .line 36
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    const/4 v1, 0x0

    .line 37
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 38
    iget-boolean v3, v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    if-eqz v3, :cond_0

    .line 40
    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/controller/Purchase;-><init>()V

    .line 41
    aget-object v3, p2, v1

    const-string v4, "productId"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    .line 42
    aget-object v3, p2, v1

    const-string v4, "parentProductId"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->parentProductId:Ljava/lang/String;

    .line 43
    aget-object v3, p2, v1

    const-string v4, "quantity"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v3

    iput v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->quantity:I

    .line 44
    aget-object v3, p2, v1

    const-string v4, "transactionTimestamp"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v3

    double-to-long v3, v3

    iput-wide v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionTimestamp:J

    .line 46
    aget-object v3, p2, v1

    const-string v4, "transactionId"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    .line 47
    aget-object v3, p2, v1

    const-string v4, "transactionState"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    .line 48
    aget-object v3, p2, v1

    const-string v4, "transactionReceipt"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    .line 49
    aget-object v3, p2, v1

    const-string v4, "developerPayload"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->developerPayload:Ljava/lang/String;

    .line 50
    aget-object v3, p2, v1

    const-string v4, "signature"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->signature:Ljava/lang/String;

    .line 51
    aget-object v3, p2, v1

    const-string v4, "originalMessage"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalMessage:Ljava/lang/String;

    .line 52
    aget-object v3, p2, v1

    const-string v4, "error"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->error:Ljava/lang/String;

    .line 53
    aget-object v3, p2, v1

    const-string v4, "errorCode"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->errorCode:Ljava/lang/String;

    .line 55
    aget-object p2, p2, v1

    const-string v1, "cancelTimestamp"

    invoke-virtual {p2, v1}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsDouble()D

    move-result-wide v3

    double-to-long v3, v3

    iput-wide v3, v2, Lcom/distriqt/extension/inappbilling/controller/Purchase;->cancelTimestamp:J

    .line 57
    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->service()Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    move-result-object p2

    invoke-interface {p2, v2}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->finishPurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 59
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 63
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    .line 64
    check-cast p1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_FAILED:Ljava/lang/String;

    const/4 v0, 0x5

    const-string v1, "Invalid purchase details provided"

    .line 66
    invoke-static {v0, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1, p2, v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
