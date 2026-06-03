.class public Lcom/distriqt/extension/playservices/base/events/ProviderInstallerEvent;
.super Ljava/lang/Object;
.source "ProviderInstallerEvent.java"


# static fields
.field public static final INSTALLED:Ljava/lang/String; = "providerinstaller_installed"

.field public static final INSTALL_FAILED:Ljava/lang/String; = "providerinstaller_install_failed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatForEvent()Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 29
    invoke-static {v0}, Lcom/distriqt/extension/playservices/base/events/ProviderInstallerEvent;->formatForEvent(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatForEvent(I)Ljava/lang/String;
    .locals 2

    .line 37
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "errorCode"

    .line 39
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "{}"

    return-object p0
.end method
