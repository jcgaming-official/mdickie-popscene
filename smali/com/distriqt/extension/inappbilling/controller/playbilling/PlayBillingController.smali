.class public Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;
.super Lcom/distriqt/core/ActivityStateListener;
.source "PlayBillingController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;,
        Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;,
        Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;,
        Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;,
        Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;,
        Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlayBillingController"


# instance fields
.field protected _billingClient:Lcom/android/billingclient/api/BillingClient;

.field protected _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field protected final _handler:Landroid/os/Handler;

.field private _inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

.field protected _pendingPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field protected _productIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

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

.field protected _verifiedPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
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

    .line 112
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    const/4 v0, 0x0

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_setupComplete:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    .line 101
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_verifiedPurchases:Ljava/util/List;

    .line 102
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_pendingPurchases:Ljava/util/List;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_handler:Landroid/os/Handler;

    .line 114
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productIds:Ljava/util/ArrayList;

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    .line 118
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    invoke-direct {p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;)V
    .locals 2

    .line 123
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    const/4 v0, 0x0

    .line 91
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_setupComplete:Ljava/lang/Boolean;

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    .line 101
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_verifiedPurchases:Ljava/util/List;

    .line 102
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_pendingPurchases:Ljava/util/List;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_handler:Landroid/os/Handler;

    .line 125
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productIds:Ljava/util/ArrayList;

    .line 127
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    .line 129
    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    return-void
.end method

.method private _consumePurchaseImpl(Lcom/distriqt/extension/inappbilling/controller/Purchase;Lcom/android/billingclient/api/Purchase;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 1213
    :try_start_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v3, "consumePurchase(): using purchase data ( [%s] )"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, ","

    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1214
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 1215
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 1218
    :cond_0
    iget-object v3, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1220
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v3, "consumePurchase(): using purchaseToken = %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    .line 1222
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 1223
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    goto :goto_0

    .line 1227
    :cond_1
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v3, "consumePurchase(): purchase cannot be found and doesn\'t contain purchase token"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1228
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$cO2TsQVhZ9vM3_3md5BSIHBmsVE;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$cO2TsQVhZ9vM3_3md5BSIHBmsVE;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V

    invoke-direct {p0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    :goto_0
    if-eqz v0, :cond_2

    .line 1239
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$P1dj2gO6SBLrZH9PJ1DMLqFRXvQ;

    invoke-direct {v2, p0, p2, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$P1dj2gO6SBLrZH9PJ1DMLqFRXvQ;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1294
    :goto_1
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private _finishPurchaseImpl(Lcom/android/billingclient/api/Purchase;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 5

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1105
    :try_start_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): purchase( [%s] )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, ","

    .line 1106
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p2

    .line 1105
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): purchase already acknowledged - dispatching FINISH_SUCCESS"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    new-instance p2, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$ebzKJxfbowywkel6kerSKHl4IwE;

    invoke-direct {p2, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$ebzKJxfbowywkel6kerSKHl4IwE;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;)V

    invoke-direct {p0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    goto :goto_1

    .line 1122
    :cond_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): starting purchase acknowledge"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    .line 1125
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object p2

    .line 1127
    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object p2

    .line 1129
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$ThYPlbrdb2rn1Vjji-vZN-FQMyA;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$ThYPlbrdb2rn1Vjji-vZN-FQMyA;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v0, p2, v1}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 1168
    :cond_1
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v0, "finishPurchase(): purchase is null ?"

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, p2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$LIKt6bcuPDwGbrciT4s3dt5Y_bM;

    invoke-direct {p1, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$LIKt6bcuPDwGbrciT4s3dt5Y_bM;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V

    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1180
    :goto_0
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    return-void
.end method

.method static synthetic access$200(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Ljava/util/List;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->processPendingPurchases(Ljava/util/List;)V

    return-void
.end method

.method private addPendingPurchase(Lcom/android/billingclient/api/Purchase;)V
    .locals 4

    .line 704
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_pendingPurchases:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_pendingPurchases:Ljava/util/List;

    :cond_0
    const/4 v0, 0x0

    .line 707
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_pendingPurchases:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    .line 709
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_pendingPurchases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V
    .locals 1

    .line 726
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    invoke-direct {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->queryPurchasesLocal(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)Z

    return-void
.end method

.method private getProductsImpl(Ljava/util/List;Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;",
            ")V"
        }
    .end annotation

    .line 474
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-interface {p3, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;->onGetProducts(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void

    .line 483
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 486
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    .line 487
    invoke-virtual {v2, p2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    .line 488
    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    .line 486
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 493
    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 494
    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p1

    .line 496
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 497
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p1

    .line 498
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$N35DdxeVISPb3WkZWjr5gfXohmE;

    invoke-direct {v0, p3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$N35DdxeVISPb3WkZWjr5gfXohmE;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;)V

    .line 496
    invoke-virtual {p2, p1, v0}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method private getPurchaseAsync(Lcom/android/billingclient/api/ProductDetails;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V
    .locals 5

    .line 1526
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getPurchaseAsync( %s ) [product]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    if-nez p1, :cond_0

    const-string v3, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 1529
    invoke-interface {p2, p1, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void

    .line 1535
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 1536
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    .line 1537
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    .line 1538
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$jVlU3rq0UVnNEBGtn9a1EaTWhZc;

    invoke-direct {v2, p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$jVlU3rq0UVnNEBGtn9a1EaTWhZc;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/ProductDetails;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V

    .line 1535
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1586
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private getPurchaseAsync(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V
    .locals 4

    .line 1430
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getPurchaseAsync( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1432
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    invoke-virtual {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->hasProductDetails(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    invoke-virtual {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->getProductDetails(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPurchaseAsync(Lcom/android/billingclient/api/ProductDetails;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V

    return-void

    :cond_0
    const-string v0, "inapp"

    .line 1438
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3WTVv1i75lpSNsS9Db0w3HtzkF8;

    invoke-direct {v1, p0, p2, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3WTVv1i75lpSNsS9Db0w3HtzkF8;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPurchaseAsync(Ljava/lang/String;Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V

    return-void
.end method

.method private getPurchaseAsync(Ljava/lang/String;Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V
    .locals 2

    .line 1486
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 1487
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p2

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$MU1Vpt0TPX_3ydehJ-CzxQ9TscU;

    invoke-direct {v1, p1, p3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$MU1Vpt0TPX_3ydehJ-CzxQ9TscU;-><init>(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V

    .line 1486
    invoke-virtual {v0, p2, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1519
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private handleProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 508
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 510
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object p3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 514
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 512
    invoke-static {v0, p1}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-interface {p2, p3, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string p1, "inapp"

    .line 520
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 522
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productIds:Ljava/util/ArrayList;

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

    .line 525
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

    check-cast v5, Lcom/android/billingclient/api/ProductDetails;

    .line 527
    invoke-virtual {v5}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    if-nez v4, :cond_1

    .line 531
    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v4, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p1, "subs"

    .line 535
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 537
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_subscriptionIds:Ljava/util/ArrayList;

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

    .line 540
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/billingclient/api/ProductDetails;

    .line 542
    invoke-virtual {v3}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_5

    .line 550
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v2, v3, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 555
    :cond_8
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    invoke-virtual {p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->addProducts(Ljava/util/List;)V

    return v0
.end method

.method private hasProducts()Z
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->hasProducts()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$_consumePurchaseImpl$20(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V
    .locals 4

    .line 1228
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    const-string v2, "Item not owned"

    const/16 v3, 0x8

    .line 1230
    invoke-static {v3, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1228
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_consumePurchaseImpl$21(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lorg/json/JSONObject;Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1268
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_SUCCESS:Ljava/lang/String;

    .line 1272
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    .line 1273
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    .line 1270
    invoke-static {p1, v2, p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1268
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_consumePurchaseImpl$22(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lorg/json/JSONObject;Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1279
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    .line 1283
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    .line 1284
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    .line 1281
    invoke-static {p1, v2, p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1279
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_consumePurchaseImpl$23(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;Lcom/distriqt/extension/inappbilling/controller/Purchase;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 6

    .line 1258
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 1259
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v2, "consumePurchase(): onConsumeResponse( %d, %s )"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p4, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1263
    invoke-static {p1, v5}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->encodePurchase(Lcom/android/billingclient/api/Purchase;Z)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    .line 1264
    :cond_0
    invoke-virtual {p2}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    if-nez v0, :cond_1

    .line 1268
    new-instance p2, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3wEDpU1NlMzdicjkwoVYBCVOznE;

    invoke-direct {p2, p0, p1, p3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3wEDpU1NlMzdicjkwoVYBCVOznE;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lorg/json/JSONObject;Lcom/android/billingclient/api/BillingResult;)V

    invoke-direct {p0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    goto :goto_1

    .line 1279
    :cond_1
    new-instance p2, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3BeIf_gjBMb5gVhcWO1eKi90CBs;

    invoke-direct {p2, p0, p1, p3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$3BeIf_gjBMb5gVhcWO1eKi90CBs;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lorg/json/JSONObject;Lcom/android/billingclient/api/BillingResult;)V

    invoke-direct {p0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$_finishPurchaseImpl$13(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;)V
    .locals 4

    .line 1111
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_SUCCESS:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1114
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->encodePurchase(Lcom/android/billingclient/api/Purchase;Z)Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, "Purchase already finished"

    .line 1113
    invoke-static {p1, v2, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1111
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_finishPurchaseImpl$14(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1141
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_SUCCESS:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1144
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->encodePurchase(Lcom/android/billingclient/api/Purchase;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 1145
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    .line 1146
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    .line 1143
    invoke-static {p1, v2, p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1141
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_finishPurchaseImpl$15(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 1152
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_FAILED:Ljava/lang/String;

    const/4 v2, 0x0

    .line 1155
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->encodePurchase(Lcom/android/billingclient/api/Purchase;Z)Lorg/json/JSONObject;

    move-result-object p1

    .line 1156
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    .line 1157
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    .line 1154
    invoke-static {p1, v2, p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1152
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$_finishPurchaseImpl$16(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V
    .locals 5

    .line 1133
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): acknowledge complete: [%d]:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1134
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1135
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1133
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1138
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$Qo2EbhIsr2HMSuA5QdXvjDU95Vs;

    invoke-direct {v0, p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$Qo2EbhIsr2HMSuA5QdXvjDU95Vs;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V

    invoke-direct {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    goto :goto_0

    .line 1152
    :cond_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$AtuaDuvBeMrIS5K-TrYgCghas3Y;

    invoke-direct {v0, p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$AtuaDuvBeMrIS5K-TrYgCghas3Y;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/Purchase;Lcom/android/billingclient/api/BillingResult;)V

    invoke-direct {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$_finishPurchaseImpl$17(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V
    .locals 4

    .line 1169
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_FAILED:Ljava/lang/String;

    const-string v2, "Item not owned"

    const/16 v3, 0x8

    .line 1171
    invoke-static {v3, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$changePurchase$24(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)V
    .locals 6

    .line 1389
    :try_start_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "changePurchase(): Starting purchase upgrade / downgrade flow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1391
    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->createChangePurchaseParams(Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1395
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 1396
    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1395
    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 1400
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "changePurchase(): launchBillingFlow(): %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "purchase:failed"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find product details for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->newProductId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or there was no subscription offer specified"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1406
    invoke-static {v2, v3, p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1404
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1415
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$checkAvailability$0(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Ljava/lang/String;)V
    .locals 6

    .line 157
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "availability_complete"

    const-string v2, "unknown"

    .line 161
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/events/AvailabilityEvent;->formatForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 168
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "fff"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v2, "checkAvailability::isFeatureSupported: [%d]: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "not_available"

    .line 173
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "available"

    goto :goto_0

    :cond_2
    const-string v1, "upgrade_required"

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v2, "availability_complete"

    .line 186
    invoke-static {p1, v1}, Lcom/distriqt/extension/inappbilling/events/AvailabilityEvent;->formatForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-interface {v0, v2, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 191
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static synthetic lambda$consumePurchase$18(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    .line 1199
    invoke-direct {p0, p1, p3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_consumePurchaseImpl(Lcom/distriqt/extension/inappbilling/controller/Purchase;Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method public static synthetic lambda$consumePurchase$19(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 5

    .line 1196
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "consumePurchase(): Find purchase from product id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1197
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$-YGmOIRtaXbAmfQAaulEZyoc8N4;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$-YGmOIRtaXbAmfQAaulEZyoc8N4;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-direct {p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPurchaseAsync(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V

    return-void
.end method

.method public static synthetic lambda$finishPurchase$11(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .locals 4

    .line 1091
    sget-object p2, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v0, "finishPurchase(): getPurchaseAsync(): complete: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    if-nez p3, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1092
    invoke-direct {p0, p3, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_finishPurchaseImpl(Lcom/android/billingclient/api/Purchase;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    return-void
.end method

.method public static synthetic lambda$finishPurchase$12(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 5

    .line 1086
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): Find purchase from product id: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1087
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$-Pp8AGeKfUjTwNVO000WhtKR3F0;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$-Pp8AGeKfUjTwNVO000WhtKR3F0;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-direct {p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPurchaseAsync(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V

    return-void
.end method

.method public static synthetic lambda$getProducts$1(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0

    const-string p2, "subs"

    .line 445
    invoke-direct {p0, p1, p3, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->handleProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 450
    :cond_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_LOADED:Ljava/lang/String;

    .line 452
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->activeProducts()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p3

    .line 450
    invoke-interface {p1, p2, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$getProducts$2(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    const-string v0, "inapp"

    .line 435
    invoke-direct {p0, p1, p2, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->handleProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 440
    :cond_0
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    const-string v0, "subs"

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$cQBAOWPrcCEF4BpnVZxd7pSOCLA;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$cQBAOWPrcCEF4BpnVZxd7pSOCLA;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/BillingResult;)V

    invoke-direct {p0, p2, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getProductsImpl(Ljava/util/List;Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;)V

    return-void
.end method

.method public static synthetic lambda$getProducts$3(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V
    .locals 3

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productIds:Ljava/util/ArrayList;

    const-string v1, "inapp"

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$meuIi8MkXvNQgseDM84eSjMZfLY;

    invoke-direct {v2, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$meuIi8MkXvNQgseDM84eSjMZfLY;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getProductsImpl(Ljava/util/List;Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetProductsQueryListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$getPurchaseAsync$25(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .locals 6

    if-eqz p4, :cond_0

    .line 1456
    invoke-interface {p1, p3, p4}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void

    .line 1460
    :cond_0
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_verifiedPurchases:Ljava/util/List;

    const/4 p4, 0x0

    if-eqz p3, :cond_3

    .line 1462
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_verifiedPurchases:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 1464
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v2, "getPurchaseAsync(): _verifiedPurchases: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1465
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1467
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1469
    invoke-interface {p1, p4, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void

    .line 1476
    :cond_3
    invoke-interface {p1, p4, p4}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void
.end method

.method public static synthetic lambda$getPurchaseAsync$26(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1445
    invoke-interface {p1, p3, p4}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void

    :cond_0
    const-string p3, "subs"

    .line 1449
    new-instance p4, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$Xt1d5uJLR5HrV1mndSjJaeQ-ja0;

    invoke-direct {p4, p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$Xt1d5uJLR5HrV1mndSjJaeQ-ja0;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPurchaseAsync(Ljava/lang/String;Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;)V

    return-void
.end method

.method static synthetic lambda$getPurchaseAsync$27(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7

    .line 1490
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getPurchaseAsync(): onQueryPurchasesResponse: %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1493
    :try_start_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1495
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 1497
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v3, "getPurchase(): queryPurchases: %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1498
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1500
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1502
    invoke-interface {p1, p2, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 1508
    invoke-interface {p1, p2, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1512
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$getPurchaseAsync$28(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/android/billingclient/api/ProductDetails;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 8

    .line 1541
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getPurchaseAsync() [product]: onQueryPurchasesResponse: %d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1544
    :try_start_0
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1546
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 1548
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v3, "getPurchaseAsync() [product]: onQueryPurchasesResponse: %s"

    new-array v4, v2, [Ljava/lang/Object;

    const-string v6, ","

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1549
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1551
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1553
    invoke-interface {p2, p3, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void

    .line 1560
    :cond_2
    iget-object p4, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_verifiedPurchases:Ljava/util/List;

    if-eqz p4, :cond_5

    .line 1562
    iget-object p4, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_verifiedPurchases:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_3
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 1564
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v3, "getPurchaseAsync() [product]: _verifiedPurchases: %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1565
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1567
    invoke-virtual {p1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1569
    invoke-interface {p2, p3, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 1576
    invoke-interface {p2, p3, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$GetPurchaseAsyncListener;->onGetPurchase(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/Purchase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1580
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$makePurchase$10(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)V
    .locals 6

    .line 1037
    :try_start_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase(): Starting purchase flow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1039
    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->createPurchaseFlowParams(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 1043
    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1042
    invoke-virtual {p1, v1, v0}, Lcom/android/billingclient/api/BillingClient;->launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;

    move-result-object p1

    .line 1047
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase(): launchBillingFlow(): %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1051
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "purchase:failed"

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find product details for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " or there was no subscription offer specified"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1053
    invoke-static {v2, v3, p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1051
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1062
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$onPurchasesUpdated$29(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0, p1, p2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$queryPurchasesLocal$4(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6

    .line 840
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 841
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v2, "queryPurchasesLocal(): response: subs: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;->onFailure(ILjava/lang/String;)V

    return-void

    .line 848
    :cond_0
    invoke-interface {p2, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 849
    invoke-direct {p0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->verifyPurchases(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;->onSuccess(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$queryPurchasesLocal$5(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;Ljava/util/List;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 6

    .line 822
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 823
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v2, "queryPurchasesLocal(): response: inapp: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    invoke-virtual {p3}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;->onFailure(ILjava/lang/String;)V

    return-void

    .line 830
    :cond_0
    invoke-interface {p2, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 832
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->areSubscriptionsSupported()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 834
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 835
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p4

    const-string v0, "subs"

    .line 836
    invoke-virtual {p4, v0}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object p4

    .line 837
    invoke-virtual {p4}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object p4

    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$F1rNqTZ8X0F9gPndsdkVyAGN34w;

    invoke-direct {v0, p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$F1rNqTZ8X0F9gPndsdkVyAGN34w;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;Ljava/util/List;)V

    .line 834
    invoke-virtual {p3, p4, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    goto :goto_0

    .line 854
    :cond_1
    invoke-direct {p0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->verifyPurchases(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;->onSuccess(ILjava/util/List;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$queryPurchasesLocal$6(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)V
    .locals 4

    .line 811
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "queryPurchasesLocal()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 816
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 817
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v2

    const-string v3, "inapp"

    .line 818
    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v2

    .line 819
    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v2

    new-instance v3, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$xP8p6CEHIx2Vpb0m4_ZIabcAtfM;

    invoke-direct {v3, p0, p1, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$xP8p6CEHIx2Vpb0m4_ZIabcAtfM;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;Ljava/util/List;)V

    .line 816
    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 860
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$queryPurchasesServer$7(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7

    .line 905
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 906
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v2, "queryPurchasesServer(): subs response: %d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 915
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 917
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "queryPurchasesServer(): subs: %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getOriginalJson()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 920
    :cond_1
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->queryPurchasesLocal(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)Z

    return-void
.end method

.method public static synthetic lambda$queryPurchasesServer$8(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7

    .line 880
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    .line 881
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v2, "queryPurchasesServer(): response: %d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p3

    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 890
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/billingclient/api/PurchaseHistoryRecord;

    .line 892
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "queryPurchasesServer(): inapp: %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/android/billingclient/api/PurchaseHistoryRecord;->getOriginalJson()Ljava/lang/String;

    move-result-object p3

    aput-object p3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 896
    :cond_1
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->areSubscriptionsSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 898
    sget-object p2, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string p3, "queryPurchasesServer() adding subscriptions"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p2, p3, v0}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 899
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 900
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object p3

    const-string v0, "subs"

    .line 901
    invoke-virtual {p3, v0}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object p3

    .line 902
    invoke-virtual {p3}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object p3

    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$N15QVlTGCTOTiejsCEhtq52L0tI;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$N15QVlTGCTOTiejsCEhtq52L0tI;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)V

    .line 899
    invoke-virtual {p2, p3, v0}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    goto :goto_1

    .line 926
    :cond_2
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->queryPurchasesLocal(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)Z

    :goto_1
    return-void
.end method

.method public static synthetic lambda$queryPurchasesServer$9(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)V
    .locals 3

    .line 874
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 875
    invoke-static {}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    .line 876
    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    move-result-object v1

    .line 877
    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchaseHistoryParams;

    move-result-object v1

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$n2vJ2dXsL73lmVhJ90WKvoAhs_8;

    invoke-direct {v2, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$n2vJ2dXsL73lmVhJ90WKvoAhs_8;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)V

    .line 874
    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchaseHistoryAsync(Lcom/android/billingclient/api/QueryPurchaseHistoryParams;Lcom/android/billingclient/api/PurchaseHistoryResponseListener;)V

    return-void
.end method

.method private processPendingPurchases(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 747
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_pendingPurchases:Ljava/util/List;

    .line 748
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    .line 750
    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v1

    if-nez v1, :cond_0

    .line 752
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_pendingPurchases:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private queryPurchasesLocal(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)Z
    .locals 1

    .line 808
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$u-UfRu_CEKfS7zjY4yuKJoM-Avc;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$u-UfRu_CEKfS7zjY4yuKJoM-Avc;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z

    move-result p1

    return p1
.end method

.method private queryPurchasesServer(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)Z
    .locals 1

    .line 873
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$z8Jcu8v57s2WQAFzVxdTmwSzOm4;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$z8Jcu8v57s2WQAFzVxdTmwSzOm4;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z

    move-result p1

    return p1
.end method

.method private verifyPurchases(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    .line 1694
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 1699
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 1701
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->verifyValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1703
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1710
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private verifyValidSignature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1718
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->googlePlayPublicKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->googlePlayPublicKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1726
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->googlePlayPublicKey:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1730
    sget-object p2, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v0, "Got an exception trying to validate a purchase: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2, v0, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    .line 1720
    :cond_1
    :goto_0
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string p2, "You need to call setup with your billing key"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
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

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 573
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_subscriptionIds:Ljava/util/ArrayList;

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

    .line 564
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->getActiveProducts()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public areSubscriptionsSupported()Z
    .locals 7

    .line 204
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v2, "subscriptions"

    invoke-virtual {v0, v2}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 209
    sget-object v2, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v4, "areSubscriptionsSupported() got an error response: %d:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v2, v4, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public canMakePayments()Z
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->isSupported()Z

    move-result v0

    return v0
.end method

.method public changePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)Z
    .locals 5

    .line 1371
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "changePurchase( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1373
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->currentProductId:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->currentProductId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1375
    :cond_0
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->currentTransactionId:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->currentTransactionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1377
    :cond_1
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->newProductId:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->newProductId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1379
    :cond_2
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->newProductId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->hasProduct(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    .line 1382
    :cond_3
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "changePurchase(): request valid"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1384
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$v2iL90QPX-WARY0Cf-T9zWv1gHs;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$v2iL90QPX-WARY0Cf-T9zWv1gHs;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v4

    :cond_5
    :goto_1
    return v4

    :cond_6
    :goto_2
    return v4
.end method

.method public checkAvailability()Ljava/lang/String;
    .locals 5

    .line 150
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "checkAvailability()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_handler:Landroid/os/Handler;

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$U69ZmrJwJB-_MLPFcMfL4J0iUGQ;

    invoke-direct {v2, p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$U69ZmrJwJB-_MLPFcMfL4J0iUGQ;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public consumePurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 5

    .line 1191
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "consumePurchase( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1193
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$oxyg_wLVWZfC9hU7XYYiyG1vi60;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$oxyg_wLVWZfC9hU7XYYiyG1vi60;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z

    move-result p1

    return p1
.end method

.method protected createChangePurchaseParams(Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)Lcom/android/billingclient/api/BillingFlowParams;
    .locals 6

    .line 1309
    iget v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->prorationMode:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    .line 1328
    :goto_0
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    iget-object v3, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->newProductId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->getProductDetails(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 1333
    :cond_0
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v4

    .line 1334
    invoke-virtual {v4, v2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v4

    .line 1336
    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v2

    const-string v5, "subs"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 1338
    iget-object v2, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->subscriptionOfferId:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->subscriptionOfferId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 1344
    :cond_1
    iget-object v2, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->subscriptionOfferId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    goto :goto_2

    .line 1340
    :cond_2
    :goto_1
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v0, "makePurchase(): NO SUBSCRIPTION OFFER SUPPLIED"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 1348
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v2

    .line 1350
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v3

    .line 1351
    invoke-virtual {v3, v0}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setSubscriptionReplacementMode(I)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    iget-object v3, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->currentTransactionId:Ljava/lang/String;

    .line 1352
    invoke-virtual {v0, v3}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->setOldPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;

    move-result-object v0

    .line 1353
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;

    move-result-object v0

    .line 1349
    invoke-virtual {v2, v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setSubscriptionUpdateParams(Lcom/android/billingclient/api/BillingFlowParams$SubscriptionUpdateParams;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    new-array v1, v1, [Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 1356
    invoke-virtual {v4}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1355
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 1359
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->applicationUsername:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1361
    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 1364
    :cond_4
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected createPurchaseFlowParams(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Lcom/android/billingclient/api/BillingFlowParams;
    .locals 5

    .line 975
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase(): createBillingFlowParams"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productInventory:Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->getProductDetails(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 979
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v0, "makePurchase(): Could not find matching product, have you called getProducts()?"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 983
    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "subs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 985
    iget-object v3, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->subscriptionOfferId:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->subscriptionOfferId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 987
    :cond_1
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v0, "makePurchase(): NO SUBSCRIPTION OFFER SUPPLIED"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 993
    :cond_2
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 994
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setProductDetails(Lcom/android/billingclient/api/ProductDetails;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    move-result-object v1

    .line 996
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "subs"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 998
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->subscriptionOfferId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->setOfferToken(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;

    .line 1002
    :cond_3
    invoke-static {}, Lcom/android/billingclient/api/BillingFlowParams;->newBuilder()Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 1004
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1003
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setProductDetailsParamsList(Ljava/util/List;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    move-result-object v0

    .line 1007
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1009
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedAccountId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 1012
    :cond_4
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->profileId:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->profileId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1014
    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->profileId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->setObfuscatedProfileId(Ljava/lang/String;)Lcom/android/billingclient/api/BillingFlowParams$Builder;

    .line 1017
    :cond_5
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingFlowParams$Builder;->build()Lcom/android/billingclient/api/BillingFlowParams;

    move-result-object p1

    return-object p1
.end method

.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    .line 374
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_setupComplete:Ljava/lang/Boolean;

    .line 376
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 379
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->dispose()V

    .line 385
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    :cond_1
    return-void
.end method

.method protected executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z
    .locals 4

    .line 295
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "executeServiceRequest()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "executeServiceRequest(): client ready"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 301
    invoke-interface {p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;->run()V

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$2;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$2;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->startServiceConnection(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public finishPurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 4

    .line 1072
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    const-string v1, "transaction:purchased"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    const-string v1, "transaction:restored"

    .line 1077
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1079
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): Invalid transaction state: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 1083
    :cond_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$HbE3wpFyfMOz-lw1VteddeZUguc;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$HbE3wpFyfMOz-lw1VteddeZUguc;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z

    move-result p1

    return p1
.end method

.method public getPendingPurchases()Lorg/json/JSONArray;
    .locals 4

    .line 696
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getPendingPurchases()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 697
    invoke-direct {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    .line 698
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_pendingPurchases:Ljava/util/List;

    invoke-static {v0, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->purchasesToPurchasesArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object v0

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

    .line 402
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

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

    .line 404
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 406
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 407
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 410
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

    .line 412
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 417
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

    .line 419
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 421
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 425
    :cond_4
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$QXMFGqhWgyfjk-opj6wtuTWXX3o;

    invoke-direct {p1, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$QXMFGqhWgyfjk-opj6wtuTWXX3o;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z

    move-result p1

    return p1
.end method

.method public getPurchases()Z
    .locals 1

    const/4 v0, 0x1

    .line 639
    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPurchases(Z)Z

    move-result v0

    return v0
.end method

.method public getPurchases(Z)Z
    .locals 5

    .line 652
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getPurchases( %b )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 654
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$5;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$5;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V

    if-eqz p1, :cond_0

    .line 685
    invoke-direct {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->queryPurchasesServer(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)Z

    move-result p1

    return p1

    .line 689
    :cond_0
    invoke-direct {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->queryPurchasesLocal(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)Z

    move-result p1

    return p1
.end method

.method public getUserData()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inAppUpdates()Lcom/distriqt/extension/inappbilling/controller/InAppUpdates;
    .locals 2

    .line 1772
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    if-nez v0, :cond_0

    .line 1774
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    .line 1776
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    return-object v0
.end method

.method public isChangePurchaseSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isInAppUpdatesSupported()Z
    .locals 1

    .line 1761
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingControllerSupport;->inAppUpdatesSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1763
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->inAppUpdates()Lcom/distriqt/extension/inappbilling/controller/InAppUpdates;

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

    .line 942
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 943
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "market://details?id="

    .line 944
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v2, 0x0

    .line 945
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

    .line 136
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public makePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Z
    .locals 5

    .line 1027
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1029
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    .line 1032
    :cond_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$ICA99AvVgtpezQ8gAictykqeDvo;

    invoke-direct {v0, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$ICA99AvVgtpezQ8gAictykqeDvo;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)V

    invoke-virtual {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 1598
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

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

    .line 1599
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_inAppUpdates:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-virtual {v0, p1, p2, p3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1622
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 1639
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "onPurchasesUpdated( %d, [] )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1642
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 1646
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 1648
    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->verifyValidSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1650
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "purchase:failed"

    .line 1653
    invoke-static {v1, v4}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->encodePurchase(Lcom/android/billingclient/api/Purchase;Z)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v5, 0x6

    const-string v6, "Invalid signature"

    .line 1652
    invoke-static {v1, v5, v6}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1650
    invoke-interface {v2, v3, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "purchases:updated"

    .line 1663
    invoke-direct {p0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->verifyPurchases(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2, v4}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->purchasesToPurchasesArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object p2

    .line 1664
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    .line 1665
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 1662
    invoke-static {p2, v1, p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string v0, "purchase:failed"

    .line 1673
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const-string p2, "Purchases response invalid"

    .line 1671
    invoke-static {v1, p1, p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string v0, "purchase:failed"

    .line 1683
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p2

    .line 1684
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    .line 1681
    invoke-static {v1, p2, p1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1688
    :goto_1
    new-instance p2, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$mJ57kUXZJ3Lc1avuH_8xp11bUMU;

    invoke-direct {p2, p0, v0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$mJ57kUXZJ3Lc1avuH_8xp11bUMU;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    return-void
.end method

.method public onRestart()V
    .locals 3

    .line 1616
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "onRestart()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1628
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onSetupComplete()V
    .locals 3

    .line 282
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "setup() success"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_SUCCESS:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1609
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public restorePurchases()Z
    .locals 3

    .line 596
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "restorePurchases()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 598
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$4;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$4;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V

    invoke-direct {p0, v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->queryPurchasesServer(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)Z

    move-result v0

    return v0
.end method

.method public setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
    .locals 4

    .line 225
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "setup()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->googlePlayPublicKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->googlePlayPublicKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_service:Lcom/distriqt/extension/inappbilling/controller/BillingService;

    .line 240
    :try_start_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 241
    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 245
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;

    invoke-direct {p1, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->startServiceConnection(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 273
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    .line 229
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    const-string v1, "Invalid Key"

    .line 231
    invoke-static {v2, v1}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public showProductView(Ljava/lang/String;)Z
    .locals 3

    .line 952
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->isProductViewSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/distriqt/extension/inappbilling/activities/ProductViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "productId"

    .line 955
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "service"

    const-string v1, "google_play_inapp_billing"

    .line 956
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 958
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 960
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v0, "productview:loaded"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected startServiceConnection(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;)V
    .locals 3

    .line 330
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->TAG:Ljava/lang/String;

    const-string v1, "startServiceConnection()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$3;

    invoke-direct {v1, p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$3;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void
.end method
