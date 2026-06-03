.class public Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;
.super Ljava/lang/Object;
.source "CatappultUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CatappultUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeProduct(Ljava/lang/String;Lcom/appcoins/sdk/billing/SkuDetails;)Lcom/distriqt/extension/inappbilling/controller/Product;
    .locals 5

    .line 57
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->TAG:Ljava/lang/String;

    const-string v1, "encodeProduct( %s ) : %s "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :try_start_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/Product;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/Product;-><init>()V

    .line 62
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->title:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->description:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->source:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->getItemType()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/appcoins/sdk/billing/types/SkuType;->inapp:Lcom/appcoins/sdk/billing/types/SkuType;

    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/types/SkuType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "inapp"

    .line 68
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    .line 69
    :cond_0
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->getItemType()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/appcoins/sdk/billing/types/SkuType;->subs:Lcom/appcoins/sdk/billing/types/SkuType;

    invoke-virtual {v1}, Lcom/appcoins/sdk/billing/types/SkuType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "subs"

    .line 70
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    .line 72
    :cond_1
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 74
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :try_start_1
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double v1, v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v3

    :try_start_2
    iput-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    .line 78
    invoke-virtual {p1}, Lcom/appcoins/sdk/billing/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    .line 79
    iget-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->extractCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    .line 80
    iget-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->internationalCurrencySymbol:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 84
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    :cond_2
    :goto_0
    iget-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    const-string p1, "subs"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 90
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 95
    iget-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    iput-wide v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 96
    iget-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 97
    iget-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 98
    iget-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 100
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {p1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v1, "baseOffer"

    .line 101
    iput-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 102
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_3
    return-object v0

    :catch_1
    move-exception p0

    .line 111
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encodePurchase(Lcom/appcoins/sdk/billing/Purchase;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;
    .locals 4

    .line 166
    :try_start_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/Purchase;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "Invalid Purchase"

    .line 170
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->error:Ljava/lang/String;

    const-string p0, "-1"

    .line 171
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->errorCode:Ljava/lang/String;

    return-object v0

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->getPurchaseTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionTimestamp:J

    .line 177
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->getToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->getPurchaseState()I

    move-result v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->getPurchaseState(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->packageName:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->developerPayload:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->getSignature()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->signature:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalMessage:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/appcoins/sdk/billing/Purchase;->isAutoRenewing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->isAutoRenewing:Z

    if-eqz p1, :cond_1

    const-string p1, "transaction:restored"

    .line 188
    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    .line 189
    invoke-static {p0, v2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->encodePurchase(Lcom/appcoins/sdk/billing/Purchase;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalPurchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    .line 196
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static extractCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "[^0-9\\.,\\s]*"

    .line 120
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 121
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 122
    :cond_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 125
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static getPurchaseState(I)Ljava/lang/String;
    .locals 4

    .line 203
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->TAG:Ljava/lang/String;

    const-string v1, "getPurchaseState( %d )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, "transaction:purchased"

    return-object p0
.end method

.method public static purchasesToPurchasesArray(Ljava/util/List;Z)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/appcoins/sdk/billing/Purchase;",
            ">;Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 142
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_1

    .line 145
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appcoins/sdk/billing/Purchase;

    .line 147
    invoke-static {v1, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->encodePurchase(Lcom/appcoins/sdk/billing/Purchase;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method
