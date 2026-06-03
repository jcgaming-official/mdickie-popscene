.class public Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;
.super Ljava/lang/Object;
.source "InAppUpdateInfo.java"


# static fields
.field public static final DEVELOPER_TRIGGERED_UPDATE_IN_PROGRESS:I = 0x3

.field public static final ERROR_EXCEPTION:I = 0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NO_NETWORK:I = 0x1

.field public static final ERROR_UNKNOWN:I = -0x1

.field public static final UPDATE_AVAILABLE:I = 0x2

.field public static final UPDATE_NOT_AVAILABLE:I = 0x1

.field public static final UPDATE_UNKNOWN:I


# instance fields
.field public packageName:Ljava/lang/String;

.field public totalBytes:J

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->packageName:Ljava/lang/String;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->versionName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->versionCode:I

    const-wide/16 v0, 0x0

    .line 40
    iput-wide v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->totalBytes:J

    return-void
.end method


# virtual methods
.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "packageName"

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "versionName"

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "versionCode"

    .line 51
    iget v2, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->versionCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "totalBytes"

    .line 52
    iget-wide v2, p0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->totalBytes:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method
