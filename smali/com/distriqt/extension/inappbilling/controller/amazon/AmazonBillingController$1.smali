.class Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$1;
.super Ljava/lang/Object;
.source "AmazonBillingController.java"

# interfaces
.implements Lcom/amazon/device/drm/LicensingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->setup(Lcom/distriqt/extension/inappbilling/controller/BillingService;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$1;->this$0:Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenseCommandResponse(Lcom/amazon/device/drm/model/LicenseResponse;)V
    .locals 4

    .line 200
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v1, "onLicenseCommandResponse()"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController$2;->$SwitchMap$com$amazon$device$drm$model$LicenseResponse$RequestStatus:[I

    invoke-virtual {p1}, Lcom/amazon/device/drm/model/LicenseResponse;->getRequestStatus()Lcom/amazon/device/drm/model/LicenseResponse$RequestStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/drm/model/LicenseResponse$RequestStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 225
    :pswitch_0
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "onLicenseCommandResponse( ERROR_VERIFICATION )"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :pswitch_1
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "onLicenseCommandResponse( ERROR_INVALID_LICENSING_KEYS )"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :pswitch_2
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "onLicenseCommandResponse( EXPIRED )"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :pswitch_3
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "onLicenseCommandResponse( NOT_LICENSED )"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 205
    :pswitch_4
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "onLicenseCommandResponse( LICENSED )"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    :goto_0
    sget-object p1, Lcom/distriqt/extension/inappbilling/controller/amazon/AmazonBillingController;->TAG:Ljava/lang/String;

    const-string v0, "onLicenseCommandResponse(): mode: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Lcom/amazon/device/drm/LicensingService;->getAppstoreSDKMode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/distriqt/extension/inappbilling/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
