.class Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$2;
.super Ljava/lang/Object;
.source "PlayBillingController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field final synthetic val$request:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$2;->val$request:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 318
    invoke-static {}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "executeServiceRequest():startServiceConnection:onError"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$2;->val$request:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;->run()V

    return-void
.end method
