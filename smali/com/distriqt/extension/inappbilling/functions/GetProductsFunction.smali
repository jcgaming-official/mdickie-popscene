.class public Lcom/distriqt/extension/inappbilling/functions/GetProductsFunction;
.super Ljava/lang/Object;
.source "GetProductsFunction.java"

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
    .locals 4

    .line 38
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .line 40
    iget-boolean v1, v0, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->v:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 42
    aget-object v1, p2, v2

    check-cast v1, Lcom/adobe/fre/FREArray;

    invoke-static {v1}, Lcom/distriqt/core/utils/FREUtils;->GetObjectAsArrayOfStrings(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 43
    aget-object v2, p2, v2

    check-cast v2, Lcom/adobe/fre/FREArray;

    invoke-static {v2}, Lcom/distriqt/core/utils/FREUtils;->GetObjectAsArrayOfStrings(Lcom/adobe/fre/FREArray;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 44
    aget-object p2, p2, v3

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsBool()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 46
    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->service()Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    move-result-object v0

    .line 47
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 48
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-interface {v0, v1, v2, p2}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z

    move-result v2

    .line 52
    :cond_0
    invoke-static {v2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 56
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
