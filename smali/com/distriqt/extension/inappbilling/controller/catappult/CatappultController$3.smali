.class Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$3;
.super Ljava/lang/Object;
.source "CatappultController.java"

# interfaces
.implements Lcom/appcoins/sdk/billing/listeners/AppCoinsBillingStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->startServiceConnection(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

.field final synthetic val$listener:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$3;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$3;->val$listener:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 3

    .line 304
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "onBillingServiceDisconnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onBillingSetupFinished(I)V
    .locals 5

    .line 287
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "Setup finished. Response code: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$3;->val$listener:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;

    if-eqz v0, :cond_1

    .line 290
    sget-object v0, Lcom/appcoins/sdk/billing/ResponseCode;->OK:Lcom/appcoins/sdk/billing/ResponseCode;

    invoke-virtual {v0}, Lcom/appcoins/sdk/billing/ResponseCode;->getValue()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 292
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$3;->val$listener:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;

    invoke-interface {p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;->onSuccess()V

    goto :goto_0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$3;->val$listener:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;

    invoke-interface {v0, p1}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;->onError(I)V

    :cond_1
    :goto_0
    return-void
.end method
