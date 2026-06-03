.class public Lcom/distriqt/extension/inappbilling/functions/IsSupportedFunction;
.super Ljava/lang/Object;
.source "IsSupportedFunction.java"

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
    .locals 0

    .line 37
    :try_start_0
    check-cast p1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .line 39
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->isSupported()Z

    move-result p1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->isSupported()Z

    move-result p1

    .line 47
    :goto_0
    invoke-static {p1}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p1
    :try_end_0
    .catch Lcom/adobe/fre/FREWrongThreadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 51
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
