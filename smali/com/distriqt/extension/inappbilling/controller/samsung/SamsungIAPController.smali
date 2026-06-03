.class public Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;
.super Lcom/distriqt/core/ActivityStateListener;
.source "SamsungIAPController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungIAPController"


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field protected final _handler:Landroid/os/Handler;

.field private _productIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _products:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;",
            ">;"
        }
    .end annotation
.end field

.field private _service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

.field private _setupComplete:Ljava/lang/Boolean;

.field private _subscriptionIds:Ljava/util/ArrayList;
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
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    const/4 v0, 0x0

    .line 74
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    .line 92
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 93
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_productIds:Ljava/util/ArrayList;

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_subscriptionIds:Ljava/util/ArrayList;

    .line 95
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;Ljava/util/ArrayList;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->handleProductList(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->consumePurchaseWithValidPurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    return-void
.end method

.method private consumePurchaseWithValidPurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 3

    .line 692
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object v0

    .line 693
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$6;

    invoke-direct {v2, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$6;-><init>(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->consumePurchasedItems(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnConsumePurchasedItemsListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 751
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private handleProductList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;",
            ">;)V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    .line 288
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;

    .line 290
    invoke-virtual {v0}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemId()Ljava/lang/String;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_2
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_4
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 306
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 308
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private hasProducts()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$checkAvailability$0(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;Ljava/lang/String;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "availability_complete"

    .line 164
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->canMakePayments()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "available"

    goto :goto_0

    :cond_0
    const-string v2, "not_available"

    .line 162
    :goto_0
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/events/AvailabilityEvent;->formatForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 336
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public activeProducts()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/distriqt/extension/inappbilling/controller/Product;",
            ">;"
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 318
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_products:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 322
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 323
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;

    .line 325
    invoke-static {v3, v2}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->encodeProduct(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;)Lcom/distriqt/extension/inappbilling/controller/Product;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public areSubscriptionsSupported()Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->isSupported()Z

    move-result v0

    return v0
.end method

.method public canMakePayments()Z
    .locals 1

    .line 146
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->isSupported()Z

    move-result v0

    return v0
.end method

.method public changePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkAvailability()Ljava/lang/String;
    .locals 5

    .line 153
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    const-string v1, "checkAvailability()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_handler:Landroid/os/Handler;

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/samsung/-$$Lambda$SamsungIAPController$392Cs6f8yLoHzx87YeZBpMit4Ss;

    invoke-direct {v2, p0, v0}, Lcom/distriqt/extension/inappbilling/controller/samsung/-$$Lambda$SamsungIAPController$392Cs6f8yLoHzx87YeZBpMit4Ss;-><init>(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public consumePurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 6

    .line 619
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    const-string v1, "consumePurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 624
    :cond_0
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object v0

    const-string v1, "all"

    .line 629
    new-instance v3, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$5;

    invoke-direct {v3, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$5;-><init>(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getOwnedList(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 682
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    return-void
.end method

.method public finishPurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 6

    .line 585
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 590
    :cond_0
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->isSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    .line 593
    :cond_1
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_2

    return v5

    .line 598
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_SUCCESS:Ljava/lang/String;

    .line 600
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, ""

    .line 599
    invoke-static {p1, v5, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 598
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 609
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public getPendingPurchases()Lorg/json/JSONArray;
    .locals 3

    .line 482
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    const-string v1, "getPendingPurchases()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z
    .locals 2
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

    const/4 v0, 0x0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 204
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 206
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 207
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 210
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 212
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 217
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 219
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 221
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_5
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object p1

    .line 228
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->activeProductIds()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    const-string p2, ","

    .line 230
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->activeProductIds()Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    .line 231
    new-instance p3, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$1;

    invoke-direct {p3, p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$1;-><init>(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)V

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getProductsDetails(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnGetProductsDetailsListener;)V

    const/4 p1, 0x1

    return p1

    .line 268
    :cond_6
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    const-string p3, "No products specified"

    .line 270
    invoke-static {v0, p3}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 268
    invoke-interface {p1, p2, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 277
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_2
    return v0
.end method

.method public getPurchases(Z)Z
    .locals 4

    .line 424
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    const-string v1, "getPurchases( %b )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    :try_start_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    return v3

    .line 430
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object p1

    const-string v0, "all"

    .line 431
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$3;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$3;-><init>(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getOwnedList(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 473
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v3
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

    .line 793
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPControllerSupport;->inAppUpdatesSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isProductViewSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public makePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Z
    .locals 6

    .line 519
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object v0

    .line 527
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    new-instance v3, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$4;

    invoke-direct {v3, p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$4;-><init>(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)V

    invoke-virtual {v0, v1, p1, v3}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->startPayment(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnPaymentListener;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 576
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 814
    sget-object p3, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    const-string v0, "onActivityResult( %d, %d, ...)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public restorePurchases()Z
    .locals 4

    .line 358
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    const-string v1, "restorePurchases()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object v0

    const-string v1, "all"

    .line 364
    new-instance v3, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$2;

    invoke-direct {v3, p0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController$2;-><init>(Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;)V

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getOwnedList(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/listener/OnGetOwnedListListener;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 408
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v2
.end method

.method public setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
    .locals 6

    .line 102
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->TAG:Ljava/lang/String;

    const-string v1, "setup( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/BillingService;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :try_start_0
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    .line 107
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;

    move-result-object p1

    .line 109
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->operationMode:Ljava/lang/String;

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;->OPERATION_MODE_TEST:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->setOperationMode(Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->operationMode:Ljava/lang/String;

    const-string v1, "test_failure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;->OPERATION_MODE_TEST_FAILURE:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->setOperationMode(Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;)V

    goto :goto_0

    .line 119
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;->OPERATION_MODE_PRODUCTION:Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->setOperationMode(Lcom/samsung/android/sdk/iap/lib/helper/HelperDefine$OperationMode;)V

    .line 122
    :goto_0
    invoke-virtual {p1, v5}, Lcom/samsung/android/sdk/iap/lib/helper/IapHelper;->setShowErrorDialog(Z)V

    .line 124
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_setupComplete:Ljava/lang/Boolean;

    .line 126
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_SUCCESS:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 132
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public showProductView(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
