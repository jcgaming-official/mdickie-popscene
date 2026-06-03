.class public Lcom/distriqt/extension/inappbilling/functions/SetupFunction;
.super Ljava/lang/Object;
.source "SetupFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 5

    .line 33
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .line 35
    iget-boolean v1, v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/BillingService;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/BillingService;-><init>()V

    .line 38
    aget-object v3, p2, v2

    const-string v4, "type"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    .line 39
    aget-object v3, p2, v2

    const-string v4, "googlePlayPublicKey"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->googlePlayPublicKey:Ljava/lang/String;

    .line 40
    aget-object v3, p2, v2

    const-string v4, "huaweiAppGalleryPublicKey"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->huaweiAppGalleryPublicKey:Ljava/lang/String;

    .line 41
    aget-object v3, p2, v2

    const-string v4, "catappultPublicKey"

    invoke-virtual {v3, v4}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->catappultPublicKey:Ljava/lang/String;

    .line 42
    aget-object p2, p2, v2

    const-string v2, "operationMode"

    invoke-virtual {p2, v2}, Lcom/adobe/fre/FREObject;->getProperty(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p2

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->operationMode:Ljava/lang/String;

    .line 44
    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z

    move-result v2

    .line 46
    :cond_0
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 50
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
