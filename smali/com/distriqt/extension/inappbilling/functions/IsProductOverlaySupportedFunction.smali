.class public Lcom/distriqt/extension/inappbilling/functions/IsProductOverlaySupportedFunction;
.super Ljava/lang/Object;
.source "IsProductOverlaySupportedFunction.java"

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
    .locals 0

    .line 34
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    const/4 p2, 0x0

    .line 36
    invoke-static {p2}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 40
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method
