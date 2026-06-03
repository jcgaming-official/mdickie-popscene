.class public Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;
.super Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;
.source "ProductInventoryFallback.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProductInventoryFallback"


# instance fields
.field private _skuDetailsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addSkuProducts(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    .line 52
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/SkuDetails;

    .line 54
    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_1
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getActiveProducts()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/distriqt/extension/inappbilling/controller/Product;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

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

    .line 93
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 94
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    .line 96
    invoke-static {v3, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->encodeProduct(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)Lcom/distriqt/extension/inappbilling/controller/Product;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_0
    invoke-super {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->getActiveProducts()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public getSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;
    .locals 1

    .line 65
    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->hasSkuDetails(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/billingclient/api/SkuDetails;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasProduct(Ljava/lang/String;)Z
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->hasSkuDetails(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->hasProduct(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasProducts()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->hasSkuDetails()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/ProductInventory;->hasProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasSkuDetails()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

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

.method public hasSkuDetails(Ljava/lang/String;)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->hasSkuDetails()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/ProductInventoryFallback;->_skuDetailsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
