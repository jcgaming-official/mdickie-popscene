.class public Lcom/distriqt/extension/inappbilling/functions/CleanupFunction;
.super Ljava/lang/Object;
.source "CleanupFunction.java"

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

    .line 33
    :try_start_0
    move-object p2, p1

    check-cast p2, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    invoke-virtual {p2}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->cleanup()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 37
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
