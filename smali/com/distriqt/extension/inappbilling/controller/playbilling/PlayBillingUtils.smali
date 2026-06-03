.class public Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;
.super Ljava/lang/Object;
.source "PlayBillingUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PlayBillingUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodeProduct(Ljava/lang/String;Lcom/android/billingclient/api/ProductDetails;)Lcom/distriqt/extension/inappbilling/controller/Product;
    .locals 17

    move-object/from16 v0, p0

    .line 45
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->TAG:Ljava/lang/String;

    const-string v2, "encodeProduct( %s ) : %s "

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    invoke-static {v1, v2, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :try_start_0
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/Product;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/Product;-><init>()V

    .line 50
    iput-object v0, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->title:Ljava/lang/String;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->description:Ljava/lang/String;

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->source:Ljava/lang/String;

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "inapp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "inapp"

    .line 56
    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    .line 57
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "subs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "subs"

    .line 58
    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    .line 60
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    const-wide v8, 0x412e848000000000L    # 1000000.0

    if-eqz v2, :cond_2

    .line 62
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceAmountMicros()J

    move-result-wide v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v10, v8

    :try_start_1
    iput-wide v10, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getFormattedPrice()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[\\d.,]+"

    const-string v6, ""

    invoke-virtual {v2, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getOneTimePurchaseOfferDetails()Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    .line 68
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    .line 72
    sget-object v6, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->TAG:Ljava/lang/String;

    const-string v10, "encodeProduct( %s ): OFFER: %s [%s]"

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v0, v12, v5

    .line 74
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v7

    const-string v13, ","

    .line 75
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferTags()Ljava/util/List;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    .line 72
    invoke-static {v6, v10, v12}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v6, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {v6}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    .line 79
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 80
    iget-object v10, v6, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->tags:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferTags()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getPricingPhases()Lcom/android/billingclient/api/ProductDetails$PricingPhases;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/billingclient/api/ProductDetails$PricingPhases;->getPricingPhaseList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/billingclient/api/ProductDetails$PricingPhase;

    .line 84
    sget-object v12, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->TAG:Ljava/lang/String;

    const-string v13, "encodeProduct( %s ):   PHASE: %s [%s] - %s %d %d"

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v0, v14, v5

    .line 85
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    .line 86
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v3

    .line 87
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v11

    const/4 v15, 0x4

    .line 88
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x5

    .line 89
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    .line 84
    invoke-static {v12, v13, v14}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v12}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 93
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceAmountMicros()J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    long-to-double v13, v13

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v8

    :try_start_2
    iput-wide v13, v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 94
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 95
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 96
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getFormattedPrice()Ljava/lang/String;

    move-result-object v13

    const-string v14, "[\\d.,]+"

    const-string v15, ""

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 98
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingPeriod()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->fromIOS8601(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v13

    iput-object v13, v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 99
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getBillingCycleCount()I

    move-result v13

    iput v13, v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    .line 100
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails$PricingPhase;->getRecurrenceMode()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v10, "none"

    .line 109
    iput-object v10, v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    const-string v10, "finite"

    .line 103
    iput-object v10, v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    const-string v10, "infinite"

    .line 106
    iput-object v10, v12, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    .line 113
    :goto_2
    iget-object v10, v6, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 116
    :cond_3
    iget-object v4, v1, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_4
    return-object v1

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static encodeProduct(Ljava/lang/String;Lcom/android/billingclient/api/SkuDetails;)Lcom/distriqt/extension/inappbilling/controller/Product;
    .locals 7

    .line 132
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->TAG:Ljava/lang/String;

    const-string v1, "encodeProduct( %s ) : %s "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :try_start_0
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/Product;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/Product;-><init>()V

    .line 137
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->id:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getTitle()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->title:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getDescription()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->description:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    long-to-double v1, v1

    const-wide v5, 0x412e848000000000L    # 1000000.0

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v5

    :try_start_1
    iput-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    .line 142
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[\\d.,]+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "inapp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "inapp"

    .line 148
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    .line 149
    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    move-result-object p0

    const-string v1, "subs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "subs"

    .line 150
    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->source:Ljava/lang/String;

    .line 155
    iget-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->type:Ljava/lang/String;

    const-string v1, "subs"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 157
    new-instance p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 158
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 160
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getSubscriptionPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->fromIOS8601(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v1

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 162
    :cond_2
    iget-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->price:D

    iput-wide v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 163
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->priceString:Ljava/lang/String;

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 164
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 165
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-lez v1, :cond_3

    .line 171
    :try_start_2
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    const-wide/16 v2, 0x0

    .line 172
    iput-wide v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 174
    iget-object v2, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 175
    iget-object v2, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getFreeTrialPeriod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->fromIOS8601(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 177
    iput v4, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    const-string v2, "finite"

    .line 178
    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    .line 180
    new-instance v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v3, "freeTrialPeriod"

    .line 181
    iput-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 182
    iget-object v3, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v1, v2, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 189
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 193
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPricePeriod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-lez v1, :cond_4

    .line 197
    :try_start_4
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;

    invoke-direct {v1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;-><init>()V

    .line 198
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPriceAmountMicros()J

    move-result-wide v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v5

    :try_start_5
    iput-wide v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    .line 199
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPrice()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    .line 200
    iget-object v2, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencyCode:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    .line 201
    iget-object v2, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->currencySymbol:Ljava/lang/String;

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPricePeriod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->fromIOS8601(Ljava/lang/String;)Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    move-result-object v2

    iput-object v2, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    .line 203
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getIntroductoryPriceCycles()I

    move-result p1

    iput p1, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    const-string p1, "finite"

    .line 204
    iput-object p1, v1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    .line 206
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {p1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v2, "introductoryOffer"

    .line 207
    iput-object v2, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 208
    iget-object v2, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 215
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :cond_4
    :goto_1
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;

    invoke-direct {p1}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;-><init>()V

    const-string v1, "baseOffer"

    .line 220
    iput-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->id:Ljava/lang/String;

    .line 221
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/SubscriptionOffer;->phases:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object p0, v0, Lcom/distriqt/extension/inappbilling/controller/Product;->subscriptionOffers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_5
    return-object v0

    :catch_2
    move-exception p0

    .line 229
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static encodePurchase(Lcom/android/billingclient/api/Purchase;Z)Lorg/json/JSONObject;
    .locals 6

    if-nez p0, :cond_0

    .line 267
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "error"

    const-string v0, "Invalid Purchase"

    .line 268
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "errorCode"

    const-string v0, "-1"

    .line 269
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 273
    :cond_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->TAG:Ljava/lang/String;

    const-string v1, "encodeReceipt( %s )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ","

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->purchaseToObject(Lcom/android/billingclient/api/Purchase;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz p1, :cond_1

    const-string p1, "transactionState"

    const-string v1, "transaction:restored"

    .line 279
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "originalTransaction"

    .line 280
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->purchaseToObject(Lcom/android/billingclient/api/Purchase;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p0, "message"

    const-string p1, ""

    .line 283
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "errorCode"

    const-string p1, ""

    .line 284
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v0

    :goto_0
    return-object p0

    :goto_1
    const/4 p1, 0x0

    .line 291
    invoke-static {p1, p0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static getPurchaseState(I)Ljava/lang/String;
    .locals 1

    const-string v0, "transaction:unknown"

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "transaction:deferred"

    goto :goto_0

    :pswitch_1
    const-string v0, "transaction:purchased"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static purchaseToObject(Lcom/android/billingclient/api/Purchase;)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 299
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 301
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v1

    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->getPurchaseState(I)Ljava/lang/String;

    move-result-object v1

    .line 303
    sget-object v2, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->TAG:Ljava/lang/String;

    const-string v3, "productIds: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ","

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "productId"

    .line 305
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "productIds"

    .line 306
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "quantity"

    .line 307
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getQuantity()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "transactionTimestamp"

    .line 308
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "transactionIdentifier"

    .line 309
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "transactionState"

    .line 310
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "transactionReceipt"

    .line 311
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    .line 312
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 314
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "applicationUsername"

    .line 318
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "profileId"

    .line 322
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedProfileId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "developerPayload"

    .line 326
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    .line 328
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "originalMessage"

    .line 329
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isAutoRenewing"

    .line 331
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static purchasesToPurchasesArray(Ljava/util/List;Z)Lorg/json/JSONArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;Z)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 239
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_1

    .line 242
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    .line 244
    invoke-static {v1, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->encodePurchase(Lcom/android/billingclient/api/Purchase;Z)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
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
