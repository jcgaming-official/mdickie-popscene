.class public final synthetic Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/-$$Lambda$PlayBillingControllerWithFallback$sFJFaqwP0zPrgYRRIq5YCxSm5a8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/billingclient/api/SkuDetailsResponseListener;


# instance fields
.field private final synthetic f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;


# direct methods
.method public synthetic constructor <init>(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/-$$Lambda$PlayBillingControllerWithFallback$sFJFaqwP0zPrgYRRIq5YCxSm5a8;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;

    return-void
.end method


# virtual methods
.method public final onSkuDetailsResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/-$$Lambda$PlayBillingControllerWithFallback$sFJFaqwP0zPrgYRRIq5YCxSm5a8;->f$0:Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;

    invoke-static {v0, p1, p2}, Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;->lambda$getProducts$0(Lcom/distriqt/extension/inappbilling/controller/playbilling/legacy/PlayBillingControllerWithFallback;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    return-void
.end method
