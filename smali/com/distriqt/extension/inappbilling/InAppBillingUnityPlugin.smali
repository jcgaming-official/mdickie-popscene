.class public Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;
.super Ljava/lang/Object;
.source "InAppBillingUnityPlugin.java"

# interfaces
.implements Lcom/distriqt/core/utils/IExtensionContext;


# static fields
.field private static final TAG:Ljava/lang/String; = "InAppBillingUnityPlugin"

.field private static _instance:Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;


# instance fields
.field private _controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    .line 78
    invoke-direct {p0}, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    return-void
.end method

.method private controller()Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    invoke-direct {v0, p0}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->_controller:Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;

    return-object v0
.end method

.method public static instance()Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;
    .locals 1

    .line 44
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->_instance:Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;-><init>()V

    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->_instance:Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;

    .line 47
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->_instance:Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;

    sput-object v0, Lcom/distriqt/extension/inappbilling/InAppBilling;->context:Lcom/distriqt/core/utils/IExtensionContext;

    .line 49
    :cond_0
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->_instance:Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;

    return-object v0
.end method

.method public static isSupported()Z
    .locals 4

    .line 84
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "isSupported()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method


# virtual methods
.method public dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 120
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "code"

    if-nez p1, :cond_0

    const-string p1, ""

    .line 121
    :cond_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "data"

    if-nez p2, :cond_1

    const-string p2, ""

    .line 122
    :cond_1
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "com.distriqt.InAppBilling"

    const-string p2, "Dispatch"

    .line 127
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {p1, p2, v0}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 140
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public implementation()Ljava/lang/String;
    .locals 3

    .line 92
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "implementation()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Android"

    return-object v0
.end method

.method public version()Ljava/lang/String;
    .locals 3

    .line 99
    sget-object v0, Lcom/distriqt/extension/inappbilling/InAppBillingUnityPlugin;->TAG:Ljava/lang/String;

    const-string v1, "version()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "8.0"

    return-object v0
.end method
