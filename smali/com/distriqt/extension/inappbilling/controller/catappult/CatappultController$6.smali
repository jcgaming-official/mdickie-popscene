.class Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;
.super Ljava/lang/Object;
.source "CatappultController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->queryPurchase(Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

.field final synthetic val$handler:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Ljava/lang/String;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 646
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;->val$productId:Ljava/lang/String;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;->val$handler:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    .line 664
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;->val$handler:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;->onComplete(ILcom/appcoins/sdk/billing/Purchase;)V

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

    .line 650
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appcoins/sdk/billing/Purchase;

    .line 652
    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;->val$productId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    iget-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;->val$handler:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;

    invoke-interface {p2, p1, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;->onComplete(ILcom/appcoins/sdk/billing/Purchase;)V

    return-void

    .line 658
    :cond_1
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$6;->val$handler:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;

    sget-object p2, Lcom/appcoins/sdk/billing/ResponseCode;->ITEM_NOT_OWNED:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {p2}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;->onComplete(ILcom/appcoins/sdk/billing/Purchase;)V

    return-void
.end method
