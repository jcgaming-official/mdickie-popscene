.class public Lcom/distriqt/extension/inappbilling/functions/purchases/GetPendingPurchasesFunction;
.super Ljava/lang/Object;
.source "GetPendingPurchasesFunction.java"

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
    .locals 2

    .line 37
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    const-string v0, "{}"

    .line 39
    iget-boolean v1, p2, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {p2}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->service()Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    move-result-object p2

    invoke-interface {p2}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->getPendingPurchases()Lorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, ""

    .line 44
    invoke-static {p2, v0, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_0
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Ljava/lang/String;)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 51
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
