.class public Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;
.super Lcom/adobe/fre/FREContext;
.source "GoogleApiAvailabilityContext.java"

# interfaces
.implements Lcom/adobe/air/StateChangeCallback;
.implements Lcom/adobe/air/ActivityResultCallback;


# instance fields
.field private _aaw:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    .line 49
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    .line 50
    iget-object v0, p0, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 51
    iget-object v0, p0, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 61
    iget-object v0, p0, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    :cond_0
    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "getInstalledGooglePlayServicesVersion"

    .line 76
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/GetInstalledGooglePlayServicesVersionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/GetInstalledGooglePlayServicesVersionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isGooglePlayServicesAvailable"

    .line 78
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/IsGooglePlayServicesAvailableFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/IsGooglePlayServicesAvailableFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isUserRecoverableError"

    .line 79
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/IsUserRecoverableErrorFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/IsUserRecoverableErrorFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showErrorDialog"

    .line 80
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "showErrorNotification"

    .line 81
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorNotificationFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorNotificationFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "getErrorString"

    .line 82
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/GetErrorStringFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/GetErrorStringFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "attemptResolution"

    .line 83
    new-instance v2, Lcom/distriqt/extension/playservices/base/functions/availability/AttemptResolutionFunction;

    invoke-direct {v2}, Lcom/distriqt/extension/playservices/base/functions/availability/AttemptResolutionFunction;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const p3, 0x184de

    if-ne p1, p3, :cond_0

    const-string p1, "apiavailability_error_dialog_closed"

    .line 103
    invoke-static {p2}, Lcom/distriqt/extension/playservices/base/events/GoogleApiAvailabilityEvent;->formatForEvent(I)Ljava/lang/String;

    move-result-object p2

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/distriqt/extension/playservices/base/GoogleApiAvailabilityContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method
