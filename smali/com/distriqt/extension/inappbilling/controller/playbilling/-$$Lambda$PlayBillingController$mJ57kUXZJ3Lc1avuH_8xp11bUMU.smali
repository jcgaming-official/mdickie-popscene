.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$mJ57kUXZJ3Lc1avuH_8xp11bUMU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController$QueryPendingPurchasesHandler;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$mJ57kUXZJ3Lc1avuH_8xp11bUMU;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iput-object p2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$mJ57kUXZJ3Lc1avuH_8xp11bUMU;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$mJ57kUXZJ3Lc1avuH_8xp11bUMU;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 3

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$mJ57kUXZJ3Lc1avuH_8xp11bUMU;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;

    iget-object v1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$mJ57kUXZJ3Lc1avuH_8xp11bUMU;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/-$$Lambda$PlayBillingController$mJ57kUXZJ3Lc1avuH_8xp11bUMU;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;->lambda$onPurchasesUpdated$29(Lcom/distriqt/extension/inappbilling/controller/playbilling/PlayBillingController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
