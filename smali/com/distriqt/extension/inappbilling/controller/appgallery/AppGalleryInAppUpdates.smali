.class public Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;
.super Ljava/lang/Object;
.source "AppGalleryInAppUpdates.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/InAppUpdates;


# static fields
.field private static final DEFAULT_VALUE:I = -0x4

.field public static final TAG:Ljava/lang/String; = "AppGalleryInAppUpdates"


# instance fields
.field private _apkUpgradeInfo:Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-void
.end method

.method static synthetic access$002(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;)Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->_apkUpgradeInfo:Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object p0
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->statusToAvailability(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(I)I
    .locals 0

    .line 37
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->failCodeToErrorCode(I)I

    move-result p0

    return p0
.end method

.method private static failCodeToErrorCode(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static statusToAvailability(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    return v0

    :pswitch_3
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkAppUpdate()Z
    .locals 4

    .line 84
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "checkAppUpdate()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/jos/JosApps;->getAppUpdateClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/AppUpdateClient;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v3, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates$1;

    invoke-direct {v3, p0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates$1;-><init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;)V

    invoke-interface {v0, v1, v3}, Lcom/huawei/hms/jos/AppUpdateClient;->checkAppUpdate(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 208
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v2
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-void
.end method

.method public isSupported()Z
    .locals 3

    .line 76
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "isSupported()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public startAppUpdate(Z)Z
    .locals 4

    .line 217
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "startAppUpdate()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/jos/JosApps;->getAppUpdateClient(Landroid/app/Activity;)Lcom/huawei/hms/jos/AppUpdateClient;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->_apkUpgradeInfo:Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    invoke-interface {v0, v1, v3, p1}, Lcom/huawei/hms/jos/AppUpdateClient;->showUpdateDialog(Landroid/content/Context;Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 227
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v2
.end method
