.class Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$1;
.super Ljava/lang/Object;
.source "CatappultController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
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

    .line 145
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-static {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->access$000(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;)Lcom/distriqt/core/utils/IExtensionContext;

    move-result-object v0

    sget-object v1, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->SETUP_FAILURE:Ljava/lang/String;

    const-string v2, "Failed to connect to billing service"

    .line 160
    invoke-static {p1, v2}, Lcom/distriqt/extension/inappbilling/events/InAppBillingEvent;->formatErrorForEvent(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-interface {v0, v1, p1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_setupComplete:Ljava/lang/Boolean;

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 149
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v1, "setup(): starting pending purchases check"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->_setupComplete:Ljava/lang/Boolean;

    .line 152
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    invoke-virtual {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->onSetupComplete()V

    return-void
.end method
