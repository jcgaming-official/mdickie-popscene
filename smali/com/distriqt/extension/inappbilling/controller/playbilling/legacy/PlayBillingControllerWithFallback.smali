.class public Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;
.super Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;
.source "PlayBillingControllerWithFallback.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PlayBillingControllerWithFallback"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1

    .line 53
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;)V

    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_subscriptionIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;ILjava/util/List;Ljava/util/List;)Z
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->handleSkuDetailsResponse(ILjava/util/List;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object p0
.end method

.method private handleSkuDetailsResponse(ILjava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 181
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/SkuDetails;

    .line 186
    invoke-virtual {v4}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_0

    .line 190
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_3
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->productInventoryFallback()Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->addSkuProducts(Ljava/util/List;)V

    return v1

    :cond_4
    return v0
.end method

.method public static synthetic lambda$getProducts$0(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    .line 109
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_productIds:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p2, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->handleSkuDetailsResponse(ILjava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->areSubscriptionsSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 114
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_subscriptionIds:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    const-string p2, "subs"

    .line 116
    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object p1

    .line 118
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 119
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object p1

    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback$1;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback$1;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)V

    .line 118
    invoke-virtual {p2, p1, v0}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_LOADED:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->activeProducts()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-interface {p1, p2, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    .line 159
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {v1, p1}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-interface {p2, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$getProducts$1(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)V
    .locals 3

    .line 101
    :try_start_0
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_productIds:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    const-string v1, "inapp"

    .line 103
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 106
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v0

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/-$$Lambda$PlayBillingControllerWithFallback$sFJFaqwP0zPrgYRRIq5YCxSm5a8;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/-$$Lambda$PlayBillingControllerWithFallback$sFJFaqwP0zPrgYRRIq5YCxSm5a8;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)V

    .line 105
    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private productInventoryFallback()Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    check-cast v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;

    return-object v0
.end method

.method private useFallbackMode()Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "fff"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected createChangePurchaseParams(Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)Lcom/android/billingclient/api/BillingFlowParams;
    .locals 3

    .line 242
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->useFallbackMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->productInventoryFallback()Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;

    move-result-object v0

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->newProductId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->getSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object v0

    if-nez v0, :cond_0

    .line 247
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->TAG:Ljava/lang/String;

    const-string v0, "createChangePurchaseParams(): Could not find matching product, have you called getProducts()?"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 252
    :cond_0
    iget v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->prorationMode:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    .line 269
    :goto_0
    :pswitch_3
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setReplaceSkusProrationMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->currentTransactionId:Ljava/lang/String;

    .line 271
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldSkuPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object v1

    .line 275
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    .line 276
    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 279
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->applicationUsername:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 281
    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 284
    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    return-object p1

    .line 287
    :cond_2
    invoke-super {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->createChangePurchaseParams(Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createPurchaseFlowParams(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Lcom/android/billingclient/api/BillingFlowParams;
    .locals 2

    .line 205
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->useFallbackMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 207
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->productInventoryFallback()Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;

    move-result-object v0

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->getSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;

    move-result-object v0

    if-nez v0, :cond_0

    .line 210
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->TAG:Ljava/lang/String;

    const-string v0, "createPurchaseFlowParams(): Could not find matching product, have you called getProducts()?"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 214
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSkuDetails(Lcom/android/billingclient/api/SkuDetails;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 217
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 219
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 222
    :cond_1
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->profileId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 224
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 227
    :cond_2
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->developerPayload:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->developerPayload:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 232
    :cond_3
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    return-object p1

    .line 235
    :cond_4
    invoke-super {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->createPurchaseFlowParams(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    return-object p1
.end method

.method public getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Boolean;",
            ")Z"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->useFallbackMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 75
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 77
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 78
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 81
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 90
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 92
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_4
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/-$$Lambda$PlayBillingControllerWithFallback$fArf9Cqb79YAHpWJTwy20Tq6mJk;

    invoke-direct {p1, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/-$$Lambda$PlayBillingControllerWithFallback$fArf9Cqb79YAHpWJTwy20Tq6mJk;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)V

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z

    move-result p1

    return p1

    .line 173
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z

    move-result p1

    return p1
.end method
