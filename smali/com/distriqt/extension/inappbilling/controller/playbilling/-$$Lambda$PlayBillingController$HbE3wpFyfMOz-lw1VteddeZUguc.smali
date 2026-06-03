.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$HbE3wpFyfMOz-lw1VteddeZUguc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$ServiceRequest;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field private final synthetic f$1:Lcom/distriqt/extension/inappbilling/controller/Purchase;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$HbE3wpFyfMOz-lw1VteddeZUguc;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$HbE3wpFyfMOz-lw1VteddeZUguc;->f$1:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$HbE3wpFyfMOz-lw1VteddeZUguc;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$HbE3wpFyfMOz-lw1VteddeZUguc;->f$1:Lcom/distriqt/extension/inappbilling/controller/Purchase;

    invoke-static {v0, v1}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$finishPurchase$12(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/Purchase;)V

    return-void
.end method
