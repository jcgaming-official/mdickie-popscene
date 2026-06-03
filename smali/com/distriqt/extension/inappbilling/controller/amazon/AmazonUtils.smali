.class public Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;
.super Ljava/lang/Object;
.source "AmazonUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AmazonUtils"

.field private static patternPrice:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+[[\\.,\\s]\\d+]*)"

    .line 326
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->patternPrice:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAmazonProduct(Lcom/amazon/device/iap/model/Product;)Lcom/distriqt/extension/inappbilling/controller/Product;
    .locals 8

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->TAG:Ljava/lang/String;

    const-string v1, "convertAmazonProduct(): %s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/Product;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/Product;-><init>()V

    .line 177
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->title:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getDescription()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->description:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->source:Ljava/lang/String;

    .line 182
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v1

    sget-object v3, Lcom/amazon/device/iap/model/ProductType;->SUBSCRIPTION:Lcom/amazon/device/iap/model/ProductType;

    if-ne v1, v3, :cond_1

    const-string v1, "subs"

    goto :goto_0

    :cond_1
    const-string v1, "inapp"

    .line 184
    :goto_0
    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    .line 186
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 188
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    .line 191
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->extractPrice(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    .line 192
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->extractCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    .line 193
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->internationalCurrencySymbol:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 197
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v1

    sget-object v3, Lcom/amazon/device/iap/model/ProductType;->SUBSCRIPTION:Lcom/amazon/device/iap/model/ProductType;

    if-ne v1, v3, :cond_7

    .line 203
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->subscriptionPeriodFromString(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v3

    iput-object v3, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 208
    :cond_3
    iget-wide v3, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    iput-wide v3, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 209
    iget-object v3, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    iput-object v3, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 210
    iget-object v3, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v3, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 211
    iget-object v3, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v3, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 217
    :try_start_1
    new-instance v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v3}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    const-wide/16 v4, 0x0

    .line 218
    iput-wide v4, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 220
    iget-object v4, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v4, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 221
    iget-object v4, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v4, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 222
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->subscriptionPeriodFromString(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v4

    iput-object v4, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 223
    iput v2, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    const-string v2, "finite"

    .line 224
    iput-object v2, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    .line 226
    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v4, "freeTrialPeriod"

    .line 227
    iput-object v4, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 228
    iget-object v4, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v3, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    .line 235
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    :cond_4
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getPromotions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getPromotions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 242
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Product;->getPromotions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/iap/model/Promotion;

    .line 244
    new-instance v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {v3}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    .line 245
    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Promotion;->getPromotionType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 247
    invoke-virtual {v2}, Lcom/amazon/device/iap/model/Promotion;->getPromotionPlans()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/device/iap/model/PromotionPlan;

    .line 249
    new-instance v5, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v5}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 250
    invoke-virtual {v4}, Lcom/amazon/device/iap/model/PromotionPlan;->getPromotionPrice()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->extractPrice(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 251
    invoke-virtual {v4}, Lcom/amazon/device/iap/model/PromotionPlan;->getPromotionPrice()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    const-string v6, ""

    .line 252
    iput-object v6, v5, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 253
    invoke-virtual {v4}, Lcom/amazon/device/iap/model/PromotionPlan;->getPromotionPrice()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->extractCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 254
    invoke-virtual {v4}, Lcom/amazon/device/iap/model/PromotionPlan;->getPromotionPricePeriod()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->subscriptionPeriodFromString(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v6

    iput-object v6, v5, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 255
    invoke-virtual {v4}, Lcom/amazon/device/iap/model/PromotionPlan;->getPromotionPriceCycles()I

    move-result v4

    iput v4, v5, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    const-string v4, "finite"

    .line 256
    iput-object v4, v5, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    .line 258
    iget-object v4, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 261
    :cond_5
    iget-object v2, v3, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v2, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 271
    :cond_6
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v2, "baseOffer"

    .line 272
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 273
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-object v0
.end method

.method public static encodeReceipt(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONObject;
    .locals 5

    if-nez p0, :cond_0

    .line 76
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "error"

    const-string p2, "Invalid Purchase"

    .line 78
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "errorCode"

    const-string p2, "-1"

    .line 79
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 83
    :cond_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->TAG:Ljava/lang/String;

    const-string v1, "encodeReceipt( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->receiptToObject(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p2, :cond_1

    const-string p2, "transactionState"

    const-string v1, "transaction:restored"

    .line 89
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "originalTransaction"

    .line 90
    invoke-static {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->receiptToObject(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p0, "message"

    const-string p1, ""

    .line 93
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "errorCode"

    const-string p1, ""

    .line 94
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :goto_1
    const/4 p1, 0x0

    .line 101
    invoke-static {p1, p0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static extractCurrencySymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "[^0-9\\.,\\s]*"

    .line 364
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 365
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 366
    :cond_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 368
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    .line 369
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public static extractPrice(Ljava/lang/String;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->patternPrice:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 334
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    .line 338
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " "

    const-string v1, ""

    .line 339
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, ","

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "."

    .line 347
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ","

    const-string v1, "."

    .line 351
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, ","

    const-string v1, ""

    .line 348
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 354
    :cond_3
    :goto_1
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 357
    :cond_4
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid parameter."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static receiptToObject(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;)Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "transaction:purchased"

    .line 137
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getTermSku()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "productId"

    .line 139
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v2, "productId"

    .line 143
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getTermSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "parentProductId"

    .line 144
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "quantity"

    const/4 v3, 0x1

    .line 147
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "transactionTimestamp"

    .line 148
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getPurchaseDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "transactionIdentifier"

    .line 149
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "transactionState"

    .line 150
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "transactionReceipt"

    .line 151
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getCancelDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "cancelTimestamp"

    .line 155
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->getCancelDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "originalMessage"

    .line 158
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/Receipt;->toJSON()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string p0, "userData"

    .line 162
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->userDataToObject(Lcom/amazon/device/iap/model/UserData;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method public static receiptsToPurchasesArray(Ljava/util/List;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/device/iap/model/Receipt;",
            ">;",
            "Lcom/amazon/device/iap/model/UserData;",
            "Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 48
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 49
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/device/iap/model/Receipt;

    .line 51
    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    invoke-static {v1, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonUtils;->encodeReceipt(Lcom/amazon/device/iap/model/Receipt;Lcom/amazon/device/iap/model/UserData;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static subscriptionPeriodFromString(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;
    .locals 3

    const-string v0, "Monthly"

    .line 284
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 286
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    const-string v0, "month"

    invoke-direct {p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_0
    const-string v0, "BiMonthly"

    .line 288
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 290
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    const-string v0, "month"

    invoke-direct {p0, v0, v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_1
    const-string v0, "Weekly"

    .line 292
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 294
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    const-string v0, "week"

    invoke-direct {p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_2
    const-string v0, "BiWeekly"

    .line 296
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 298
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    const-string v0, "week"

    invoke-direct {p0, v0, v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_3
    const-string v0, "Quarterly"

    .line 300
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    const-string v0, "month"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_4
    const-string v0, "SemiAnnually"

    .line 304
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 306
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    const-string v0, "month"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_5
    const-string v0, "Annually"

    .line 308
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 310
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    const-string v0, "year"

    invoke-direct {p0, v0, v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static userDataToObject(Lcom/amazon/device/iap/model/UserData;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "userId"

    .line 379
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "marketplace"

    .line 380
    invoke-virtual {p0}, Lcom/amazon/device/iap/model/UserData;->getMarketplace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
