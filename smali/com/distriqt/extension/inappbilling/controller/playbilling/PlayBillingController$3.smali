.class Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$3;
.super Ljava/lang/Object;
.source "PlayBillingController.java"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->startServiceConnection(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field final synthetic val$listener:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$3;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$3;->val$listener:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 3

    .line 353
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onBillingServiceDisconnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 5

    .line 336
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Setup finished. Response code: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$3;->val$listener:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 341
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$3;->val$listener:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;

    invoke-interface {p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;->onSuccess()V

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$3;->val$listener:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;

    invoke-interface {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;->onError(Lcom/android/billingclient/api/BillingResult;)V

    :cond_1
    :goto_0
    return-void
.end method
