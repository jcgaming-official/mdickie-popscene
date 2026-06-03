.class Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction$1;
.super Ljava/lang/Object;
.source "InstallIfNeededFunction.java"

# interfaces
.implements Lcom/google/android/gms/security/ProviderInstaller$ProviderInstallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;

.field final synthetic val$freContext:Lcom/adobe/fre/FREContext;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;Lcom/adobe/fre/FREContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction$1;->this$0:Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;

    iput-object p2, p0, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction$1;->val$freContext:Lcom/adobe/fre/FREContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProviderInstallFailed(ILandroid/content/Intent;)V
    .locals 5
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    sget-object p2, Lcom/distriqt/extension/playservices/base/PlayServicesBase;->ID:Ljava/lang/String;

    sget-object v0, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;->TAG:Ljava/lang/String;

    const-string v1, "onProviderInstallFailed( %d )"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, v0, v1, v2}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object p2, p0, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v0, "providerinstaller_install_failed"

    .line 63
    invoke-static {p1}, Lcom/distriqt/extension/playservices/base/events/ProviderInstallerEvent;->formatForEvent(I)Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-virtual {p2, v0, p1}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onProviderInstalled()V
    .locals 4

    .line 48
    sget-object v0, Lcom/distriqt/extension/playservices/base/PlayServicesBase;->ID:Ljava/lang/String;

    sget-object v1, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction;->TAG:Ljava/lang/String;

    const-string v2, "onProviderInstalled()"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/distriqt/extension/playservices/base/functions/providerinstaller/InstallIfNeededFunction$1;->val$freContext:Lcom/adobe/fre/FREContext;

    const-string v1, "providerinstaller_installed"

    .line 52
    invoke-static {}, Lcom/distriqt/extension/playservices/base/events/ProviderInstallerEvent;->formatForEvent()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/adobe/fre/FREContext;->dispatchStatusEventAsync(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
