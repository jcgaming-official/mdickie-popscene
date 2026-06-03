.class public Lcom/distriqt/extension/inappbilling/controller/BillingService;
.super Ljava/lang/Object;
.source "BillingService.java"


# static fields
.field public static final AMAZON_INAPP_PURCHASING:Ljava/lang/String; = "amazon_inapp_purchasing"

.field public static final APPLE_INAPP_PURCHASE:Ljava/lang/String; = "apple_inapp_purchase"

.field public static final CATAPPULT_NATIVE_BILLING:Ljava/lang/String; = "catappult_native_billing"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final GOOGLE_PLAY_INAPP_BILLING:Ljava/lang/String; = "google_play_inapp_billing"

.field public static final HUAWEI_APP_GALLERY:Ljava/lang/String; = "huawei_app_gallery"

.field public static final OPERATION_MODE_PRODUCTION:Ljava/lang/String; = "production"

.field public static final OPERATION_MODE_TEST:Ljava/lang/String; = "test"

.field public static final OPERATION_MODE_TEST_FAILURE:Ljava/lang/String; = "test_failure"

.field public static final SAMSUNG_INAPP_PURCHASE:Ljava/lang/String; = "samsung_inapp_purchase"

.field public static final UNIMPLEMENTED:Ljava/lang/String; = "unimplemented"


# instance fields
.field public catappultPublicKey:Ljava/lang/String;

.field public googlePlayPublicKey:Ljava/lang/String;

.field public huaweiAppGalleryPublicKey:Ljava/lang/String;

.field public operationMode:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public useDeprecatedAsFallback:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "default"

    .line 35
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->googlePlayPublicKey:Ljava/lang/String;

    const-string v0, ""

    .line 37
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->huaweiAppGalleryPublicKey:Ljava/lang/String;

    const-string v0, ""

    .line 38
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->catappultPublicKey:Ljava/lang/String;

    const/4 v0, 0x1

    .line 40
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->useDeprecatedAsFallback:Ljava/lang/Boolean;

    const-string v0, "production"

    .line 42
    iput-object v0, p0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->operationMode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .line 47
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v1, "[%s, %s, ...]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->type:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/distriqt/extension/inappbilling/controller/BillingService;->operationMode:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
