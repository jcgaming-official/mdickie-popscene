.class Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;
.super Ljava/lang/Object;
.source "PlayBillingController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onSuccess$0(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->onSetupComplete()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/billingclient/api/BillingResult;)V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    .line 262
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    const-string v2, "Failed to connect to billing service"

    .line 261
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_setupComplete:Ljava/lang/Boolean;

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 251
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setup(): starting pending purchases check"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_setupComplete:Ljava/lang/Boolean;

    .line 253
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    new-instance v1, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$1$8pnWtJk8YG7PGR4H1dSBDOhKab0;

    invoke-direct {v1, p0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$1$8pnWtJk8YG7PGR4H1dSBDOhKab0;-><init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$1;)V

    invoke-static {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->access$100(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V

    return-void
.end method
