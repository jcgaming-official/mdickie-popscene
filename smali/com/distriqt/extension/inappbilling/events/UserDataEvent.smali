.class public Lcom/distriqt/extension/inappbilling/events/UserDataEvent;
.super Ljava/lang/Object;
.source "UserDataEvent.java"


# static fields
.field public static final GET_FAILED:Ljava/lang/String; = "userdata:get:failed"

.field public static final GET_SUCCESS:Ljava/lang/String; = "userdata:get:success"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatForEvent(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    .line 32
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "userData"

    .line 34
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "{}"

    return-object p0
.end method
