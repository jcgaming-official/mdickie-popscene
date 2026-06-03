.class public Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;
.super Ljava/lang/Object;
.source "SubscriptionPhase.java"


# static fields
.field public static final RECURRENCE_MODE_FINITE:Ljava/lang/String; = "finite"

.field public static final RECURRENCE_MODE_INFINITE:Ljava/lang/String; = "infinite"

.field public static final RECURRENCE_MODE_NONE:Ljava/lang/String; = "none"

.field private static final TAG:Ljava/lang/String; = "SubscriptionPhase"


# instance fields
.field public currencyCode:Ljava/lang/String;

.field public currencySymbol:Ljava/lang/String;

.field public numberOfPeriods:I

.field public paymentMode:Ljava/lang/String;

.field public price:D

.field public priceString:Ljava/lang/String;

.field public recurrenceMode:Ljava/lang/String;

.field public subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    const-string v0, ""

    .line 40
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    const-string v0, "infinite"

    .line 43
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    const-string v0, "paymentmode_payAsYouGo"

    .line 45
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->paymentMode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "price"

    .line 56
    iget-wide v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->price:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "priceString"

    .line 57
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->priceString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currencySymbol"

    .line 58
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "currencyCode"

    .line 59
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->currencyCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    if-eqz v1, :cond_0

    const-string v1, "subscriptionPeriod"

    .line 63
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->subscriptionPeriod:Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;

    invoke-virtual {v2}, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPeriod;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "recurrenceMode"

    .line 66
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->recurrenceMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "numberOfPeriods"

    .line 67
    iget v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->numberOfPeriods:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "paymentMode"

    .line 68
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/SubscriptionPhase;->paymentMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
