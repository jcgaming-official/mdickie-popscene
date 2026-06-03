.class Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates$1;
.super Ljava/lang/Object;
.source "AppGalleryInAppUpdates.java"

# interfaces
.implements Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->checkAppUpdate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarketInstallInfo(Landroid/content/Intent;)V
    .locals 2

    .line 189
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->TAG:Ljava/lang/String;

    const-string v0, "checkAppUpdate::onMarketInstallInfo()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onMarketStoreError(I)V
    .locals 4

    .line 195
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "checkAppUpdate::onMarketStoreError( %d )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdateInfo(Landroid/content/Intent;)V
    .locals 10

    .line 100
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "checkAppUpdate::onUpdateInfo()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, "status"

    const/4 v3, -0x4

    .line 103
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "failcause"

    .line 104
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "failreason"

    .line 105
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 107
    sget-object v6, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->TAG:Ljava/lang/String;

    const-string v7, "checkAppUpdate::onUpdateInfo(): status:%d failCode:%d failReason:%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v2, 0x1

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    if-nez v5, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    const/4 v9, 0x2

    aput-object v2, v8, v9

    .line 107
    invoke-static {v6, v7, v8}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v4, v3, :cond_3

    if-nez v4, :cond_1

    goto :goto_2

    .line 151
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "failCode"

    .line 154
    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "failReason"

    if-nez v5, :cond_2

    const-string v2, "Unknown"

    goto :goto_1

    :cond_2
    move-object v2, v5

    .line 155
    :goto_1
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "status"

    .line 156
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :catch_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->access$100(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "inappupdates:checkAppUpdate:failed"

    .line 165
    invoke-static {v4}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->access$300(I)I

    move-result v2

    .line 164
    invoke-static {v2, v5, p1}, Lcom/distriqt/extension/inappbilling/events/InAppUpdatesEvent;->formatForErrorEvent(ILjava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_2
    const-string v2, "updatesdk_update_info"

    .line 116
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 119
    instance-of v2, p1, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    if-eqz v2, :cond_4

    .line 122
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    check-cast p1, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    invoke-static {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->access$002(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;)Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    .line 124
    new-instance v0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;

    invoke-direct {v0}, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;-><init>()V

    .line 125
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getPackage_()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->packageName:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getVersionCode_()I

    move-result v1

    iput v1, v0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->versionCode:I

    .line 127
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getVersion_()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->versionName:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getBundleSize_()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->totalBytes:J

    .line 130
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->access$100(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    const-string v1, "inappupdates:checkAppUpdate:success"

    .line 132
    invoke-static {v9, v0}, Lcom/distriqt/extension/inappbilling/events/InAppUpdatesEvent;->formatForEvent(ILcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-interface {p1, v1, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 140
    :cond_4
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->access$100(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    const-string v2, "inappupdates:checkAppUpdate:success"

    .line 143
    invoke-static {v1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->access$200(I)I

    move-result v1

    .line 142
    invoke-static {v1, v0}, Lcom/distriqt/extension/inappbilling/events/InAppUpdatesEvent;->formatForEvent(ILcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;)Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-interface {p1, v2, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 174
    :cond_5
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "checkAppUpdate::onUpdateInfo(): no intent ? "

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->access$100(Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    const-string v1, "inappupdates:checkAppUpdate:failed"

    const/4 v2, -0x1

    const-string v3, "No data returned from app update check, try again later"

    .line 177
    invoke-static {v2, v3, v0}, Lcom/distriqt/extension/inappbilling/events/InAppUpdatesEvent;->formatForErrorEvent(ILjava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 175
    invoke-interface {p1, v1, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onUpdateStoreError(I)V
    .locals 4

    .line 201
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/appgallery/AppGalleryInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "checkAppUpdate::onUpdateStoreError( %d )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
