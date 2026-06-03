.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$N15QVlTGCTOTiejsCEhtq52L0tI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/billingclient/api/PurchaseHistoryResponseListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field private final synthetic f$1:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$N15QVlTGCTOTiejsCEhtq52L0tI;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$N15QVlTGCTOTiejsCEhtq52L0tI;->f$1:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;

    return-void
.end method


# virtual methods
.method public final onPurchaseHistoryResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$N15QVlTGCTOTiejsCEhtq52L0tI;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$N15QVlTGCTOTiejsCEhtq52L0tI;->f$1:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;

    invoke-static {v0, v1, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$queryPurchasesServer$7(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPurchasesHandler;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
