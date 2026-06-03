.class Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback$1;
.super Ljava/lang/Object;
.source "PlayBillingControllerWithFallback.java"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;

    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->access$000(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v0, p2, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->access$100(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;ILjava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 128
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->access$200(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_LOADED:Ljava/lang/String;

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;

    .line 130
    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->activeProducts()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-interface {p1, p2, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;

    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->access$300(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p2

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    .line 138
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {v1, p1}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-interface {p2, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
