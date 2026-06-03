.class public Lcom/distriqt/extension/inappbilling/InAppBillingExtension;
.super Ljava/lang/Object;
.source "InAppBillingExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field public static context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 0

    .line 31
    new-instance p1, Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    invoke-direct {p1}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;-><init>()V

    sput-object p1, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    .line 32
    sget-object p1, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    sput-object p1, Lcom/distriqt/extension/inappbilling/InAppBilling;->context:Lcom/distriqt/core/utils/IExtensionContext;

    .line 33
    sget-object p1, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    return-object p1
.end method

.method public dispose()V
    .locals 1

    .line 39
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingContext;->dispose()V

    :cond_0
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBilling;->context:Lcom/distriqt/core/utils/IExtensionContext;

    .line 43
    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingExtension;->context:Lcom/distriqt/extension/inappbilling/InAppBillingContext;

    return-void
.end method

.method public initialize()V
    .locals 0

    return-void
.end method
