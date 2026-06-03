.class public Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;
.super Lcom/distriqt/core/ActivityStateListener;
.source "AppGalleryController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;


# static fields
.field private static final RC_ERROR_RESOLUTION:I = 0xa300b

.field private static final RC_MAKEPURCHASE:I = 0xa300a

.field private static final TAG:Ljava/lang/String; = "AppGalleryController"


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _getPurchasesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/distriqt/extension/inappbilling/controller/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field protected final _handler:Landroid/os/Handler;

.field private _inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

.field private _productIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _productMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/iap/entity/ProductInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _restorePurchasesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/distriqt/extension/inappbilling/controller/Purchase;",
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

.field private final getProductsFailureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private final getPurchases_failureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

.field private final restorePurchases_failureListener:Lcom/huawei/hmf/tasks/OnFailureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_setupComplete:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    .line 511
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$4;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$4;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getProductsFailureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    .line 738
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$8;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$8;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->restorePurchases_failureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    .line 901
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$12;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$12;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getPurchases_failureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    .line 120
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 121
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    .line 122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

    .line 123
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    .line 124
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Ljava/util/List;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->addProducts(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getPurchases_process(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getPurchases_complete()V

    return-void
.end method

.method static synthetic access$1200(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/huawei/hmf/tasks/OnFailureListener;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getPurchases_failureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->consumePurchaseWithToken(Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    return-void
.end method

.method static synthetic access$200(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->processProductsLoaded()V

    return-void
.end method

.method static synthetic access$300(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Ljava/util/ArrayList;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/huawei/hmf/tasks/OnFailureListener;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getProductsFailureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Ljava/util/ArrayList;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object p0
.end method

.method static synthetic access$700(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->restorePurchases_process(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Ljava/util/ArrayList;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_restorePurchasesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$900(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)Lcom/huawei/hmf/tasks/OnFailureListener;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->restorePurchases_failureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    return-object p0
.end method

.method private addProducts(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/iap/entity/ProductInfo;",
            ">;)V"
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "addProducts( [%d] )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/iap/entity/ProductInfo;

    .line 552
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v3, "addProducts(): productId:%s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private configurationFileExists(Landroid/content/Context;)Z
    .locals 1

    .line 270
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "agconnect-services.json"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method private consumePurchaseWithToken(Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 5

    .line 1353
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "consumePurchaseWithToken( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1356
    :try_start_0
    new-instance v0, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;

    invoke-direct {v0}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;-><init>()V

    .line 1357
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;->setPurchaseToken(Ljava/lang/String;)V

    const/16 v1, 0x40

    .line 1358
    invoke-direct {p0, v1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->randomString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;->setDeveloperChallenge(Ljava/lang/String;)V

    .line 1360
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 1362
    invoke-static {v1}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/huawei/hms/iap/IapClient;->consumeOwnedPurchase(Lcom/huawei/hms/iap/entity/ConsumeOwnedPurchaseReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    .line 1363
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$18;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$18;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$17;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$17;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    .line 1378
    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1409
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private getPurchases_complete()V
    .locals 5

    .line 891
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "get:purchases:complete"

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_getPurchasesList:Ljava/util/ArrayList;

    .line 894
    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->purchasesToPurchasesArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x0

    .line 893
    invoke-static {v2, v4, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 891
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getPurchases_process(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V
    .locals 9

    if-eqz p1, :cond_2

    .line 857
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppPurchaseDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 859
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppPurchaseDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 861
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppPurchaseDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 862
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppSignature()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 864
    sget-object v4, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v5, "getPurchases_process():[%d]:inAppPurchaseData=%s"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v4, v5, v7}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 865
    sget-object v4, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v5, "getPurchases_process():[%d]:inAppPurchaseDataSignature=%s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    aput-object v3, v6, v8

    invoke-static {v4, v5, v6}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    iget-object v4, v4, Lcom/distriqt/extension/inappbilling/controller/BillingService;->huaweiAppGalleryPublicKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 869
    invoke-static {v2, v3, v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->createPurchase(Ljava/lang/String;Ljava/lang/String;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 872
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_getPurchasesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 876
    :cond_0
    sget-object v3, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v4, "getPurchases_process(): COULD NOT PROCESS DATA: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 881
    :cond_1
    sget-object v3, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v4, "getPurchases_process(): VALIDATION FAILED: %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private hasProducts()Z
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$checkAvailability$2(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Ljava/lang/String;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "availability_complete"

    .line 334
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->canMakePayments()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "available"

    goto :goto_0

    :cond_0
    const-string v2, "not_available"

    .line 332
    :goto_0
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/events/AvailabilityEvent;->formatForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 330
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setup$0(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/huawei/hms/iap/entity/IsEnvReadyResult;)V
    .locals 2

    .line 179
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v0, "setup():isEnvReady():onSuccess()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_SUCCESS:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$setup$1(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Ljava/lang/Exception;)V
    .locals 5

    .line 188
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "setup():isEnvReady():onFailure(): %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    .line 193
    instance-of v1, p1, Lcom/huawei/hms/iap/IapApiException;

    if-eqz v1, :cond_0

    .line 195
    check-cast p1, Lcom/huawei/hms/iap/IapApiException;

    .line 196
    invoke-virtual {p1}, Lcom/huawei/hms/iap/IapApiException;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object p1

    .line 198
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v4

    .line 199
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    .line 203
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0xa300b

    invoke-virtual {p1, v1, v2}, Lcom/huawei/hms/support/api/client/Status;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 211
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    .line 239
    invoke-static {v4}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->toErrorCode(I)I

    move-result v2

    .line 238
    invoke-static {v2, v0}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-interface {p1, v1, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makePurchase_processResult(IILandroid/content/Intent;)V
    .locals 6

    .line 1091
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "processMakePurchaseResult( %d, %d, %s )"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const-string p1, ""

    const/4 v4, 0x2

    aput-object p1, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1093
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 1095
    invoke-static {p1}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/app/Activity;)Lcom/huawei/hms/iap/IapClient;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/huawei/hms/iap/IapClient;->parsePurchaseResultInfoFromIntent(Landroid/content/Intent;)Lcom/huawei/hms/iap/entity/PurchaseResultInfo;

    move-result-object p1

    .line 1097
    sget-object p3, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v0, "processMakePurchaseResult(): returnCode=%d"

    new-array v1, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getReturnCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getReturnCode()I

    move-result p3

    const/4 v0, 0x6

    const/4 v1, 0x0

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    .line 1131
    :sswitch_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string p2, "purchase:failed"

    const/4 p3, 0x7

    const-string v0, "Already owned"

    .line 1133
    invoke-static {v1, p3, v0}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1131
    invoke-interface {p1, p2, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    :sswitch_1
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string p3, "purchase:failed"

    const-string v0, "Cancelled"

    .line 1105
    invoke-static {v1, p2, v0}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1103
    invoke-interface {p1, p3, p2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1147
    :sswitch_2
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getInAppPurchaseData()Ljava/lang/String;

    move-result-object p3

    .line 1148
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getInAppDataSignature()Ljava/lang/String;

    move-result-object v1

    .line 1150
    sget-object v2, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v4, "processMakePurchaseResult(): inAppPurchaseData=%s"

    new-array v5, p2, [Ljava/lang/Object;

    aput-object p3, v5, v3

    invoke-static {v2, v4, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1151
    sget-object v2, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v4, "processMakePurchaseResult(): inAppPurchaseDataSignature=%s"

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v1, p2, v3

    invoke-static {v2, v4, p2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1153
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    iget-object p2, p2, Lcom/distriqt/extension/inappbilling/controller/BillingService;->huaweiAppGalleryPublicKey:Ljava/lang/String;

    invoke-static {p3, v1, p2}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1155
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v0, "purchases:updated"

    .line 1158
    invoke-static {p3, v1, v3}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->encodePurchase(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p3

    .line 1159
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getReturnCode()I

    move-result v1

    .line 1160
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/PurchaseResultInfo;->getErrMsg()Ljava/lang/String;

    move-result-object p1

    .line 1157
    invoke-static {p3, v1, p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1155
    invoke-interface {p2, v0, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1165
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string p2, "purchase:failed"

    .line 1168
    invoke-static {p3, v1, v3}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->encodePurchase(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "Invalid signature"

    .line 1167
    invoke-static {p3, v0, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1165
    invoke-interface {p1, p2, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1178
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1117
    :sswitch_3
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string p2, "purchase:failed"

    const-string p3, "Order state failed"

    .line 1119
    invoke-static {v1, v0, p3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1117
    invoke-interface {p1, p2, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x0 -> :sswitch_2
        0xea60 -> :sswitch_1
        0xea93 -> :sswitch_0
    .end sparse-switch
.end method

.method private processProductsLoaded()V
    .locals 4

    .line 561
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 563
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 570
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 572
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_LOADED:Ljava/lang/String;

    .line 578
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->activeProducts()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private randomString(I)Ljava/lang/String;
    .locals 4

    .line 1339
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 1340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    const/16 v3, 0x60

    .line 1344
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    int-to-char v3, v3

    .line 1345
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1347
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private restorePurchases_process(Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 709
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppPurchaseDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 711
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppPurchaseDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 713
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppPurchaseDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 714
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesResult;->getInAppSignature()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 716
    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    iget-object v4, v4, Lcom/distriqt/extension/inappbilling/controller/BillingService;->huaweiAppGalleryPublicKey:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 718
    invoke-static {v2, v3, v5}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->createPurchase(Ljava/lang/String;Ljava/lang/String;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 721
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_restorePurchasesList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 725
    :cond_0
    sget-object v3, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v4, "restorePurchases_process(): COULD NOT PROCESS DATA: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 730
    :cond_1
    sget-object v3, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v4, "restorePurchases_process(): VALIDATION FAILED: %s"

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v3, v4, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setup_handleResolution(IILandroid/content/Intent;)V
    .locals 4

    .line 284
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "setup_handleResolution( %d, %d, %s )"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 285
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 286
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    if-nez p3, :cond_0

    const-string p1, "null"

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/distriqt/core/utils/DebugUtil;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v3, 0x2

    aput-object p1, v2, v3

    .line 284
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    const-string p1, "returnCode"

    .line 292
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const p2, 0xea60

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 297
    :cond_1
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object p3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    .line 300
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->toErrorCode(I)I

    move-result p1

    const-string v0, "User cancelled login"

    .line 299
    invoke-static {p1, v0}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-interface {p2, p3, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 309
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z

    return-void
.end method

.method public static verifySignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    :try_start_0
    const-string v1, "RSA"

    .line 1482
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 1483
    invoke-static {p2}, Lcom/huawei/hms/support/log/common/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    .line 1484
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p2

    const-string v1, "SHA256WithRSA"

    .line 1486
    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 1487
    invoke-virtual {v1, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const-string p2, "UTF-8"

    .line 1488
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/Signature;->update([B)V

    .line 1489
    invoke-static {p1}, Lcom/huawei/hms/support/log/common/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 1490
    invoke-virtual {v1, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1498
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0

    :catch_1
    move-exception p0

    .line 1494
    throw p0
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

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 606
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

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

    .line 586
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 587
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

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

    .line 591
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 592
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/iap/entity/ProductInfo;

    .line 594
    invoke-static {v3, v2}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->encodeProduct(Ljava/lang/String;Lcom/huawei/hms/iap/entity/ProductInfo;)Lcom/distriqt/extension/inappbilling/controller/Product;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public areSubscriptionsSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canMakePayments()Z
    .locals 1

    .line 316
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->isSupported()Z

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

    .line 323
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "checkAvailability()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_handler:Landroid/os/Handler;

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/appgallery/-$$Lambda$AppGalleryController$4Lvr5wgn-IGOk68OMA1TdBQBS7k;

    invoke-direct {v2, p0, v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/-$$Lambda$AppGalleryController$4Lvr5wgn-IGOk68OMA1TdBQBS7k;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public consumePurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 6

    .line 1226
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "consumePurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1229
    :try_start_0
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 1233
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/iap/entity/ProductInfo;

    if-nez v0, :cond_1

    .line 1236
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v0, "consumePurchase(): ERROR: Could not find product data"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 1239
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getPriceType()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1241
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v0, "consumePurchase(): ERROR: Product not consumable"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 1246
    :cond_2
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1248
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->consumePurchaseWithToken(Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    goto :goto_0

    .line 1253
    :cond_3
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1255
    new-instance v1, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;

    invoke-direct {v1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;-><init>()V

    .line 1256
    invoke-virtual {v1, v5}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;->setPriceType(I)V

    .line 1258
    invoke-static {v0}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/huawei/hms/iap/IapClient;->obtainOwnedPurchases(Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    .line 1259
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$16;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$16;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$15;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$15;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    .line 1297
    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception p1

    .line 1331
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 356
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_setupComplete:Ljava/lang/Boolean;

    .line 357
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->isSupported()Z

    .line 361
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->dispose()V

    const/4 v0, 0x0

    .line 364
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 370
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public finishPurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 6

    .line 1194
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1196
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 1199
    :cond_0
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    .line 1206
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_SUCCESS:Ljava/lang/String;

    .line 1208
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, ""

    .line 1207
    invoke-static {p1, v5, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1206
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 1217
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public getPendingPurchases()Lorg/json/JSONArray;
    .locals 3

    .line 939
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "getPendingPurchases()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z
    .locals 7
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

    .line 385
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "getProducts( %s, %s )"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 389
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 390
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 393
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

    .line 395
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
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

    .line 402
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 404
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 408
    :cond_4
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_5

    .line 410
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string p2, "getProducts(): NO PRODUCT IDS PROVIDED!"

    new-array p3, v5, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 418
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 420
    new-instance p2, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$1;

    invoke-direct {p2, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$1;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    .line 433
    new-instance p3, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;

    invoke-direct {p3, p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$2;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;)V

    .line 460
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$3;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;)V

    .line 481
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_6

    .line 483
    new-instance p2, Lcom/huawei/hms/iap/entity/ProductInfoReq;

    invoke-direct {p2}, Lcom/huawei/hms/iap/entity/ProductInfoReq;-><init>()V

    .line 484
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setProductIds(Ljava/util/List;)V

    .line 485
    invoke-virtual {p2, v5}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setPriceType(I)V

    .line 487
    invoke-static {p1}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/huawei/hms/iap/IapClient;->obtainProductInfo(Lcom/huawei/hms/iap/entity/ProductInfoReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 488
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getProductsFailureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    .line 489
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    goto :goto_2

    .line 491
    :cond_6
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_7

    .line 493
    new-instance p3, Lcom/huawei/hms/iap/entity/ProductInfoReq;

    invoke-direct {p3}, Lcom/huawei/hms/iap/entity/ProductInfoReq;-><init>()V

    .line 494
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, v0}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setProductIds(Ljava/util/List;)V

    .line 495
    invoke-virtual {p3, v2}, Lcom/huawei/hms/iap/entity/ProductInfoReq;->setPriceType(I)V

    .line 497
    invoke-static {p1}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/huawei/hms/iap/IapClient;->obtainProductInfo(Lcom/huawei/hms/iap/entity/ProductInfoReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 498
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getProductsFailureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    .line 499
    invoke-virtual {p1, p2}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_2
    return v6

    :catch_0
    move-exception p1

    .line 505
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public getPurchases(Z)Z
    .locals 5

    .line 783
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "getPurchases( %b )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 787
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_getPurchasesList:Ljava/util/ArrayList;

    .line 789
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 792
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$9;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$9;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    .line 803
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$10;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;)V

    .line 819
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;

    invoke-direct {v0, p0, p1, v1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$11;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;)V

    .line 836
    new-instance v1, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;

    invoke-direct {v1}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;-><init>()V

    .line 837
    invoke-virtual {v1, v4}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;->setPriceType(I)V

    .line 839
    invoke-static {p1}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/huawei/hms/iap/IapClient;->obtainOwnedPurchases(Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 840
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->getPurchases_failureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 846
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v4
.end method

.method public getUserData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inAppUpdates()Lcom/distriqt/extension/inappbilling/controller/InAppUpdates;
    .locals 2

    .line 1540
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    if-nez v0, :cond_0

    .line 1542
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    .line 1544
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    return-object v0
.end method

.method public isChangePurchaseSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInAppUpdatesSupported()Z
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryControllerSupport;->inAppUpdatesSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1529
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->inAppUpdates()Lcom/distriqt/extension/inappbilling/controller/InAppUpdates;

    move-result-object v0

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/InAppUpdates;->isSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isProductViewSupported()Z
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 955
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "appmarket://details?id="

    .line 956
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 957
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isSupported()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public makePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Z
    .locals 6

    .line 989
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 991
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_productMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/iap/entity/ProductInfo;

    if-nez v0, :cond_1

    .line 997
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v0, "makePurchase(): Could not find matching product, have you called getProducts()?"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    .line 1003
    :cond_1
    :try_start_0
    new-instance v1, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;

    invoke-direct {v1}, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;-><init>()V

    .line 1004
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getPriceType()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;->setPriceType(I)V

    .line 1005
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;->setProductId(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->developerPayload:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->developerPayload:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1008
    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->developerPayload:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;->setDeveloperPayload(Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_2
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1012
    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/huawei/hms/iap/entity/PurchaseIntentReq;->setDeveloperPayload(Ljava/lang/String;)V

    .line 1015
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 1017
    invoke-static {p1}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/app/Activity;)Lcom/huawei/hms/iap/IapClient;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/huawei/hms/iap/IapClient;->createPurchaseIntent(Lcom/huawei/hms/iap/entity/PurchaseIntentReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    .line 1018
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$14;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$14;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$13;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$13;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    .line 1050
    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 1083
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1435
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult( %d, %d, ...)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1446
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->setup_handleResolution(IILandroid/content/Intent;)V

    goto :goto_0

    .line 1440
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->makePurchase_processResult(IILandroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xa300a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public restorePurchases()Z
    .locals 4

    .line 627
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->TAG:Ljava/lang/String;

    const-string v1, "restorePurchases()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_restorePurchasesList:Ljava/util/ArrayList;

    .line 632
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 635
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$5;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$5;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    .line 656
    new-instance v3, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$6;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;)V

    .line 672
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$7;

    invoke-direct {v1, p0, v0, v3}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController$7;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;Landroid/content/Context;Lcom/huawei/hmf/tasks/OnSuccessListener;)V

    .line 689
    new-instance v3, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;

    invoke-direct {v3}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;-><init>()V

    .line 690
    invoke-virtual {v3, v2}, Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;->setPriceType(I)V

    .line 692
    invoke-static {v0}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/huawei/hms/iap/IapClient;->obtainOwnedPurchases(Lcom/huawei/hms/iap/entity/OwnedPurchasesReq;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    .line 693
    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->restorePurchases_failureListener:Lcom/huawei/hmf/tasks/OnFailureListener;

    invoke-virtual {v0, v1}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 699
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v2
.end method

.method public setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
    .locals 4

    const/4 v0, 0x0

    .line 140
    :try_start_0
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    .line 142
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 148
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->configurationFileExists(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    new-instance v1, Lcom/huawei/agconnect/AGConnectOptionsBuilder;

    invoke-direct {v1}, Lcom/huawei/agconnect/AGConnectOptionsBuilder;-><init>()V

    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "agconnect-services.json"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Lcom/huawei/agconnect/AGConnectOptionsBuilder;->setInputStream(Ljava/io/InputStream;)Lcom/huawei/agconnect/AGConnectOptionsBuilder;

    move-result-object v1

    .line 154
    invoke-static {p1, v1}, Lcom/huawei/agconnect/AGConnectInstance;->initialize(Landroid/content/Context;Lcom/huawei/agconnect/AGConnectOptionsBuilder;)V

    .line 174
    invoke-static {p1}, Lcom/huawei/hms/iap/Iap;->getIapClient(Landroid/content/Context;)Lcom/huawei/hms/iap/IapClient;

    move-result-object p1

    invoke-interface {p1}, Lcom/huawei/hms/iap/IapClient;->isEnvReady()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    .line 175
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/-$$Lambda$AppGalleryController$TOthfCcZuUvceOcGuGvb8-XyX2Y;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/-$$Lambda$AppGalleryController$TOthfCcZuUvceOcGuGvb8-XyX2Y;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    .line 176
    invoke-virtual {p1, v1}, Lcom/huawei/hmf/tasks/Task;->addOnSuccessListener(Lcom/huawei/hmf/tasks/OnSuccessListener;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/appgallery/-$$Lambda$AppGalleryController$wyMcWzMdYTSajrilHh0H4I8tUhU;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/-$$Lambda$AppGalleryController$wyMcWzMdYTSajrilHh0H4I8tUhU;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;)V

    .line 185
    invoke-virtual {p1, v1}, Lcom/huawei/hmf/tasks/Task;->addOnFailureListener(Lcom/huawei/hmf/tasks/OnFailureListener;)Lcom/huawei/hmf/tasks/Task;

    const/4 p1, 0x1

    return p1

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    const-string v2, "Missing agconnect-services.json configuration file"

    .line 251
    invoke-static {v0, v2}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-interface {p1, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method public showProductView(Ljava/lang/String;)Z
    .locals 3

    .line 964
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->isProductViewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "productId"

    .line 967
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "service"

    const-string v1, "huawei_app_gallery"

    .line 968
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 972
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v0, "productview:loaded"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
