.class public Lcom/distriqt/extension/playservices/base/events/GoogleApiAvailabilityEvent;
.super Ljava/lang/Object;
.source "GoogleApiAvailabilityEvent.java"


# static fields
.field public static final ERROR_DIALOG_CLOSED:Ljava/lang/String; = "apiavailability_error_dialog_closed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatForEvent(I)Ljava/lang/String;
    .locals 2

    .line 32
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "resultCode"

    .line 34
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "{}"

    return-object p0
.end method
