.class public Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;
.super Lcom/distriqt/core/ActivityStateListener;
.source "PlayInAppUpdates.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/InAppUpdates;


# static fields
.field private static final RC_APP_UPDATE:I = 0x4b21

.field public static final TAG:Ljava/lang/String; = "PlayInAppUpdates"


# instance fields
.field private _appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/distriqt/core/ActivityStateListener;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-object p0
.end method

.method static synthetic access$100(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    return-object p0
.end method

.method static synthetic access$102(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    return-object p1
.end method

.method static synthetic access$200(I)I
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->playAvailabilityToAvailability(I)I

    move-result p0

    return p0
.end method

.method private static playAvailabilityToAvailability(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public checkAppUpdate()Z
    .locals 4

    .line 87
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "checkAppUpdate()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    .line 95
    invoke-interface {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->getAppUpdateInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 96
    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$1;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$1;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)V

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 158
    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    return v2
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-void
.end method

.method public isSupported()Z
    .locals 3

    .line 79
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "isSupported()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x4b21

    if-ne p1, v0, :cond_1

    .line 201
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult( %d, %d, %s )"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const/4 p1, 0x2

    if-nez p3, :cond_0

    const-string p3, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p3}, Lcom/distriqt/core/utils/DebugUtil;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    aput-object p3, v2, p1

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p2, :pswitch_data_0

    :cond_1
    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startAppUpdate(Z)Z
    .locals 5

    .line 168
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->TAG:Ljava/lang/String;

    const-string v1, "startAppUpdate()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/appupdate/AppUpdateManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/appupdate/AppUpdateManager;

    move-result-object v0

    .line 175
    invoke-static {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions;->newBuilder(I)Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/play/core/appupdate/AppUpdateOptions$Builder;->build()Lcom/google/android/play/core/appupdate/AppUpdateOptions;

    move-result-object p1

    .line 177
    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 179
    invoke-interface {v3}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x4b21

    .line 177
    invoke-interface {v0, v1, v3, p1, v4}, Lcom/google/android/play/core/appupdate/AppUpdateManager;->startUpdateFlowForResult(Lcom/google/android/play/core/appupdate/AppUpdateInfo;Landroid/app/Activity;Lcom/google/android/play/core/appupdate/AppUpdateOptions;I)Z

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->_appUpdateInfo:Lcom/google/android/play/core/appupdate/AppUpdateInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 190
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    return v2
.end method
