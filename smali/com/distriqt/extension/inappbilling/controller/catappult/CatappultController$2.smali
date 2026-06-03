.class Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$2;
.super Ljava/lang/Object;
.source "CatappultController.java"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->executeServiceRequest(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

.field final synthetic val$request:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$2;->this$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$2;->val$request:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2

    .line 269
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->TAG:Ljava/lang/String;

    const-string v0, "executeServiceRequest():startServiceConnection:onError"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$2;->val$request:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;

    invoke-interface {v0}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$ServiceRequest;->run()V

    return-void
.end method
