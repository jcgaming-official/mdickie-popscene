.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$GFo6mWTaARJXcDXQkYgURSYWWfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController$QueryPurchaseHandler;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

.field private final synthetic f$1:Lcom/distriqt/extension/inappbilling/controller/Purchase;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$GFo6mWTaARJXcDXQkYgURSYWWfg;->f$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$GFo6mWTaARJXcDXQkYgURSYWWfg;->f$1:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    return-void
.end method


# virtual methods
.method public final onComplete(ILcom/appcoins/sdk/billing/Purchase;)V
    .locals 2

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$GFo6mWTaARJXcDXQkYgURSYWWfg;->f$0:Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/catappult/-$$Lambda$CatappultController$GFo6mWTaARJXcDXQkYgURSYWWfg;->f$1:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-static {v0, v1, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;->lambda$consumePurchase$9(Lcom/distriqt/extension/inappbilling/controller/catappult/CatappultController;Lcom/distriqt/extension/inappbilling/controller/Purchase;ILcom/appcoins/sdk/billing/Purchase;)V

    return-void
.end method
