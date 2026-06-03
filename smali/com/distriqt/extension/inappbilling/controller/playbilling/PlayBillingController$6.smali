.class Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;
.super Ljava/lang/Object;
.source "PlayBillingController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPendingPurchasesAsync(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field final synthetic val$handler:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 727
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;->val$handler:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .line 739
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;->val$handler:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;

    if-eqz p1, :cond_0

    .line 740
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;->val$handler:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;

    invoke-interface {p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;->onComplete()V

    :cond_0
    return-void
.end method

.method public onSuccess(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 731
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->access$200(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Ljava/util/List;)V

    .line 732
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;->val$handler:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;

    if-eqz p1, :cond_0

    .line 733
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$6;->val$handler:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;

    invoke-interface {p1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;->onComplete()V

    :cond_0
    return-void
.end method
