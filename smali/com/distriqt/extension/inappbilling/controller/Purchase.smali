.class public Lcom/distriqt/extension/inappbilling/controller/Purchase;
.super Ljava/lang/Object;
.source "Purchase.java"


# static fields
.field public static final STATE_CANCELLED:Ljava/lang/String; = "transaction:cancelled"

.field public static final STATE_DEFERRED:Ljava/lang/String; = "transaction:deferred"

.field public static final STATE_FAILED:Ljava/lang/String; = "transaction:failed"

.field public static final STATE_NOTALLOWED:Ljava/lang/String; = "transaction:notallowed"

.field public static final STATE_PURCHASED:Ljava/lang/String; = "transaction:purchased"

.field public static final STATE_PURCHASING:Ljava/lang/String; = "transaction:purchasing"

.field public static final STATE_REFUNDED:Ljava/lang/String; = "transaction:refunded"

.field public static final STATE_REMOVED:Ljava/lang/String; = "transaction:removed"

.field public static final STATE_RESTORED:Ljava/lang/String; = "transaction:restored"

.field public static final STATE_UNKNOWN:Ljava/lang/String; = "transaction:unknown"


# instance fields
.field public applicationUsername:Ljava/lang/String;

.field public cancelTimestamp:J

.field public developerPayload:Ljava/lang/String;

.field public error:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public isAutoRenewing:Z

.field public originalMessage:Ljava/lang/String;

.field public originalPurchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

.field public packageName:Ljava/lang/String;

.field public parentProductId:Ljava/lang/String;

.field public productId:Ljava/lang/String;

.field public profileId:Ljava/lang/String;

.field public quantity:I

.field public signature:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;

.field public transactionReceipt:Ljava/lang/String;

.field public transactionState:Ljava/lang/String;

.field public transactionTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->parentProductId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 38
    iput v0, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->quantity:I

    const-wide/16 v0, -0x1

    .line 39
    iput-wide v0, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionTimestamp:J

    const-string v2, ""

    .line 40
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    const-string v2, "transaction:unknown"

    .line 41
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    const-string v2, ""

    .line 42
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    const-string v2, ""

    .line 43
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    .line 44
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalPurchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    const-string v2, ""

    .line 45
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->developerPayload:Ljava/lang/String;

    const-string v2, ""

    .line 46
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->applicationUsername:Ljava/lang/String;

    const-string v2, ""

    .line 47
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->profileId:Ljava/lang/String;

    const-string v2, ""

    .line 48
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->signature:Ljava/lang/String;

    const-string v2, ""

    .line 49
    iput-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalMessage:Ljava/lang/String;

    const/4 v2, 0x0

    .line 50
    iput-boolean v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->isAutoRenewing:Z

    .line 52
    iput-wide v0, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->cancelTimestamp:J

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->error:Ljava/lang/String;

    const-string v0, ""

    .line 55
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->errorCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "productId"

    .line 70
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentProductId"

    .line 71
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->parentProductId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "quantity"

    .line 72
    iget v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->quantity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "transactionTimestamp"

    .line 73
    iget-wide v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "transactionIdentifier"

    .line 74
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "transactionState"

    .line 75
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "transactionReceipt"

    .line 76
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->transactionReceipt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "packageName"

    .line 77
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "developerPayload"

    .line 78
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->developerPayload:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "applicationUsername"

    .line 79
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->applicationUsername:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "profileId"

    .line 80
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->profileId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "signature"

    .line 81
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "isAutoRenewing"

    .line 82
    iget-boolean v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->isAutoRenewing:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "originalMessage"

    .line 85
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalPurchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    if-eqz v1, :cond_1

    const-string v1, "originalTransaction"

    .line 88
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->originalPurchase:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-virtual {v2}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_1
    iget-wide v1, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->cancelTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const-string v1, "cancelTimestamp"

    .line 91
    iget-wide v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->cancelTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "message"

    .line 93
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->error:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "errorCode"

    .line 94
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/Purchase;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/Purchase;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
