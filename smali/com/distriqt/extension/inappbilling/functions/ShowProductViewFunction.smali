.class public Lcom/distriqt/extension/inappbilling/functions/ShowProductViewFunction;
.super Ljava/lang/Object;
.source "ShowProductViewFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    .line 34
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .line 36
    iget-boolean v1, v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 38
    aget-object p2, p2, v2

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsString()Ljava/lang/String;

    move-result-object p2

    .line 39
    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->service()Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->showProductView(Ljava/lang/String;)Z

    move-result v2

    .line 41
    :cond_0
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 45
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
