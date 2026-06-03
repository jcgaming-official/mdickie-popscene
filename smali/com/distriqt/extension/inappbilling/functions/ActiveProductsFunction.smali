.class public Lcom/distriqt/extension/inappbilling/functions/ActiveProductsFunction;
.super Ljava/lang/Object;
.source "ActiveProductsFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 2

    .line 38
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    const-string v0, ""

    .line 40
    iget-boolean v1, p2, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p2}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->service()Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    move-result-object p2

    invoke-interface {p2}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->activeProducts()Ljava/util/Map;

    move-result-object p2

    .line 43
    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 49
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
