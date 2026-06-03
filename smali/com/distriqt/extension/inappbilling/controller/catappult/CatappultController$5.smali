.class Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$5;
.super Ljava/lang/Object;
.source "CatappultController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchasesHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->getPurchases(Z)Z
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

    .line 547
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->access$000(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "get:purchases:failed"

    .line 569
    invoke-static {p1, p2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 567
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

    .line 551
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$5;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->access$000(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    const-string v1, "get:purchases:complete"

    const/4 v2, 0x0

    .line 554
    invoke-static {p2, v2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultUtils;->purchasesToPurchasesArray(Ljava/util/List;Z)Lorg/json/JSONArray;

    move-result-object p2

    const-string v2, ""

    .line 553
    invoke-static {p2, p1, v2}, Lcom/distriqt/extension/inappbilling/events/PurchaseEvent;->formatPurchasesForEvent(Lorg/json/JSONArray;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 551
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
