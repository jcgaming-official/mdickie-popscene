.class public Lcom/distriqt/extension/inappbilling/events/InAppUpdatesEvent;
.super Ljava/lang/Object;
.source "InAppUpdatesEvent.java"


# static fields
.field public static final CHECK_APP_UPDATE_FAILED:Ljava/lang/String; = "inappupdates:checkAppUpdate:failed"

.field public static final CHECK_APP_UPDATE_SUCCESS:Ljava/lang/String; = "inappupdates:checkAppUpdate:success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatForErrorEvent(ILjava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "errorCode"

    .line 57
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "message"

    if-nez p1, :cond_0

    const-string p1, "Unknown error"

    .line 58
    :cond_0
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string p0, "data"

    .line 61
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "{}"

    return-object p0
.end method

.method public static formatForEvent(ILcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;)Ljava/lang/String;
    .locals 2

    .line 33
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "updateAvailability"

    .line 35
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    const-string p0, "updateInfo"

    .line 39
    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "{}"

    return-object p0
.end method
