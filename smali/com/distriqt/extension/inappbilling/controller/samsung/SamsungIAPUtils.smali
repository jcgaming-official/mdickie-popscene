.class public Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;
.super Ljava/lang/Object;
.source "SamsungIAPUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SamsungIAPUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeProduct(Ljava/lang/String;Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;)Lcom/distriqt/extension/inappbilling/controller/Product;
    .locals 5

    .line 95
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->TAG:Ljava/lang/String;

    const-string v1, "encodeProduct( %s ) : %s "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :try_start_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/Product;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/Product;-><init>()V

    .line 101
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->title:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemDesc()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->description:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemPrice()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getItemPriceString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getCurrencyUnit()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getCurrencyCode()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "item"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "inapp"

    .line 116
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    goto/16 :goto_2

    .line 118
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "subscription"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "subs"

    .line 120
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    .line 124
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 125
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getSubscriptionDurationUnit()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getSubscriptionDurationMultiplier()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 129
    iget-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    iput-wide v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 130
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 131
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 132
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_1

    .line 138
    :try_start_1
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    const-wide/16 v2, 0x0

    .line 139
    iput-wide v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 141
    iget-object v2, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 142
    iget-object v2, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 143
    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    const-string v3, "day"

    invoke-direct {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    const-string v2, "finite"

    .line 145
    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    .line 147
    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v3, "freeTrialPeriod"

    .line 148
    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 149
    iget-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v1, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 157
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getTieredSubscriptionYN()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Y"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v1, :cond_2

    .line 165
    :try_start_3
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getTieredPrice()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 167
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getTieredPriceString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 168
    iget-object v2, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 169
    iget-object v2, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 170
    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getTieredSubscriptionDurationUnit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getTieredSubscriptionDurationMultiplier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 174
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getTieredSubscriptionCount()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    const-string v2, "finite"

    .line 175
    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    .line 177
    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v3, "introductoryOffer"

    .line 178
    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 179
    iget-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v1, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 186
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    :cond_2
    :goto_1
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v2, "baseOffer"

    .line 191
    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 192
    iget-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/iap/lib/vo/ProductVo;->getJsonString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->source:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v0

    :catch_2
    move-exception p0

    .line 204
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static ownedProductToPurchase(Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;
    .locals 4

    .line 234
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/Purchase;-><init>()V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getItemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 237
    iput v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->quantity:I

    .line 241
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPurchaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionTimestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 249
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPurchaseId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    .line 253
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPaymentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "transaction:restored"

    .line 257
    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    const/4 p1, 0x0

    .line 258
    invoke-static {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->ownedProductToPurchase(Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object p1

    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalPurchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    goto :goto_1

    :cond_1
    const-string p1, "transaction:purchased"

    .line 262
    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    :goto_1
    const-string p1, ""

    .line 265
    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->packageName:Ljava/lang/String;

    .line 267
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPassThroughParam()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->developerPayload:Ljava/lang/String;

    .line 268
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getPassThroughParam()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->applicationUsername:Ljava/lang/String;

    .line 272
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getSubscriptionEndDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 274
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getSubscriptionEndDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 277
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->cancelTimestamp:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 283
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;->getJsonString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static ownedProductsToPurchasesArray(Ljava/util/ArrayList;Z)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;",
            ">;Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 214
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 215
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;

    .line 217
    invoke-static {v1, p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->ownedProductToPurchase(Lcom/samsung/android/sdk/iap/lib/vo/OwnedProductVo;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
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

.method public static purchaseVoToPurchase(Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;
    .locals 4

    .line 294
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/Purchase;-><init>()V

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getItemId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 297
    iput v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->quantity:I

    .line 301
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPurchaseDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionTimestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPurchaseId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPaymentId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string p1, "transaction:restored"

    .line 317
    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    const/4 p1, 0x0

    .line 318
    invoke-static {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPUtils;->purchaseVoToPurchase(Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;Z)Lcom/distriqt/extension/inappbilling/controller/Purchase;

    move-result-object p1

    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalPurchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    goto :goto_1

    :cond_1
    const-string p1, "transaction:purchased"

    .line 322
    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    :goto_1
    const-string p1, ""

    .line 325
    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->packageName:Ljava/lang/String;

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPassThroughParam()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->developerPayload:Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getPassThroughParam()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->applicationUsername:Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/PurchaseVo;->getJsonString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalMessage:Ljava/lang/String;

    return-object v0
.end method

.method public static toErrorCode(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    :sswitch_1
    const/4 p0, 0x0

    return p0

    :sswitch_2
    const/4 p0, 0x2

    return p0

    :sswitch_3
    const/4 p0, 0x5

    return p0

    :sswitch_4
    const/4 p0, 0x7

    return p0

    :sswitch_5
    const/4 p0, 0x4

    return p0

    :sswitch_6
    const/4 p0, 0x3

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x3f5 -> :sswitch_6
        -0x3ed -> :sswitch_5
        -0x3eb -> :sswitch_4
        -0x3ea -> :sswitch_3
        -0x3e8 -> :sswitch_2
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static toErrorMessage(Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;)Ljava/lang/String;
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorString()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorDetailsString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/iap/lib/vo/ErrorVo;->getErrorDetailsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
