.class Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;
.super Ljava/lang/Object;
.source "PlayInAppUpdates.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->checkAppUpdate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/play/core/appupdate/AppUpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V
    .locals 3

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-static {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$102(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;Lcom/google/android/play/core/appupdate/AppUpdateInfo;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    .line 105
    new-instance p1, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;

    invoke-direct {p1}, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;-><init>()V

    .line 106
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$100(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->packageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->packageName:Ljava/lang/String;

    .line 107
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$100(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->availableVersionCode()I

    move-result v0

    iput v0, p1, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->versionCode:I

    .line 109
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$100(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->totalBytesToDownload()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;->totalBytes:J

    .line 111
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$000(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$000(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "inappupdates:checkAppUpdate:success"

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    .line 116
    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$100(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/play/core/appupdate/AppUpdateInfo;->updateAvailability()I

    move-result v2

    invoke-static {v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$200(I)I

    move-result v2

    .line 115
    invoke-static {v2, p1}, Lcom/distriqt/extension/inappbilling/events/InAppUpdatesEvent;->formatForEvent(ILcom/distriqt/extension/inappbilling/controller/InAppUpdateInfo;)Ljava/lang/String;

    move-result-object p1

    .line 113
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 97
    check-cast p1, Lcom/google/android/play/core/appupdate/AppUpdateInfo;

    invoke-virtual {p0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$2;->onSuccess(Lcom/google/android/play/core/appupdate/AppUpdateInfo;)V

    return-void
.end method
