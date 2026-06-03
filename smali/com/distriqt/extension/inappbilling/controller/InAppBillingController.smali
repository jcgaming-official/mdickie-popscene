.class public Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;
.super Lcom/distriqt/core/ActivityStateListener;
.source "InAppBillingController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InAppBillingController"


# instance fields
.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    .line 50
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-void
.end method


# virtual methods
.method public determineDefaultServiceType()Ljava/lang/String;
    .locals 8

    const-string v0, "google_play_inapp_billing"

    .line 146
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    sget-object v2, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->TAG:Ljava/lang/String;

    const-string v3, "determineDefaultServiceType(): installer: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v6, "null"

    goto :goto_0

    :cond_0
    move-object v6, v1

    :goto_0
    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    .line 155
    sget-object v2, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->TAG:Ljava/lang/String;

    const-string v3, "determineDefaultServiceType(): installer: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-static {v2, v3, v4}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "amazon"

    .line 156
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "amazon_inapp_purchasing"

    goto :goto_1

    :cond_1
    const-string v2, "com.huawei.appmarket"

    .line 162
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "huawei_app_gallery"

    goto :goto_1

    :cond_2
    const-string v2, "com.android.vending"

    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "google_play_inapp_billing"

    goto :goto_1

    .line 176
    :cond_3
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->TAG:Ljava/lang/String;

    const-string v2, "determineDefaultServiceType(): manufacturer: %s"

    new-array v3, v4, [Ljava/lang/Object;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "amazon_inapp_purchasing"

    .line 184
    :cond_4
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "huawei_app_gallery"

    :cond_5
    :goto_1
    return-object v0
.end method

.method public dispose()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->dispose()V

    .line 65
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    .line 68
    :cond_0
    iput-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-void
.end method

.method public isSupported()Z
    .locals 2

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0, p1, p2, p3}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->onRestart()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->onResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->onStop()V

    :cond_0
    return-void
.end method

.method public service()Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    return-object v0
.end method

.method public setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
    .locals 6

    .line 74
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->TAG:Ljava/lang/String;

    const-string v1, "setup( %s )"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/distriqt/extension/inappbilling/controller/BillingService;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "default"

    .line 78
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->determineDefaultServiceType()Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->TAG:Ljava/lang/String;

    const-string v3, "setup(): default = %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v3, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iput-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-nez v0, :cond_6

    const-string v0, "google_play_inapp_billing"

    .line 88
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 89
    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->useDeprecatedAsFallback:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    goto/16 :goto_0

    .line 97
    :cond_1
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    goto/16 :goto_0

    :cond_2
    const-string v0, "amazon_inapp_purchasing"

    .line 100
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 101
    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    goto :goto_0

    :cond_3
    const-string v0, "huawei_app_gallery"

    .line 105
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 106
    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    goto :goto_0

    :cond_4
    const-string v0, "samsung_inapp_purchase"

    .line 110
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 111
    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/samsung/SamsungIAPController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    goto :goto_0

    :cond_5
    const-string v0, "catappult_native_billing"

    .line 115
    iget-object v1, p1, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 116
    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultControllerSupport;->supported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-direct {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    .line 122
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    if-eqz v0, :cond_7

    .line 124
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/InAppBillingController;->_serviceController:Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;

    invoke-interface {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/BillingServiceController;->setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 130
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return v5
.end method
