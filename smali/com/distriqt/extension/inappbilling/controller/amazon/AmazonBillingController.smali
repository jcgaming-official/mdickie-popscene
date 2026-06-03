.class public Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;
.super Lcom/distriqt/core/ActivityStateListener;
.source "AmazonBillingController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;
.implements Lcom/amazon/device/iap/PurchasingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AmazonBillingController"


# instance fields
.field private _consumeRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _getPurchaseReceipts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/device/iap/model/Receipt;",
            ">;"
        }
    .end annotation
.end field

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

.field private _purchaseUpdatesType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private _restorePurchaseReceipts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/device/iap/model/Receipt;",
            ">;"
        }
    .end annotation
.end field

.field private _setupComplete:Ljava/lang/Boolean;

.field private _skuMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/iap/model/Product;",
            ">;"
        }
    .end annotation
.end field

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

    .line 112
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    const/4 v0, 0x0

    .line 87
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_setupComplete:Ljava/lang/Boolean;

    .line 113
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 114
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_productIds:Ljava/util/ArrayList;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    .line 117
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_purchaseUpdatesType:Ljava/util/Map;

    .line 118
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_consumeRequests:Ljava/util/Map;

    const/4 p1, 0x0

    .line 120
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_skuMap:Ljava/util/Map;

    .line 121
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_handler:Landroid/os/Handler;

    return-void
.end method

.method private handleConsumePurchaseResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 13

    .line 724
    :try_start_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$2;->$SwitchMap$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 814
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "handleConsumePurchaseResponse(): failed"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 815
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    const-string v2, "Could not retrieve purchase information"

    .line 817
    invoke-static {v1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 815
    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 728
    :cond_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v4, "handleConsumePurchaseResponse(): success"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 730
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v0

    .line 732
    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_consumeRequests:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 734
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v4

    .line 735
    iget-object v5, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_consumeRequests:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 736
    sget-object v5, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v6, "handleConsumePurchaseResponse(): Finding receipt for product: %s from %d receipts"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v0, v8, v3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-static {v5, v6, v8}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 737
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    .line 739
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/device/iap/model/Receipt;

    .line 740
    sget-object v9, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v10, "handleConsumePurchaseResponse(): Receipt: %s:%s"

    new-array v11, v7, [Ljava/lang/Object;

    .line 741
    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1

    const-string v12, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v12

    :goto_1
    aput-object v12, v11, v3

    .line 742
    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getTermSku()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    const-string v12, "null"

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getTermSku()Ljava/lang/String;

    move-result-object v12

    :goto_2
    aput-object v12, v11, v2

    .line 740
    invoke-static {v9, v10, v11}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    const/4 v9, 0x0

    .line 745
    :goto_3
    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getTermSku()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getTermSku()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_4

    :cond_4
    const/4 v10, 0x0

    :goto_4
    if-nez v9, :cond_5

    if-eqz v10, :cond_7

    .line 750
    :cond_5
    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v6

    sget-object v9, Lcom/amazon/device/iap/model/ProductType;->CONSUMABLE:Lcom/amazon/device/iap/model/ProductType;

    if-ne v6, v9, :cond_6

    .line 753
    invoke-virtual {v8}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    .line 752
    invoke-static {v6, v9}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    .line 758
    iget-object v6, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v9, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_SUCCESS:Ljava/lang/String;

    .line 761
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v10

    invoke-static {v8, v10, v3}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->encodeReceipt(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONObject;

    move-result-object v8

    const-string v10, ""

    .line 760
    invoke-static {v8, v3, v10}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 758
    invoke-interface {v6, v9, v8}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 769
    :cond_6
    iget-object v6, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v8, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    const/4 v9, 0x5

    const-string v10, "Product is not consumable"

    .line 771
    invoke-static {v9, v10}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 769
    invoke-interface {v6, v8, v9}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    const/4 v6, 0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_9

    .line 781
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->hasMore()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 783
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "handleConsumePurchaseResponse(): querying for more receipts"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 785
    invoke-static {v2}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    move-result-object p1

    .line 787
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_purchaseUpdatesType:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->CONSUME:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_consumeRequests:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_9
    move v3, v6

    goto :goto_6

    .line 795
    :cond_a
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "handleConsumePurchaseResponse(): could not find consumeRequest"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    if-nez v3, :cond_b

    .line 800
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_FAILED:Ljava/lang/String;

    const-string v2, "Unknown error occurred"

    .line 802
    invoke-static {v1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception p1

    .line 828
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_b
    :goto_7
    return-void
.end method

.method private handleGetPurchasesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 5

    .line 499
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$2;->$SwitchMap$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 534
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "handleGetPurchasesResponse(): failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 535
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v0, "get:purchases:failed"

    const-string v1, "Failed to retrieve purchases"

    .line 537
    invoke-static {v2, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 535
    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 503
    :cond_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v3, "handleGetPurchasesResponse(): success"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_getPurchaseReceipts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 507
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    move-result-object p1

    .line 511
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_purchaseUpdatesType:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->GET_PURCHASES:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "get:purchases:complete"

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_getPurchaseReceipts:Ljava/util/ArrayList;

    .line 520
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object p1

    .line 518
    invoke-static {v3, p1, v2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->receiptsToPurchasesArray(Ljava/util/List;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONArray;

    move-result-object p1

    const-string v3, ""

    .line 517
    invoke-static {p1, v2, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 515
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleRestorePurchasesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 5

    .line 405
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$2;->$SwitchMap$com$amazon$device$iap$model$PurchaseUpdatesResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 440
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "handleRestorePurchasesResponse(): failed"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_FAILED:Ljava/lang/String;

    const-string v1, "Failed to retrieve purchases"

    .line 443
    invoke-static {v2, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v3, "handleRestorePurchasesResponse(): success"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 411
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_restorePurchaseReceipts:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 413
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    move-result-object p1

    .line 417
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_purchaseUpdatesType:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->RESTORE:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v3, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_SUCCESS:Ljava/lang/String;

    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_restorePurchaseReceipts:Ljava/util/ArrayList;

    .line 426
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object p1

    .line 424
    invoke-static {v4, p1, v1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->receiptsToPurchasesArray(Ljava/util/List;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, ""

    .line 423
    invoke-static {p1, v2, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 421
    invoke-interface {v0, v3, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hasProducts()Z
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_skuMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_skuMap:Ljava/util/Map;

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

.method public static synthetic lambda$checkAvailability$0(Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;Ljava/lang/String;)V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "availability_complete"

    .line 157
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->canMakePayments()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "available"

    goto :goto_0

    :cond_0
    const-string v2, "not_available"

    .line 155
    :goto_0
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/events/AvailabilityEvent;->formatForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$makePurchase$1(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)V
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->productId:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

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

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 357
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_subscriptionIds:Ljava/util/ArrayList;

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

    .line 336
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 337
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_skuMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_skuMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 341
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/iap/model/Product;

    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->convertAmazonProduct(Lcom/amazon/device/iap/model/Product;)Lcom/distriqt/extension/inappbilling/controller/Product;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 344
    iget-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public areSubscriptionsSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canMakePayments()Z
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public changePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseChangeRequest;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public checkAvailability()Ljava/lang/String;
    .locals 5

    .line 146
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "checkAvailability()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_setupComplete:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_handler:Landroid/os/Handler;

    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$bOO6-t2UTSGBLGq-Yuzb4zq_FI4;

    invoke-direct {v2, p0, v0}, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$bOO6-t2UTSGBLGq-Yuzb4zq_FI4;-><init>(Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;Ljava/lang/String;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public consumePurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 6

    .line 674
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "consumePurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 676
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 679
    :cond_0
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    .line 684
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 686
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "consumePurchase(): using purchase object transaction receipt"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    sget-object v1, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {v0, v1}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    .line 692
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->CONSUME_SUCCESS:Ljava/lang/String;

    .line 695
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, ""

    .line 694
    invoke-static {p1, v5, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 692
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_2
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "consumePurchase(): retrieving receipt"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 704
    invoke-static {v2}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_purchaseUpdatesType:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->CONSUME:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_consumeRequests:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception p1

    .line 714
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 265
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_setupComplete:Ljava/lang/Boolean;

    .line 266
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 272
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public finishPurchase(Lcom/distriqt/extension/inappbilling/controller/Purchase;)Z
    .locals 6

    .line 603
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 605
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    .line 613
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_skuMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/model/Product;

    if-nez v0, :cond_2

    .line 614
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->parentProductId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->parentProductId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 616
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): Could not find matching product - trying parentProductId: %s"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->parentProductId:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_skuMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->parentProductId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/iap/model/Product;

    :cond_2
    if-nez v0, :cond_3

    .line 622
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): Could not find matching product"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_FAILED:Ljava/lang/String;

    .line 626
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x6

    const-string v3, "Could not find matching product or purchase"

    .line 625
    invoke-static {p1, v2, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 624
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    .line 634
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/device/iap/model/Product;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/iap/model/ProductType;->CONSUMABLE:Lcom/amazon/device/iap/model/ProductType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/iap/model/ProductType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 636
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): Product is consumable... "

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_SUCCESS:Ljava/lang/String;

    .line 639
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, ""

    .line 638
    invoke-static {p1, v5, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 637
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 646
    :cond_4
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "finishPurchase(): notifyFulfillment( %s, ... )"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    sget-object v1, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {v0, v1}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    .line 652
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->FINISH_SUCCESS:Ljava/lang/String;

    .line 654
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    const-string v3, ""

    .line 653
    invoke-static {p1, v5, v3}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 652
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 663
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public getPendingPurchases()Lorg/json/JSONArray;
    .locals 3

    .line 489
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getPendingPurchases()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    return-object v0
.end method

.method public getProducts(Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;)Z
    .locals 6
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

    .line 287
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getProducts( %s, %s )"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    :try_start_0
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 295
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 299
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

    .line 301
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 306
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

    .line 308
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 310
    iget-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 314
    :cond_4
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 315
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_productIds:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 316
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_subscriptionIds:Ljava/util/ArrayList;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 318
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    move-result-object p1

    .line 320
    sget-object p2, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string p3, "getProducts(): started request: %s"

    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p2, p3, v0}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p1

    .line 327
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_5
    return v4
.end method

.method public getPurchases(Z)Z
    .locals 5

    .line 462
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getPurchases( %b )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_getPurchaseReceipts:Ljava/util/ArrayList;

    .line 471
    invoke-static {v2}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    move-result-object p1

    .line 473
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_purchaseUpdatesType:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->GET_PURCHASES:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 479
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v4
.end method

.method public getUserData()Z
    .locals 4

    .line 1064
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "getUserData()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1067
    :try_start_0
    invoke-static {}, Lcom/amazon/device/iap/PurchasingService;->getUserData()Lcom/amazon/device/iap/model/RequestId;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 1072
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v2
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

    .line 128
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public makePurchase(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)Z
    .locals 6

    .line 575
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "makePurchase( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 580
    :cond_0
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_1

    return v5

    .line 585
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$lWIhh6WrPZecPTh_SmmFubNJnDc;

    invoke-direct {v1, p1}, Lcom/distriqt/extension/inappbilling/controller/amazon/-$$Lambda$AmazonBillingController$lWIhh6WrPZecPTh_SmmFubNJnDc;-><init>(Lcom/distriqt/extension/inappbilling/controller/PurchaseRequest;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 594
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 8

    .line 890
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "onProductDataResponse()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$2;->$SwitchMap$com$amazon$device$iap$model$ProductDataResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 927
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v3, "onProductDataResponse(): failed: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v3, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 928
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_FAILED:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "Failed to retrieve products"

    .line 930
    invoke-static {v1, v2}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 928
    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 895
    :cond_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v3, "onProductDataResponse(): success"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 899
    iget-object v4, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v5, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCT_INVALID:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_skuMap:Ljava/util/Map;

    .line 904
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 905
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 907
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/iap/model/Product;

    .line 909
    invoke-static {v3}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->convertAmazonProduct(Lcom/amazon/device/iap/model/Product;)Lcom/distriqt/extension/inappbilling/controller/Product;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 912
    sget-object v4, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v5, "onProductDataResponse(): Product[%s, %s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v3, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v7, v3, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 913
    iget-object v4, v3, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 917
    :cond_3
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->PRODUCTS_LOADED:Ljava/lang/String;

    .line 919
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatProductsForEvent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 917
    invoke-interface {p1, v1, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 5

    .line 941
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "onPurchaseResponse()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v0

    .line 943
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v1

    .line 944
    sget-object v3, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$2;->$SwitchMap$com$amazon$device$iap$model$PurchaseResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ordinal()I

    move-result p1

    aget p1, v3, p1

    packed-switch p1, :pswitch_data_0

    .line 991
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v3, "onPurchaseResponse(): failed"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 992
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "purchase:failed"

    .line 995
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->encodeReceipt(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, ""

    .line 994
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-interface {p1, v3, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 976
    :pswitch_0
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v3, "onPurchaseResponse(): INVALID_SKU"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 977
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "purchase:failed"

    .line 980
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->encodeReceipt(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x4

    const-string v2, ""

    .line 979
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 977
    invoke-interface {p1, v3, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 962
    :pswitch_1
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v3, "onPurchaseResponse(): ALREADY_PURCHASED"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "purchase:failed"

    .line 966
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->encodeReceipt(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x7

    const-string v2, ""

    .line 965
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchaseForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 963
    invoke-interface {p1, v3, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :pswitch_2
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v3, "onPurchaseResponse(): success"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 949
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v3, "purchases:updated"

    .line 952
    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->encodeReceipt(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, ""

    .line 951
    invoke-static {v0, v2, v1}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONObject;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 949
    invoke-interface {p1, v3, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 4

    .line 1009
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "onPurchaseUpdatesResponse()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1011
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->GET_PURCHASES:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    .line 1015
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestId()Lcom/amazon/device/iap/model/RequestId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_purchaseUpdatesType:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1018
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_purchaseUpdatesType:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_0

    .line 1020
    :try_start_1
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->GET_PURCHASES:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 1025
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1030
    :cond_1
    :goto_1
    :try_start_2
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$2;->$SwitchMap$com$distriqt$extension$inappbilling$controller$amazon$AmazonBillingController$PURCHASE_UPDATES_TYPE:[I

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 1034
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->handleGetPurchasesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V

    goto :goto_2

    .line 1042
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->handleConsumePurchaseResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V

    goto :goto_2

    .line 1038
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->handleRestorePurchasesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 1048
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestart()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 3

    .line 857
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "onUserDataResponse()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;

    move-result-object v0

    .line 862
    :try_start_0
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$2;->$SwitchMap$com$amazon$device$iap$model$UserDataResponse$RequestStatus:[I

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserDataResponse$RequestStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 873
    :pswitch_0
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v0, "userdata:get:failed"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 865
    :pswitch_1
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "userdata:get:success"

    .line 867
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/UserDataResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object p1

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->userDataToObject(Lcom/amazon/device/iap/model/UserData;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/events/UserDataEvent;->formatForEvent(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 865
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 882
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public restorePurchases()Z
    .locals 5

    .line 379
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "restorePurchases()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->hasProducts()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 386
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_restorePurchaseReceipts:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 388
    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    move-result-object v1

    .line 390
    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_purchaseUpdatesType:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/RequestId;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;->RESTORE:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$PURCHASE_UPDATES_TYPE;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 396
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v2
.end method

.method public setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
    .locals 5

    .line 177
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "setup()"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    :try_start_0
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 183
    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 182
    invoke-static {p1, p0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 187
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "SDK_VERSION: %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "2.10.3.0"

    aput-object v4, v3, v1

    invoke-static {p1, v0, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_setupComplete:Ljava/lang/Boolean;

    .line 191
    invoke-static {}, Lcom/amazon/device/drm/LicensingService;->getAppstoreSDKMode()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PRODUCTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 194
    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$1;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$1;-><init>(Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;)V

    .line 193
    invoke-static {p1, v0}, Lcom/amazon/device/drm/LicensingService;->verifyLicense(Landroid/content/Context;Lcom/amazon/device/drm/LicensingListener;)Lcom/amazon/device/drm/model/RequestId;

    .line 237
    :cond_0
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "setup(): STARTING HACK FOR AMAZON LIFECYCLE EVENTS"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 239
    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 242
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_SUCCESS:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {p1, v0, v3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 248
    :cond_1
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v0, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    const-string v2, "Service not supported"

    invoke-interface {p1, v0, v2}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 253
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    .line 254
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public showProductView(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
