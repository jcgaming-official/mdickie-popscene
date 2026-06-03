.class public Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;
.super Ljava/lang/Object;
.source "AppGalleryUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AppGalleryUtils"


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

.method public static createPurchase(Ljava/lang/String;Ljava/lang/String;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;
    .locals 4

    .line 201
    :try_start_0
    new-instance v0, Lcom/huawei/hms/iap/entity/InAppPurchaseData;

    invoke-direct {v0, p0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;-><init>()V

    .line 205
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getProductId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const/4 v2, 0x1

    .line 206
    iput v2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->quantity:I

    .line 207
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getPurchaseTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionTimestamp:J

    .line 208
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, "transaction:restored"

    .line 212
    iput-object p2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    const/4 p2, 0x0

    .line 213
    invoke-static {p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->createPurchase(Ljava/lang/String;Ljava/lang/String;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object p2

    iput-object p2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalPurchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getPurchaseState()I

    move-result p2

    invoke-static {p2}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->getPurchaseState(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    .line 221
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getKind()I

    .line 230
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getOrderID()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    .line 231
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->packageName:Ljava/lang/String;

    .line 233
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 235
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->developerPayload:Ljava/lang/String;

    .line 236
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getDeveloperPayload()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->applicationUsername:Ljava/lang/String;

    .line 241
    :cond_1
    invoke-virtual {v0}, Lcom/huawei/hms/iap/entity/InAppPurchaseData;->getCancelTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->cancelTimestamp:J

    .line 243
    iput-object p1, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->signature:Ljava/lang/String;

    const-string p1, "UTF-8"

    .line 244
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 250
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encodeProduct(Ljava/lang/String;Lcom/huawei/hms/iap/entity/ProductInfo;)Lcom/distriqt/extension/inappbilling/controller/Product;
    .locals 7

    .line 82
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->TAG:Ljava/lang/String;

    const-string v1, "encodeProduct( %s ) "

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :try_start_0
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/Product;

    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/Product;-><init>()V

    .line 87
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->title:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getProductDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->description:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getMicrosPrice()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    long-to-double v0, v0

    const-wide v3, 0x412e848000000000L    # 1000000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v3

    :try_start_1
    iput-wide v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    .line 92
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getPrice()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getPriceType()I

    move-result v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->priceTypeToProductType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getPrice()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[\\d., ]+"

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    const-string v0, ""

    .line 99
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->source:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    const-string v1, "subs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 104
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubPeriod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 106
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->fromIOS8601(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 108
    :cond_0
    iget-wide v5, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    iput-wide v5, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 109
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubFreeTrialPeriod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubFreeTrialPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v1, :cond_1

    .line 117
    :try_start_2
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    const-wide/16 v5, 0x0

    .line 118
    iput-wide v5, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 120
    iget-object v5, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v5, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 121
    iget-object v5, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v5, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubFreeTrialPeriod()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->fromIOS8601(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v5

    iput-object v5, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 123
    iput v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    const-string v2, "finite"

    .line 124
    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    .line 126
    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v5, "freeTrialPeriod"

    .line 127
    iput-object v5, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 128
    iget-object v5, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 135
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPeriod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-lez v1, :cond_2

    .line 143
    :try_start_4
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 144
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPriceMicros()J

    move-result-wide v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    :try_start_5
    iput-wide v5, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 145
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPrice()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPeriod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->fromIOS8601(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 149
    invoke-virtual {p1}, Lcom/huawei/hms/iap/entity/ProductInfo;->getSubSpecialPeriodCycles()I

    move-result p1

    iput p1, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    const-string p1, "finite"

    .line 150
    iput-object p1, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    .line 152
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {p1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v2, "introductoryOffer"

    .line 153
    iput-object v2, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 154
    iget-object v2, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 161
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 165
    :cond_2
    :goto_1
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {p1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v1, "baseOffer"

    .line 166
    iput-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 167
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    return-object p0

    :catch_2
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encodePurchase(Ljava/lang/String;Ljava/lang/String;Z)Lorg/json/JSONObject;
    .locals 0

    if-nez p0, :cond_0

    .line 285
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "message"

    const-string p2, "Invalid Purchase"

    .line 286
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "errorCode"

    const-string p2, "-1"

    .line 287
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 291
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryUtils;->createPurchase(Ljava/lang/String;Ljava/lang/String;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 294
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_0

    .line 298
    :cond_1
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "message"

    const-string p2, "Could not process purchase data"

    .line 299
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "errorCode"

    const-string p2, "-2"

    .line 300
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    .line 307
    :goto_1
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getPurchaseState(I)Ljava/lang/String;
    .locals 2

    const-string v0, "transaction:unknown"

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "transaction:refunded"

    goto :goto_0

    :pswitch_1
    const-string v0, "transaction:cancelled"

    goto :goto_0

    :pswitch_2
    const-string v0, "transaction:purchased"

    :cond_0
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static priceTypeToProductType(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "subs"

    return-object p0

    :pswitch_1
    const-string p0, "inapp"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static purchasesToPurchasesArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/distriqt/extension/inappbilling/controller/Purchase;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 260
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 261
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/distriqt/extension/inappbilling/controller/Purchase;

    .line 263
    invoke-virtual {v1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 266
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

.method public static toErrorCode(I)I
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const v1, 0xea65

    const/4 v2, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    return v0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    return v2

    :pswitch_7
    const/4 p0, 0x5

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :cond_0
    return v2

    :cond_1
    const/4 p0, 0x6

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xea60
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xea92
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
