.class public Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;
.super Lcom/distriqt/core/ActivityStateListener;
.source "CatappultController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;
.implements Lcom/appcoins/sdk/billing/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;,
        Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;,
        Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;,
        Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CatappultController"


# instance fields
.field private _client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field protected final _handler:Landroid/os/Handler;

.field protected _productIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _productInventory:Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;

.field protected _service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

.field protected _setupComplete:Ljava/lang/Boolean;

.field protected _subscriptionIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    const/4 v0, 0x0

    .line 80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_setupComplete:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_handler:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 103
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productIds:Ljava/util/ArrayList;

    .line 104
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_subscriptionIds:Ljava/util/ArrayList;

    .line 106
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;

    invoke-direct {p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;

    return-void
.end method

.method private _consumePurchaseImpl(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 3

    .line 820
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "_consumePurchaseImpl()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$XJvfpFyJ5YS3eJ7vUAlPUU4rNCM;

    invoke-direct {v1, p0, p2}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$XJvfpFyJ5YS3eJ7vUAlPUU4rNCM;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-interface {v0, p1, v1}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->consumeAsync(Ljava/lang/String;Lcom/appcoins/sdk/billing/listeners/ConsumeResponseListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object p0
.end method

.method private getProductsImpl(Ljava/util/List;Lcom/appcoins/sdk/billing/types/SkuType;Lcom/appcoins/sdk/billing/listeners/SkuDetailsResponseListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/appcoins/sdk/billing/types/SkuType;",
            "Lcom/appcoins/sdk/billing/listeners/SkuDetailsResponseListener;",
            ")V"
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "getProductsImpl( %s, %s )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/appcoins/sdk/billing/types/SkuType;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 400
    sget-object p1, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    .line 401
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 400
    invoke-interface {p3, p1, p2}, Lcom/appcoins/sdk/billing/listeners/SkuDetailsResponseListener;->onSkuDetailsResponse(ILjava/util/List;)V

    return-void

    .line 407
    :cond_0
    new-instance v0, Lcom/appcoins/sdk/billing/SkuDetailsParams;

    invoke-direct {v0}, Lcom/appcoins/sdk/billing/SkuDetailsParams;-><init>()V

    .line 408
    invoke-virtual {p2}, Lcom/appcoins/sdk/billing/types/SkuType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/appcoins/sdk/billing/SkuDetailsParams;->setItemType(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, p1}, Lcom/appcoins/sdk/billing/SkuDetailsParams;->setMoreItemSkus(Ljava/util/List;)V

    .line 411
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    invoke-interface {p1, v0, p3}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->querySkuDetailsAsync(Lcom/appcoins/sdk/billing/SkuDetailsParams;Lcom/appcoins/sdk/billing/listeners/SkuDetailsResponseListener;)V

    return-void
.end method

.method private handleProductDetailsResponse(ILjava/util/List;Lcom/appcoins/sdk/billing/types/SkuType;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/appcoins/sdk/billing/SkuDetails;",
            ">;",
            "Lcom/appcoins/sdk/billing/types/SkuType;",
            ")Z"
        }
    .end annotation

    .line 420
    sget-object v0, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    .line 422
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object p3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    const-string v0, "Failed to retrieve products"

    .line 424
    invoke-static {p1, v0}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-interface {p2, p3, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 432
    :cond_0
    sget-object p1, Lcom/appcoins/sdk/billing/types/SkuType;->inapp:Lcom/appcoins/sdk/billing/types/SkuType;

    const/4 v0, 0x1

    if-ne p3, p1, :cond_4

    .line 434
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 437
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/appcoins/sdk/billing/SkuDetails;

    .line 439
    invoke-virtual {v5}, Lcom/appcoins/sdk/billing/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_1

    .line 443
    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v4, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :cond_4
    sget-object p1, Lcom/appcoins/sdk/billing/types/SkuType;->subs:Lcom/appcoins/sdk/billing/types/SkuType;

    if-ne p3, p1, :cond_8

    .line 449
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 452
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appcoins/sdk/billing/SkuDetails;

    .line 454
    invoke-virtual {v4}, Lcom/appcoins/sdk/billing/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    if-nez v3, :cond_5

    .line 458
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v2, v3, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 463
    :cond_8
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;

    invoke-virtual {p1, p2}, Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;->addProducts(Ljava/util/List;)V

    return v0
.end method

.method private hasProducts()Z
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;->hasProducts()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$_consumePurchaseImpl$11(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/Purchase;ILjava/lang/String;)V
    .locals 4

    .line 823
    sget-object p3, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v0, "_consumePurchaseImpl(): response: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p3, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 824
    sget-object p3, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {p3}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result p3

    if-eq p2, p3, :cond_0

    .line 826
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    .line 829
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Failed to consume purchase"

    .line 828
    invoke-static {p1, p2, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 826
    invoke-interface {p3, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 837
    :cond_0
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object p3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_SUCCESS:Ljava/lang/String;

    .line 840
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, ""

    .line 839
    invoke-static {p1, v3, v0}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 837
    invoke-interface {p2, p3, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$checkAvailability$1(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "available"

    .line 204
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultControllerSupport;->isAppcoinsAppInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string v0, "upgrade_required"

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "availability_complete"

    .line 211
    invoke-static {p2, v0}, Lcom/distriqt/extension/inappbilling/events/AvailabilityEvent;->formatForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-interface {p1, v1, p2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$consumePurchase$10(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 2

    .line 794
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$GFo6mWTaARJXcDXQkYgURSYWWfg;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$GFo6mWTaARJXcDXQkYgURSYWWfg;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-virtual {p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->queryPurchase(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;)V

    return-void
.end method

.method public static synthetic lambda$consumePurchase$9(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/Purchase;ILcom/appcoins/sdk/billing/Purchase;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 798
    invoke-virtual {p3}, Lcom/appcoins/sdk/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p3, p2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->encodePurchase(Lcom/appcoins/sdk/billing/Purchase;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_consumePurchaseImpl(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    goto :goto_0

    .line 800
    :cond_0
    iget-object p2, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1

    .line 802
    iget-object p2, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_consumePurchaseImpl(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    goto :goto_0

    .line 806
    :cond_1
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    const/16 p3, 0x8

    const-string v0, "Item not owned"

    .line 808
    invoke-static {p3, v0}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 806
    invoke-interface {p1, p2, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$getProducts$2(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;IILjava/util/List;)V
    .locals 4

    .line 374
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "getProducts(): subs: response: %d::[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    sget-object p1, Lcom/appcoins/sdk/billing/types/SkuType;->subs:Lcom/appcoins/sdk/billing/types/SkuType;

    invoke-direct {p0, p2, p3, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->handleProductDetailsResponse(ILjava/util/List;Lcom/appcoins/sdk/billing/types/SkuType;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_LOADED:Ljava/lang/String;

    .line 382
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->activeProducts()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 380
    invoke-interface {p1, p2, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getProducts$3(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;ILjava/util/List;)V
    .locals 5

    .line 363
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "getProducts(): inapp: response: %d::[%d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    sget-object v0, Lcom/appcoins/sdk/billing/types/SkuType;->inapp:Lcom/appcoins/sdk/billing/types/SkuType;

    invoke-direct {p0, p1, p2, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->handleProductDetailsResponse(ILjava/util/List;Lcom/appcoins/sdk/billing/types/SkuType;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 369
    :cond_0
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_subscriptionIds:Ljava/util/ArrayList;

    sget-object v0, Lcom/appcoins/sdk/billing/types/SkuType;->subs:Lcom/appcoins/sdk/billing/types/SkuType;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$TygfinK8IWYWqa1MELsrowfovrM;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$TygfinK8IWYWqa1MELsrowfovrM;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;I)V

    invoke-direct {p0, p2, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->getProductsImpl(Ljava/util/List;Lcom/appcoins/sdk/billing/types/SkuType;Lcom/appcoins/sdk/billing/listeners/SkuDetailsResponseListener;)V

    return-void
.end method

.method public static synthetic lambda$getProducts$4(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)V
    .locals 3

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productIds:Ljava/util/ArrayList;

    sget-object v1, Lcom/appcoins/sdk/billing/types/SkuType;->inapp:Lcom/appcoins/sdk/billing/types/SkuType;

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$BSRL3-_wVRlNCNwrJTYAS-XVux4;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$BSRL3-_wVRlNCNwrJTYAS-XVux4;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->getProductsImpl(Ljava/util/List;Lcom/appcoins/sdk/billing/types/SkuType;Lcom/appcoins/sdk/billing/listeners/SkuDetailsResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$makePurchase$7(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Landroid/app/Activity;Lcom/appcoins/sdk/billing/BillingFlowParams;)V
    .locals 4

    .line 731
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase(): launch billing flow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    invoke-interface {v0, p1, p2}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/appcoins/sdk/billing/BillingFlowParams;)I

    move-result p1

    .line 733
    sget-object p2, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {p2}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 735
    sget-object p2, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v0, "makePurchase(): launch failed: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v0, "purchase:failed"

    const-string v1, "Failed to initiate purchase"

    .line 738
    invoke-static {p1, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 736
    invoke-interface {p2, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$makePurchase$8(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Landroid/app/Activity;Lcom/appcoins/sdk/billing/BillingFlowParams;)V
    .locals 3

    .line 727
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase(): starting thread"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 728
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$U6qNj2w4bHldNCqHqWuG-qz8UXI;

    invoke-direct {v1, p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$U6qNj2w4bHldNCqHqWuG-qz8UXI;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Landroid/app/Activity;Lcom/appcoins/sdk/billing/BillingFlowParams;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 744
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic lambda$queryPurchases$5(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;)V
    .locals 8

    .line 602
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    sget-object v1, Lcom/appcoins/sdk/billing/types/SkuType;->inapp:Lcom/appcoins/sdk/billing/types/SkuType;

    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/types/SkuType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->queryPurchases(Ljava/lang/String;)Lcom/appcoins/sdk/billing/PurchasesResult;

    move-result-object v0

    .line 603
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v2, "queryPurchases(): query inapp purchases: %d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/PurchasesResult;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 604
    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/PurchasesResult;->getResponseCode()I

    move-result v1

    sget-object v2, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v2}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 606
    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/PurchasesResult;->getResponseCode()I

    move-result v0

    const-string v1, "Error retrieving inapp purchases"

    invoke-interface {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;->onFailure(ILjava/lang/String;)V

    return-void

    .line 611
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    sget-object v2, Lcom/appcoins/sdk/billing/types/SkuType;->subs:Lcom/appcoins/sdk/billing/types/SkuType;

    invoke-virtual {v2}, Lcom/appcoins/sdk/billing/types/SkuType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->queryPurchases(Ljava/lang/String;)Lcom/appcoins/sdk/billing/PurchasesResult;

    move-result-object v1

    .line 612
    sget-object v2, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v4, "queryPurchases(): query subs purchases: %d"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/PurchasesResult;->getResponseCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/PurchasesResult;->getResponseCode()I

    move-result v2

    sget-object v4, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v4}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 615
    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/PurchasesResult;->getResponseCode()I

    move-result v0

    const-string v1, "Error retrieving subscription purchases"

    invoke-interface {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;->onFailure(ILjava/lang/String;)V

    return-void

    .line 619
    :cond_1
    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/PurchasesResult;->getPurchases()Ljava/util/List;

    move-result-object v0

    .line 620
    sget-object v2, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v4, "queryPurchases(): query purchases: [%d]"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/PurchasesResult;->getPurchases()Ljava/util/List;

    move-result-object v1

    .line 623
    sget-object v2, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v4, "queryPurchases(): query subs: [%d]"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v2, v4, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 626
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 627
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 629
    sget-object v0, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    invoke-interface {p1, v0, v2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;->onSuccess(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$queryPurchases$6(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;)V
    .locals 2

    .line 599
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$wFYieMIgiz349CidzF6W0PpBllI;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$wFYieMIgiz349CidzF6W0PpBllI;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 631
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static synthetic lambda$setup$0(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->onSetupComplete()V

    return-void
.end method


# virtual methods
.method public activeProductIds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 480
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 481
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public activeProducts()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/distriqt/extension/inappbilling/controller/Product;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;->getActiveProducts()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public areSubscriptionsSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canMakePayments()Z
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->isSupported()Z

    move-result v0

    return v0
.end method

.method public changePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkAvailability()Ljava/lang/String;
    .locals 6

    .line 195
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "checkAvailability()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 199
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_handler:Landroid/os/Handler;

    new-instance v3, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$6B9UHKo-Pnl9R_PdDYODnZ4njb8;

    invoke-direct {v3, p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$6B9UHKo-Pnl9R_PdDYODnZ4njb8;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v1

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public consumePurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 5

    .line 789
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "consumePurchase( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$NuIaazsli0pwFBi-gdiXl8Xxw5A;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$NuIaazsli0pwFBi-gdiXl8Xxw5A;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;)Z

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    invoke-interface {v0}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->endConnection()V

    .line 234
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    .line 236
    :cond_0
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-void
.end method

.method protected executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;)Z
    .locals 4

    .line 246
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "executeServiceRequest()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    invoke-interface {v0}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "executeServiceRequest(): client ready"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    invoke-interface {p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;->run()V

    goto :goto_0

    .line 258
    :cond_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$2;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$2;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->startServiceConnection(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public finishPurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 6

    .line 758
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 763
    :cond_0
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    .line 770
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_SUCCESS:Ljava/lang/String;

    .line 772
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, ""

    .line 771
    invoke-static {p1, v5, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 770
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 781
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public getPendingPurchases()Lorg/json/JSONArray;
    .locals 3

    .line 579
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "getPendingPurchases()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 580
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z
    .locals 5
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

    .line 330
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "getProducts( %s, %s )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 334
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 335
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 338
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

    .line 340
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 345
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

    .line 347
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 349
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 353
    :cond_4
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OFl5yB3sj2jABlR102RekPEnAB8;

    invoke-direct {p1, p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OFl5yB3sj2jABlR102RekPEnAB8;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)V

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;)Z

    move-result p1

    return p1
.end method

.method public getPurchases(Z)Z
    .locals 4

    .line 545
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "getPurchases( %b )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 546
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$5;

    invoke-direct {p1, p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$5;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)V

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->queryPurchases(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;)Z

    move-result p1

    return p1
.end method

.method public getUserData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inAppUpdates()Lcom/distriqt/extension/inappbilling/controller/InAppUpdates;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isChangePurchaseSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInAppUpdatesSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isProductViewSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public makePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Z
    .locals 11

    .line 700
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    .line 705
    :cond_0
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_1

    return v4

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/catappult/ProductInventory;->getProductDetails(Ljava/lang/String;)Lcom/appcoins/sdk/billing/SkuDetails;

    move-result-object v0

    if-nez v0, :cond_2

    return v4

    .line 714
    :cond_2
    :try_start_0
    new-instance v1, Lcom/appcoins/sdk/billing/BillingFlowParams;

    .line 716
    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v6

    .line 717
    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/SkuDetails;->getItemType()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "orderId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->developerPayload:Ljava/lang/String;

    const-string v10, "BDS"

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/appcoins/sdk/billing/BillingFlowParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 724
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OAPkyN_D5kpmt0_33wqzB-17B4s;

    invoke-direct {v0, p0, p1, v1}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$OAPkyN_D5kpmt0_33wqzB-17B4s;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Landroid/app/Activity;Lcom/appcoins/sdk/billing/BillingFlowParams;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 749
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 940
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult( %d, %d, %s )"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 941
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 942
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    if-nez p3, :cond_0

    const-string v3, "null"

    goto :goto_0

    .line 943
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/distriqt/core/utils/DebugUtil;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 940
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    invoke-interface {v0, p1, p2, p3}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_1
    return-void
.end method

.method public onPurchasesUpdated(ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/appcoins/sdk/billing/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 872
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "onPurchasesUpdated( %d, [%d] )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 873
    sget-object v0, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 875
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v0, "purchase:failed"

    const-string v1, "Purchase failed"

    .line 877
    invoke-static {p1, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 875
    invoke-interface {p2, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "purchases:updated"

    .line 888
    invoke-static {p2, v4}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->purchasesToPurchasesArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object p2

    const-string v2, ""

    .line 887
    invoke-static {p2, p1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 885
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onSetupComplete()V
    .locals 3

    .line 180
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "setup(): success"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_SUCCESS:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public queryPurchase(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;)V
    .locals 4

    .line 643
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "queryPurchase( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->queryPurchases(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;)Z

    return-void
.end method

.method public queryPurchases(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;)Z
    .locals 3

    .line 595
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "queryPurchases()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$jEHrOSl5LKVVVF9wiou2uIEH800;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$jEHrOSl5LKVVVF9wiou2uIEH800;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;)Z

    move-result p1

    return p1
.end method

.method public restorePurchases()Z
    .locals 4

    .line 500
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "restorePurchases()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 502
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 505
    :cond_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$4;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$4;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->queryPurchases(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;)Z

    move-result v0

    return v0
.end method

.method public setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
    .locals 3

    .line 120
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->catappultPublicKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->catappultPublicKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$vBfKeHH-PGy_3hjrzLeDh64UPXU;

    invoke-direct {p1, p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$vBfKeHH-PGy_3hjrzLeDh64UPXU;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)V

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;)Z

    move-result p1

    return p1

    .line 134
    :cond_1
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 139
    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->catappultPublicKey:Ljava/lang/String;

    .line 138
    invoke-static {v0, p1, p0}, Lcom/appcoins/sdk/billing/helpers/CatapultBillingAppCoinsFactory;->BuildAppcoinsBilling(Landroid/content/Context;Ljava/lang/String;Lcom/appcoins/sdk/billing/PurchasesUpdatedListener;)Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    .line 143
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$1;

    invoke-direct {p1, p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$1;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)V

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->startServiceConnection(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 172
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 122
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    const-string v1, "Invalid Key"

    const/4 v2, 0x0

    .line 124
    invoke-static {v2, v1}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public showProductView(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected startServiceConnection(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;)V
    .locals 3

    .line 281
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "startServiceConnection()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_client:Lcom/appcoins/sdk/billing/AppcoinsBillingClient;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$3;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$3;-><init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;)V

    invoke-interface {v0, v1}, Lcom/appcoins/sdk/billing/AppcoinsBillingClient;->startConnection(Lcom/appcoins/sdk/billing/listeners/AppCoinsBillingStateListener;)V

    return-void
.end method
