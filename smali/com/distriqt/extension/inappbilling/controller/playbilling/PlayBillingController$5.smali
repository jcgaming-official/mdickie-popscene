.class Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$5;
.super Ljava/lang/Object;
.source "PlayBillingController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->getPurchases(Z)Z
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

    .line 655
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    .line 676
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "get:purchases:failed"

    .line 678
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 676
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    invoke-static {v0, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->access$200(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Ljava/util/List;)V

    .line 660
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v0, v0, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v1, "get:purchases:complete"

    const/4 v2, 0x0

    .line 663
    invoke-static {p2, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingUtils;->purchasesToPurchasesArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object p2

    const-string v2, ""

    .line 662
    invoke-static {p2, p1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 660
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
