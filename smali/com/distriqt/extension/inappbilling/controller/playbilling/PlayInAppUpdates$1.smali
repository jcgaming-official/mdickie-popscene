.class Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$1;
.super Ljava/lang/Object;
.source "PlayInAppUpdates.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->checkAppUpdate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 4

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$000(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;->access$000(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayInAppUpdates;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "inappupdates:checkAppUpdate:failed"

    const/4 v2, 0x2

    .line 141
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 139
    invoke-static {v2, p1, v3}, Lcom/distriqt/extension/inappbilling/events/InAppUpdatesEvent;->formatForErrorEvent(ILjava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/utils/Errors;->handleException(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
