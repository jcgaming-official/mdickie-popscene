.class Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$4;
.super Ljava/lang/Object;
.source "CatappultController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->restorePurchases()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->access$000(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_FAILED:Ljava/lang/String;

    .line 529
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 527
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/appcoins/sdk/billing/Purchase;",
            ">;)V"
        }
    .end annotation

    .line 510
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->access$000(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "purchases:updated"

    const/4 v2, 0x1

    .line 513
    invoke-static {p2, v2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->purchasesToPurchasesArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object p2

    const-string v2, ""

    .line 512
    invoke-static {p2, p1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$4;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-static {p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->access$000(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object p1

    sget-object p2, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->RESTORE_PURCHASES_SUCCESS:Ljava/lang/String;

    const-string v0, ""

    invoke-interface {p1, p2, v0}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
